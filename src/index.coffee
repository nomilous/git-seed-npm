module.exports = 

    #
    # export the package plugin
    #

    Package:  require './npm_package'


    #
    # export the shell component 
    # 
    # - git-seed cli uses this to find the nested repos
    #

    Shell: require('git-seed-core').Shell
