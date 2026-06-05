Here is a comprehensive list of `psql` meta-commands and SQL commands organized from beginner to advanced levels. These commands are entered directly into the `psql` interactive terminal to manage and query your PostgreSQL databases.

---

### 🔰 Level 1: Getting Started (Essential Basics)

Master these commands to connect to databases, navigate, and perform basic inspections.

| Command | Description | Example / Notes |
| :--- | :--- | :--- |
| **Connect & Access** | | |
| `psql -U [username] -d [dbname]` | Connect to a database from your terminal. | `psql -U postgres -d mydb` |
| `\c [dbname] [username]` | Switch to a new database or user within psql. | `\c mydb postgres` |
| `\q` | Quit/Exit the psql shell. | |
| `\?` | List all available `\` meta-commands. | Great for on-the-fly help . |
| `\h [sql_command]` | Show SQL syntax help (e.g., `\h SELECT`). | Essential for remembering command syntax . |
| **Information & Inspection** | | |
| `\l` or `\list` | List all databases on the server. | Use `\l+` for more size info . |
| `\dn` | List all schemas in the current database. |  |
| `\dt` | List all tables in the current database. | Use `\dt+` to see size and descriptions . |
| `\d [table_name]` | Describe/Show the structure of a specific table. | `\d users` (shows columns, indexes) . |
| `\du` | List all database users/roles. |  |
| **Formatting & Helpers** | | |
| `\x` | Toggle **Expanded** display (vertical output). | Best for rows with many columns . |
| `\timing` | Toggle query execution time on/off. | Used for performance testing . |

### 📊 Level 2: Everyday Operations (Queries & Data)

Once connected, these commands help you view, edit, and export data efficiently.

| Command | Description | Example / Notes |
| :--- | :--- | :--- |
| **Query Execution** | | |
| `\g` | Re-execute the last query. | Useful after using `\e` to edit a query . |
| `\e` | Edit the query buffer in your external editor. | Saves time on complex queries . |
| **Data Management** | | |
| `\copy [table] FROM/TO [file]` | Import/Export data to a local file (client-side). | **Crucial**: Uses local file permissions, not server .<br>Ex: `\copy users TO 'users.csv' CSV HEADER;` |
| `\i [filename]` | Execute (run) SQL commands from an external file. | `\i setup.sql` . |
| **Output Control** | | |
| `\o [filename]` | Save all future query results to a file. | Run `\o output.txt` then `SELECT * FROM large_table;` . |
| `\a` | Toggle between aligned and unaligned output. | Useful for parsing with scripts . |
| `\pset format [csv\|html\|latex]` | Set output format for reports. | `\pset format csv` . |

### 🧠 Level 3: Advanced Administration (Deep Insight)

For troubleshooting, auditing, and performance tuning.

| Command | Description | Example / Notes |
| :--- | :--- | :--- |
| **System & Code Inspection** | | |
| `\d+ [table]` | Show detailed table info (including triggers, indexes, and comments). |  |
| `\sf [function]` | Show the source code of a function. | `\sf my_function` . |
| `\df+` | List functions with their details (owner, language, source code). |  |
| `\dv` | List views. |  |
| `\du+` | List users with additional connection limits. | |
| `\conninfo` | Display current connection details (Host, Port, User). |  |
| **Permissions & Extensions** | | |
| `\dp` or `\z` | List table access privileges (permissions). |  |
| `\dx` | List installed extensions. | Use `\dx+` for details . |
| `\dtS+` | List system tables (including internal pg_catalog). | Required for deep PostgreSQL introspection . |

### 💡 Level 4: Expert Techniques (Scripting & Automation)

Automate complex tasks using dynamic SQL and watch modes.

| Command | Description | Example / Notes |
| :--- | :--- | :--- |
| `\gexec` | Execute the **output** of the current query as new SQL commands. | **Powerful**: `SELECT 'DROP TABLE ' \|\| tablename \|\| ';' FROM pg_tables WHERE schemaname = 'public';` then `\gexec` . |
| `\watch [seconds]` | Repeat the last query automatically every N seconds. | `SELECT * FROM pg_stat_activity;` then `\watch 2` . |
| `\crosstabview` | Convert query results into a pivot/cross-tab table. | Requires at least 3 columns . |
| `\errverbose` | Show a verbose, detailed report of the last error. | Invaluable for debugging failed triggers or constraints . |
| `\set [variable]` | Set a psql variable for scripting. | `\set my_id 123` then `SELECT * FROM users WHERE id = :my_id;` |
| `\! [command]` | Execute a shell command without leaving psql. | `\! ls -la` or `\! pwd` . |

### 🚀 Pro-Tips for Daily Use

- **The `+` modifier**: Many commands (`\dt+`, `\l+`, `\d+`) accept a plus sign (`+`) to show **additional information** like size, comments, and descriptions. If you need more details, add the `+` .
- **Tab Completion**: `psql` supports tab completion for table names, column names, and commands. Press `Tab` to autocomplete or see available options.
- **History**: Use the `Up Arrow` key to scroll through previous commands. Use `\s` to view the history list .
- **Running SQL Files**: Use `\i file.sql` to run a script. If you want to run a file and then exit, use `psql -d dbname -f file.sql` from your terminal .
