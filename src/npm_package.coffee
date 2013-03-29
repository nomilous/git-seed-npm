GitRepo = require('git-seed-core').GitRepo
Git     = require('git-seed-core').GitRepo

module.exports = class NpmPackage extends GitRepo

    @init: (workDir, seq) -> 

        #
        # override init to define manager property as npm
        #

        return new NpmPackage

            root:    seq == 0
            path:    workDir
            origin:  Git.showOrigin workDir
            branch:  Git.showBranch workDir
            ref:     Git.showRef workDir
            manager: 'npm'
