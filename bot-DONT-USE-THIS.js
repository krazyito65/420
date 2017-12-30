const Discord = require("discord.js");
const client = new Discord.Client();

const fs = require('fs');
const moment = require('moment-timezone');
const data = fs.readFileSync('token', "utf8");
const token =  data.toString().trim();

const entryMessage = "<@&250369565677060097> It's time."
const channelID = "249348258780938240"

//test ID for bronze 6 general"259888294039388160"
//mx id = <@&250369565677060097>
//mx channel id = 249348258780938240

client.on('ready', () => {
  console.log(`Logged in as ${client.user.tag}!`);
  const channel = client.channels.find('id', channelID);
  channel.send(entryMessage)
    .then(message => console.log(`Sent message: ${message.content}`))
    .catch(console.error);
});

client.on('message', msg => {
  if (msg.author.id == client.user.id && msg.content == entryMessage) {
    console.log("msg found, exiting")
    process.exit(0);
  }
});


client.login(token);
