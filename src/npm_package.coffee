GitRepo = require('git-seed-core').GitRepo
Git     = require('git-seed-core').Git
Shell   = require('git-seed-core').Shell

module.exports = class NpmPackage extends GitRepo

    @manager: -> 'npm'

    @install: (superTask, repo, args, callback) -> 

        superTask.allow_stdio = true
        
        Shell.spawnAt(
            superTask
            directory: repo.workDir
            'npm', ['install']
            callback

        )
