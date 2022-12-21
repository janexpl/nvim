local status, mason = pcall(require, "mason")
if (not status) then return end

local statuslsp, masonlspconfig = pcall(require, "mason-lspconfig")
if (not statuslsp) then return end
mason.setup()
masonlspconfig.setup()
