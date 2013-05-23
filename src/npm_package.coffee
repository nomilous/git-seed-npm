GitRepo = require('git-seed-core').GitRepo
Git     = require('git-seed-core').Git
Shell   = require('git-seed-core').Shell

module.exports = class NpmPackage extends GitRepo

    @manager: -> 'npm'

    # install: (defer, callback) ->

    #     console.log 'INSTALL::::', arguments

    #     Shell.spawnAt directory: @path, 'npm', ['install'], defer, (error, result) => 

    #         console.log 'interim install result', arguments

    #         unless error

    #             callback null





    #         # if error

    #         #     console.log error

    #         #     defer.notify

    #         #         cli:

    #         #             conteext: 'bad'
    #         #             event: 'package install failed'
    #         #             detail: error.message

    #         #     defer.reject error
    #         #     return

    #         # defer.notify

    #         #     event: 'output'
    #         #     detail: result.stdout + result.stderr

    #         # callback null, result

