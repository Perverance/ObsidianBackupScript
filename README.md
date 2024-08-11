This is a simple batch script that creates an encrypted compressed file of your Obsidian vault for backup purposes.

**How to use it:**
- You need 7-Zip installed and available in the PATH as `7z`

- You'll want to modify the following variables in the script:
  - `set pass=your_password`: Replace `your_password` with your desired password (you can also create an environment variable and calling it in the script).
  - `set orig_folder=C:\...\{your_obsidian_vault_folder}`: Specify the path of your Obsidian vault directory.
  - `set dest_folder=C:\...\{your_output_folder}`: Specify the path of the output directory where you want the 7z file to be created.
  - `set output_name={your_obsidian_vault_folder}(%date:/=-%__%time::=%)`: You can modify the name of the resulting file as needed.

- Download the `obsidian_backup.bat` and put it in safe location in your PC. You may want to add its location to the `PATH` variable so you can use it anywhere.
- Once the previous steps are complete, open you terminal (CMD or whatever you use), type the name of the script and execute it.

**Notes:**
- You can use this script with a cloud service provider (Drive, Mega, etc.) by setting the  `dest_folder` as a sync target in the app. This way, each time the script creates a backup, it automatically uploads to your desired cloud service.
- You can use it to back up any folder; I just designed it for my Obsidian vault.
- Keep in mind that, security-wise, it's a very simple script made by an amateur. It serves my needs, and I'm only sharing it in case someone else might find it useful. Let me know if any improvements can be made!


