GitRepo = require('git-seed-core').GitRepo
Git     = require('git-seed-core').Git

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
