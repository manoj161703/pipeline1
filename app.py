# app.py
import streamlit as st

st.set_page_config(page_title="Azure Pipeline Demo", layout="centered")

st.title("Streamlit App on Azure VM with NGINX + Pipeline")
st.write("Hi Nitish 👋, this is a demo app running behind NGINX.")

name = st.text_input("Enter your name:")
if name:
    st.success(f"Welcome, {name}! Your pipeline is working 🚀")
