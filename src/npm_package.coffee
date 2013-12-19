GitRepo = require('git-seed-core').GitRepo
Git     = require('git-seed-core').Git
Shell   = require('git-seed-core').Shell
{lstatSync} = require 'fs'
{join} = require 'path'

module.exports = class NpmPackage extends GitRepo

    @manager: -> 'npm'

    @install: (superTask, repo, args, callback) -> 

        try 
            packageJSON = join repo.workDir, 'package.json'
            lstatSync packageJSON
            superTask.allow_stdio = true
        
            Shell.spawnAt(
                superTask
                directory: repo.workDir
                'npm', ['install']
                callback

            )

        catch error

            superTask.notify.info 'skipped', "missing #{packageJSON}"
            callback null
