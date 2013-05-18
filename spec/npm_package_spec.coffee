require('nez').realize 'NpmPackage', (NpmPackage, test, it, should) -> 

    it 'extends GitRepo to define manager as "npm"', (done) -> 

        masterDefer = notify: -> 
        defer = 
            reject: ->
            resolve: (repo) -> 

                repo.origin.should.equal 'git@github.com:nomilous/git-seed-npm.git'
                repo.path.should.equal '.'
                repo.manager.should.equal 'npm'
                test done


        NpmPackage.init '.', 0, masterDefer, defer
