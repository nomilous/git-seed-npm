ipso = require 'ipso'

describe 'NpmPackage', -> 


    it 'does not npm install if no package.json in workDir', 

        ipso (done, NpmPackage) -> 

            masterDefer = notify: info: -> 

                arguments[0].should.equal 'skipped'
                done()

            repo = workDir: '/none'
            NpmPackage.install masterDefer, repo, null, ->



    it 'extends GitRepo to define manager as "npm"', 

        ipso (done, NpmPackage, should) -> 

            masterDefer = notify: ->
            defer = 
                reject: ->
                resolve: (repo) -> 

                    repo.origin.should.equal 'git@github.com:nomilous/git-seed-npm.git'
                    repo.path.should.equal '.'
                    repo.manager.should.equal 'npm'
                    done()

            NpmPackage.init '.', 0, masterDefer, defer
