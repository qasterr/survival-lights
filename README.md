# Survival Lights

Use the light block in survival  
**Only works in 1.19+**

## Installation

Go to the [latest releases](https://github.com/qasterr/survival-lights/releases/latest) and download a file called `survival_lights.zip` from assets.

Then you can follow the [instructions on the Minecraft wiki](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack).

### Important note for servers

If you are running the datapack on a server, **make sure that `enable-command-block` is set to `true` in your `server.properties`**. If wearing the light viewer spawns command blocks that don't disappear immediately, then you have forgotten to do this.

## Usage

### Craft the light block

To craft light blocks, place a torch anywhere in the crafting grid as shown in the image below.

![A torch in a crafting grid becomes one light block](/public/crafting_recipe.png)

### Create a light viewer

Due to some limitations survival has, you won't be able to break or view lights in survival.
To circumvent that, rename a leather helmet into "View Lights".
While it is equipped, light blocks in a 7-block radius will be displayed as candles, which you can see and break.

### Set your desired light level

Enter the command `/trigger light_level set <light_level>` and replace `<light_level>` with a number from 1 to 15. This will be how bright the light block will be.

While holding a light block in your hand, enter the command `/trigger apply_light`. The light block you are holding will have the light level you chose in the earlier command. This can be used multiple times without having to choose the light level again.

### Place the light blocks

While wearing the light viewer, place the light blocks wherever you want. The blocks will become candles while you are nearby, but as soon as you walk away or unequip the light viewer, they will return to normal.
