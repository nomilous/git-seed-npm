ipso = require 'ipso'

describe 'Index', -> 

    it 'exports the package plugin implementation', 

        ipso (done, Index, should) -> 

            Index.Package.should.equal require '../lib/npm_package'
            done()
