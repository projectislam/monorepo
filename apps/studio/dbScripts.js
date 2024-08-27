const { exec } = require("child_process");
const path = require("path");
require("dotenv").config();

// Get database configuration from environment variables
const dbName = process.env.DB_DATABASE;
const user = process.env.DB_USER;
const host = process.env.DB_HOST;
const password = process.env.DB_PASSWORD;

if (!dbName || !user || !host || !password) {
  console.error("Missing required environment variables");
  process.exit(1);
}

// Backup function
function backupDatabase() {
  const outputPath = path.join(__dirname, "db_backup.sql");
  const command = `PGPASSWORD=${password} pg_dump -U ${user} -h ${host} -Fc ${dbName} > ${outputPath}`;

  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error creating backup: ${error.message}`);
      return;
    }
    if (stderr) {
      console.error(`Standard error: ${stderr}`);
      return;
    }
    console.log(`Backup completed successfully. File saved at ${outputPath}`);
  });
}

// Restore function
function restoreDatabase() {
  const inputPath = path.join(__dirname, "db_backup.sql");
  const command = `PGPASSWORD=${password} pg_restore -U ${user} -h ${host} -d ${dbName} -c ${inputPath}`;

  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error restoring backup: ${error.message}`);
      return;
    }
    if (stderr) {
      console.error(`Standard error: ${stderr}`);
      return;
    }
    console.log(`Restore completed successfully.`);
  });
}

// Handle command-line arguments
const command = process.argv[2];

switch (command) {
  case "backup":
    backupDatabase();
    break;
  case "restore":
    restoreDatabase();
    break;
  default:
    console.error('Unknown command. Use "backup" or "restore".');
}
