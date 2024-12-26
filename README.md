
# Log Archiver Script

This bash script is designed to archive log files from the `/var/log` directory on a Linux system. It creates a timestamped `.tar.gz` archive of the logs and stores it in a user-specified directory (`archive_logs`). If the `archive_logs` directory doesn't exist, the script creates it automatically.

## Features

- Archives all log files from the `/var/log` directory.
- Creates a timestamped `.tar.gz` archive for easy versioning and tracking.
- Automatically creates an archive directory (`archive_logs`) if it doesn't exist.

## Prerequisites

- Linux-based operating system (Ubuntu, CentOS, Debian, etc.)
- Bash shell
- `tar` utility installed (usually pre-installed on most Linux distributions)
- `sudo` privileges to access the `/var/log` directory

## Script Usage

1. Clone the repository to your local machine:
   ```sh
   git clone https://github.com/janisadhi/Log_Archive_Tool.git
   ```
  

2. Navigate to the project directory:
   ```sh
   cd Log_Archive_Tool
   ```
3. **Make the script executable**:
   In your terminal, navigate to the directory where you saved the script and run:

   ```bash
   chmod +x scripts.sh
   ```

4. **Run the script**:
   Execute the script with the following command:

   ```bash
   ./scripts.sh
   ```

   **Note:** You may be prompted for your password to allow `sudo` access to the `/var/log` directory. The script uses `sudo` to ensure it can access log files that require elevated permissions.

## What the Script Does

- Checks if the `archive_logs` directory exists. If it doesn't, the script creates it.
- Generates a timestamp in the format `yy_mm_dd-HH_MM_SS` to create a unique name for the log archive.
- Uses `tar` to create a compressed `.tar.gz` archive of the `/var/log` directory and saves it to the `archive_logs` directory.
- The script displays a message indicating the progress of the archiving process.

## Example Output

```bash
Created archive directory: archive_logs
Archiving log files...
[wait.......]
[archive finished...]
```

## Archive Location

After running the script, the archive will be located in the `archive_logs` directory with a filename like:

```
log_24_12_26-14_30_15.tar.gz
```

Where the timestamp reflects the date and time when the archive was created.


This project is part of [Janis Adhikari's](https://roadmap.sh/projects/server-stats)  DevOps projects.

