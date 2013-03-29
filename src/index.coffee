module.exports = 

    #
    # export the package plugin
    #

    package:  require './npm_package'


    #
    # export the shell component 
    # 
    # - git-seed cli uses this to find the nested repos
    #

    shell: require('git-seed-core').Shell
