#!/bin/bash

blaze_phrases=(
  "BLAZE, is coming!"
  "All rise for the incoming BLAZE!"
  "Prepare to BLZ!"
  "BLAZE! Just not quite yet..."
  "All the Kings BLAZE! Still took a moment to put a plan into action..."
  "Ready to BLZ? So am I!"
  "In the incoming BLAZE, we trust!"
)

# Seed random generator
RANDOM=$$$(date +%s)

selected_phrase=${blaze_phrases[$RANDOM % ${#blaze_phrases[*]}]}

#{ "username": "420-test", "avatar_url": "https://i.ytimg.com/vi/Dkm8Hteeh6M/maxresdefault.jpg", "content" : "<@&250369565677060097> $selected_phrase" }

curl -X POST --data '{ "username": "420", "avatar_url": "https://i.ytimg.com/vi/Dkm8Hteeh6M/maxresdefault.jpg", "content" : "<@&250369565677060097>. '"$selected_phrase"'" }' -H "Content-Type: application/json" https://discordapp.com/api/webhooks/396806639866478592/74Lsetp6Qk5kTO8QKNukH3zq0ciNAM4JrhT_8pqxUDD7PD-wepThHfWUhw29BdPJbdsi
