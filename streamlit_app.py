import mysql.connector
import pandas as pd
import streamlit as st


@st.cache_resource
def get_connection():
    """Create a connection to the MySQL database."""
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="tkcoke_premium",
    )


def main():
    st.title("Premium Accounts Dashboard")

    try:
        conn = get_connection()
        df = pd.read_sql("SELECT * FROM accounts", conn)
        st.subheader("Accounts")
        st.dataframe(df)
    except mysql.connector.Error as exc:
        st.error(f"Database connection failed: {exc}")
    finally:
        try:
            conn.close()
        except Exception:
            pass


if __name__ == "__main__":
    main()
