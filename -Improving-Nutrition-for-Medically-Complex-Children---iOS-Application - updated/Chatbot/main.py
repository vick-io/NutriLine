from openai import OpenAI
import streamlit as st
from dotenv import load_dotenv
import os

load_dotenv()

client = OpenAI()
OpenAI.api_key= os.getenv("OPENAI_API_KEY")

st.title("Nutriline-AI")

main_placeholder = st.empty()

query = main_placeholder.text_input("Enter your Question")

if query:
    with open("patient-schedule.txt", "r") as file:
        schedule_content = file.read()
        
    completion = client.chat.completions.create(
        model="gpt-3.5-turbo",
        messages=[
            {"role": "system", "content": schedule_content},
            {"role": "system", "content": query},
        ]
    )

    st.text(completion.choices[0].message.content)