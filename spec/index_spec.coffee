require('nez').realize 'Index', (Index, test, it, should) -> 

    it 'exports the package plugin implementation', (done) -> 

        Index.package.should.equal require '../lib/npm_package'
        test done

    it 'exports (as a proxy) the git-seed-core.Shell module', (done) -> 

        #
        # - This enables the git-seed cli to not ALSO need to install
        #   the git-seed-core module. 
        # 
        # - Also enables the plugin to implement it's on interface to
        #   git/shell (should that be necessary, eg. windows)
        # 

        Index.shell.should.equal require('git-seed-core').Shell
        test done

