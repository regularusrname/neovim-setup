return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio", -- зависимость dap-ui
			"jay-babu/mason-nvim-dap.nvim",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			-- автоматически открывать/закрывать UI при старте/конце дебага
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end

			-- настройка UI
			dapui.setup({
				layouts = {
					{
						-- левая панель
						elements = {
							{ id = "stacks", size = 0.5 },
							{ id = "repl", size = 0.5 },
						},
						size = 40,
						position = "left",
					},
					{
						-- нижняя панель
						elements = {
							{ id = "scopes", size = 1 },
						},
						size = 10,
						position = "bottom",
					},
				},
			})

			-- настройка netcoredbg для C#
			dap.adapters.coreclr = {
				type = "executable",
				command = vim.fn.stdpath("data") .. "/mason/bin/netcoredbg",
				args = { "--interpreter=vscode" },
			}

            dap.adapters.netcoredbg = dap.adapters.coreclr

			dap.configurations.cs = {
				{
					type = "coreclr",
					name = "Launch",
					request = "launch",
					program = function()
						-- ищет dll в стандартном месте сборки
						return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
					end,
                    args = function()
                        local args = vim.fn.input('Arguments: ')
                        return vim.split(args, ' ')
                    end,
				},
				{
					type = "coreclr",
					name = "Launch Web App",
					request = "launch",
					program = function()
						return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
					end,
					env = {
						ASPNETCORE_ENVIRONMENT = "Development",
						ASPNETCORE_URLS = "http://localhost:5000",
					},
					cwd = "${workspaceFolder}",
				},
				{
					type = "coreclr",
					name = "Attach",
					request = "attach",
					processId = require("dap.utils").pick_process, -- покажет список процессов
				},
			}

			dap.adapters.delve = {
				type = "server",
				port = "${port}",
				executable = {
					command = vim.fn.stdpath("data") .. "/mason/bin/dlv",
					args = { "dap", "-l", "127.0.0.1:${port}" },
				},
			}

			dap.configurations.go = {
				{
					type = "delve",
					name = "Launch",
					request = "launch",
					program = "${file}", -- запустить текущий файл
				},
				{
					type = "delve",
					name = "Launch Package",
					request = "launch",
					program = "${workspaceFolder}", -- запустить весь пакет
				},
				{
					type = "delve",
					name = "Attach",
					request = "attach",
					processId = require("dap.utils").pick_process,
				},
			}

			-- хоткеи
			vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug: Continue" })
			vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debug: Step over" })
			vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debug: Step into" })
			vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Debug: Step out" })
			vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Debug: Toggle breakpoint" })
			vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Debug: Toggle UI" })
			vim.keymap.set("n", "<leader>dw", function()
				require("dapui").open({ reset = false, layout = nil, type = "watches" })
			end, { desc = "Debug: Watches" })
			vim.keymap.set("n", "<leader>db", function()
				require("dapui").open({ reset = false, layout = nil, type = "breakpoints" })
			end, { desc = "Debug: Breakpoints" })
            vim.keymap.set('n', '<leader>=', require('dap.ui.widgets').hover, { desc = 'Debug: Hover value' })
		end,
	},
}
