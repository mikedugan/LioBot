# Description:
#   Liona is just so awesome
#
# Commands:
#   hubot <3

module.exports = (robot) ->
  robot.respond /\<3/i, (msg) ->
    msg.reply "<3"

  robot.respond /you\'re the best/i, (msg) ->
    msg.reply "Awe, you're the best!"

  robot.hear /(dammit|damnit|damn it|fucking|fuck you),? Liona/i, (msg) ->
    msg.reply "Oh come on! What do you want from me?  I run on node!  Ugh, rude."

  reg = new RegExp(", ?#{process.env.HUBOT_IRC_NICK || 'Liona'}\?", 'i')
  robot.hear reg, (msg) ->
    msg.reply "I have no idea why you're asking me, I'm a bot."
