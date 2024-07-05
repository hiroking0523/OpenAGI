import os
import openai
openai.api_key = os.environ["OPENAI_API_KEY"]

prompt = "こんにちは、私の名前は"
model = "text-davinci-002"
response = openai.Completion.create(
engine=model,
prompt=prompt,
max_tokens=5
)
print(response.choices[0].text)