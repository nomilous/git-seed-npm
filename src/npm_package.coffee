GitRepo = require('git-seed-core').GitRepo
Git     = require('git-seed-core').Git
Shell   = require('git-seed-core').Shell

module.exports = class NpmPackage extends GitRepo

    @init: (repoDir, seq) -> 

        #
        # override init to define manager property as npm
        #

        return new NpmPackage

            root:    seq == 0
            path:    repoDir
            origin:  Git.showOrigin repoDir
            branch:  Git.showBranch repoDir
            ref:     Git.showRef repoDir
            manager: 'npm'


    install: (callback) -> 

        originalDir = process.cwd()

        try 

            process.chdir @path
            

            Shell.spawn 'npm', ['install'], (error, result) -> 

                if error

                    console.log '(failed)'.red, 'npm install error:', error
                    callback error, result
                    return

                console.log '(ok)'.green, 'npm install in', process.cwd()
                process.chdir originalDir
                callback error, result


        catch error

            process.chdir originalDir

            callback error, null