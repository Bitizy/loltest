import discord
from discord.ext.commands import Bot
import os

bot = Bot(command_prefix='%')
token = "Njc4NDY2NjI4OTU4MTU4ODYw.XkjWfw.I2kGdr4va53D_zoBDI8l8idPoAE"
clear = lambda: os.system('cls')

@bot.event
async def on_ready():
    print('Ready')

@bot.event
async def on_message(message):
    if message.content.startswith('+status'):
        embed = discord.Embed(color=0x7FFF00, title="B3IC IS ONLINE")
        await bot.send_message(message.channel, embed=embed)


bot.run(token)
