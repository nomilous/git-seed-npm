GitRepo = require('git-seed-core').GitRepo
Git     = require('git-seed-core').Git
Shell   = require('git-seed-core').Shell

module.exports = class NpmPackage extends GitRepo

    @manager: -> 'npm'

    @install: (repo, superTask, callback) -> 
        
        Shell.spawnAt(

            directory: repo.path
            'npm', ['install']
            superTask
            callback

        )
