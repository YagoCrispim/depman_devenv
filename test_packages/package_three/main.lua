local fn_four = require 'package_four.main'

return function()
    print('package_three function')
    print('package_three calling package_four')
    fn_four()
end
