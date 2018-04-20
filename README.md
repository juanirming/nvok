Invoker for Linux scripts written in various scripting languages such as bash, .NET Core, go, node, perl, php, python and ruby. Allows for easy script execution in plain English "nvok verb noun" format, obviating the need for the user to have knowledge of which language interpreter to execute, and providing other conveniences.

For example: "nvok test dependencies", where "test" is simply a sub-directory under the "scripts" directory and "dependencies" could be a bash script, perl script or anything else.

An auto-generated tree list of available commands is displayed using the "help" command or by running nvok with no arguments. Directories which should not be treated as command verbs can be configured as hidden (for instance, "lib" and "tmp").

Languages are determined by script file extensions such as .sh, .go, .js, .pl, .php, .py and .rb. These are kept hidden from the user and are irrelevant to them.

.NET Core projects must have a .cs extension on the project directory name. For instance, create a new project like so: "dotnet new console -o test.cs". If another language requiring directories rather than just single files to run is added, those directories will also need corresponding extensions in order for nvok to identify them as commands.

Command line arguments are passed through to the final script like so: "nvok get users 42 84 1337".

Convenient bash functions for terminal color output and confirmation prompts are automatically made available to bash scripts executed by nvok.

Destructive command verbs such as "delete" and "remove" can easily be configured to automatically trigger a user confirmation prompt before nvok proceeds to execute the corresponding script.

Teams of developers using various scripting languages can use nvok to easily contribute to a common CLI toolset whose commands are run in a uniform manner.

You can/should rename this bash file to something that makes sense for your project/toolset and then make sure it's in your PATH. The "help" command will automatically reflect the name. Using a different project/context name will also let you have multiple nvok instances, each with its own namespace and configuration. For example: "gameserver clean map 7" and "funthing get joke".
