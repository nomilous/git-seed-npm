GitRepo = require('git-seed-core').GitRepo
Git     = require('git-seed-core').Git
Shell   = require('git-seed-core').Shell

module.exports = class NpmPackage extends GitRepo

    @manager: -> 'npm'

    install: (callback) -> 


        Shell.spawnAt directory: @path, 'npm', ['install'], (error, result) => 

            if error

                console.log '(failed)'.red, 'npm install error:', error
                callback error, result
                return

            callback error, result
