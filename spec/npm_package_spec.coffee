require('nez').realize 'NpmPackage', (NpmPackage, test, it, should) -> 

    it 'extends GitRepo to define manager as "npm"', (done) -> 

        npmPackage = NpmPackage.init '.', 0
        
        npmPackage.origin.should.equal 'git@github.com:nomilous/git-seed-npm.git'
        npmPackage.path.should.equal '.'
        npmPackage.manager.should.equal 'npm'

        test done
