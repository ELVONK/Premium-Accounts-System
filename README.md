# Premium Accounts System

This repository contains a PHP-based system for managing premium accounts. A
simple [Streamlit](https://streamlit.io/) dashboard is provided to visualise
data from the MySQL database.

## Streamlit dashboard

1. Install the required Python packages:
   ```bash
   pip install -r requirements.txt
   ```
2. Ensure a MySQL server is running and accessible using the credentials in
   `includes/config.php`.
3. Run the dashboard:
   ```bash
   streamlit run streamlit_app.py
   ```

The dashboard connects to the database and displays records from the `accounts`
table.
