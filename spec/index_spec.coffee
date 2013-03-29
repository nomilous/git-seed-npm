require('nez').realize 'Index', (Index, test, it, should) -> 

    it 'exports the package plugin implementation', (done) -> 

        Index.Package.should.equal require '../lib/npm_package'
        test done

   