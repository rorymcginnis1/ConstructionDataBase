"""
The code below is just representative of the implementation of a Bot. 
However, this code was not meant to be compiled as it. It is the responsability 
of all the students to modifify this code such that it can fit the 
requirements for this assignments.
"""

import discord
import os
from discord.ext import commands
from models import *
from database import Database


TOKEN = os.environ['DISCORD_TOKEN']

intents = discord.Intents.all()

bot = commands.Bot(command_prefix='!', intents=discord.Intents.all())

@bot.event
async def on_ready():
  print(f"Bot {bot.user} has joined the room")
  Database.connect(bot.user)
# set the inbounds for ipv4 address in your AWS RDS instanct to https:/0.0.0.0/

@bot.command(name="test", description="write your database business requirement for this command here")
async def _test(ctx, arg1):
    testModel = TestModel(ctx, arg1)
    response = testModel.response()
    await ctx.send(response)


# TODO: complete the following tasks:
#       (1) Replace the commands' names with your own commands
#       (2) Write the description of your business requirement in the description parameter
#       (3) Implement your commands' methods.

@bot.command(name="multiple-projects", description="Retrieves and displays a list of employees who have worked on multiple projects in the last X days, in more than Y regions, and have a clean safety record.")
async def _command1(ctx, *args):


  if len(args) < 1:
    await ctx.send("Please provide the interval value.")
    return

  interval_value = args[0]

  results = Database.get_shortage_response(interval_value)

  await ctx.send(results)

@bot.command(name="material-shortage", description="Retrieves and displays construction projects with a shortage of X material and no available suppliers in the same region")
async def _command2(ctx, *args):
  if len(args) < 1:
    await ctx.send("Please provide the interval value.")
    return

  interval_value = args[0]

  results = Database.mat_short(interval_value)

  await ctx.send(results)


@bot.command(name="project-suppliers", description="Fetches and shows suppliers in the same region as project X, capable of fulfilling its work order, and having more positive than negative reviews in the last Y days.")
async def _command3(ctx, *args):
  if len(args) < 1:
    await ctx.send("Please provide the interval value.")
    return

  interval_value = args[0]

  results = Database.pro_sup(interval_value)

  await ctx.send(results)


@bot.command(name="safety-incidents", description="Fetches and presents employees involved in at least X safety incidents in more than Y different projects who make at least Z in salary or A an hour.")
async def _command4(ctx, *args):
  if len(args) < 4:
    await ctx.send("Please provide the interval value.")
    return


  results = Database.saf_in(args[0], args[1],args[2],args[3])

  await ctx.send(results)


@bot.command(name="insert-safety-training", description="Inserts safety training records for a project where the project manager (identified by <project_manager_id>) has been involved in X safety incidents across multiple region, and has negative feedback in more than Y% of their last Z projects.")
async def _command5(ctx, *args):
  if len(args) < 1:
    await ctx.send("Please provide the interval value.")
    return

  interval_value = args[0]

  print("here")

  results = Database.in_safe(interval_value)
  print("here")

  await ctx.send("Insert")


@bot.command(name="insert-task-description", description="Inserts descriptions into tasks for all projects that have less than X employees, are experiencing Y weather conditions, have negative feedback from the client, and are not on pace to complete the project in the expected amount of time or with the expected funds.")
async def _command6(ctx, *args):
  if len(args) < 3:
    await ctx.send("Please provide the interval value.")
    return

  results = Database.in_task(args[0], args[1],args[2])


  await ctx.send("Insert")


@bot.command(name="update-leadership-level", description="Updates the leadership level for project managers with projects behind schedule, more than X% good reviews for their projects, and no assigned supervisor")
async def _command7(ctx, *args):
  if len(args) < 2:
    await ctx.send("Please provide the interval value.")
    return

  results = Database.up_led(args[0], args[1])


  await ctx.send("Updated")


@bot.command(name="update-project-status", description="Updates the status of projects to 'Under Review' for those with less than X employees, in region Y without permits Z, and with over A% of employees involved in incidents.")
async def _command8(ctx, *args):
  if len(args) < 3:
    await ctx.send("Please provide the interval value.")
    return

  results = Database.up_pro(args[0], args[1], args[2])


  await ctx.send("Updated")


@bot.command(name="delete-permits", description="Deletes permits for all projects in region X with over Z employees, using material Y, and utilizing renewable energy.")
async def _command9(ctx, *args):
  if len(args) < 3:
    await ctx.send("Please provide the interval value.")
    return

  results = Database.del_perm(args[0], args[1], args[2])


  await ctx.send("Deleted")





@bot.command(name="client-most-projects", description="Finds the client with the most projects in region X and has had Y safety incidents. Displays the employees who have worked on every single one of these client's projects across all regions.")
async def _command11(ctx, *args):
  if len(args) < 1:
    await ctx.send("Please provide the interval value.")
    return
  results = Database.find_emp(args[0])


  await ctx.send(results)


@bot.command(name="employees-no-training", description="Displays the employees who have not yet done training X, have been in a safety incident in the last year, and are currently working on one or more projects in region Y.")
async def _command12(ctx, *args):
  if len(args) < 1:
    await ctx.send("Please provide the interval value.")
    return
  results = Database.find_tra(args[0])


  await ctx.send(results)


@bot.command(name="project-feedback", description="Displays the feedback of all projects in region X with less than Y employees, having at least one delay due to weather, but with no safety incidents.")
async def _command13(ctx, *args):
  if len(args) < 2:
    await ctx.send("Please provide the interval value.")
    return
  results = Database.find_fed(args[0], args[1])


  await ctx.send(results)


@bot.command(name="project-permits", description="Provides the permits for each project in region X using S pounds of material Y from supplier Z.")
async def _command14(ctx, *args):
  if len(args) < 2:
    await ctx.send("Please provide the interval value.")
    return
  results = Database.find_pro_perm(args[0], args[1])

  await ctx.send(results)


@bot.command(name="project-managers-no-work-orders", description="Displays the project managers who worked on X projects, have no current work orders, less than Y employees involved in less than A safety incidents in the last Z days, and have a superior working on a project in the same region.")
async def _command15(ctx, *args):
  if len(args) < 1:
    await ctx.send("Please provide the interval value.")
    return
  results = Database.find_ree(args[0])

  await ctx.send(results)


bot.run(TOKEN)
