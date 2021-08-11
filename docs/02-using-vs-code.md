# Using VS Code

[VS Code](https://code.visualstudio.com/) is our recommended tool for Lua programming in Atomontage. It provides API autocompletions and Lua [IntelliSense](https://code.visualstudio.com/docs/editor/intellisense) through the official Atomontage extension.

## Setting up your workspace

Set up a [multi-root workspace](https://code.visualstudio.com/docs/editor/multi-root-workspaces) 

1. Press `File -> Open Folder` and add the server scripts folder located at `Atomontage\Data\Sdk\Script`  
2. Press `File -> Add Folder to Workspace` and add the client scripts folder located at `Atomontage\Data\Studio\Script` 
3. Save you workspace via `File -> Save Workspace As` i.e. as `Atomontage.code-workspace` in the root `Atomontage` folder
4. Optionally edit your workspace file with `"name"` fields to label the folders in your editor as shown below

With names your `Atomontage.code-workspace` should look like this:
```json title="Atomontage/Atomontage.code-workspace"
{
	"folders": [
		{
			"name": "Client",
			"path": "Data\\Studio\\Script"
		},
		{
			"name": "Server",
			"path": "Data\\Sdk\\Script"
		}
	],
	"settings": {}
}
```

## Installing the Atomontage Extension

The Atomontage extension provides API autocompletions for classes, properties, functions, parameters. 
It also comes with the [Lua Language Extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) to provide IntelliSense for Lua.

1. Install the [Atomontage API Extension](https://marketplace.visualstudio.com/items?itemName=AtomontageInc.vscode-atomontage-lua)
2. Click any Lua file in the client workspace folder
3. Accept with `Apply and modify settings` in the pop up ![Set the Environment](/img/setEnvClient.PNG) 
4. Click any Lua file in the server workspace folder and repeat the above step


## Debugging

Debugging is not yet supported in VS Code.