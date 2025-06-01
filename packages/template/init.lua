local base = require("packages.base")

local package = pl.class(base)
package._name = "template"

function package:_init()
  base._init(self)
end

function package:registerCommands()
  self:registerCommand("sample-command", function(_, content)
      SILE.process(content)
  end)
end

package.documentation = [[
\begin{document}
The \autodoc:package{template} package provides the command \autodoc:command{\package-command{sample-command}}, which does nothing but print what is written within the brackets...
\end{document}
]]

return package
