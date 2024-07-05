from transformers import AutoModelForCausalLM, AutoTokenizer

model_name = "eachadea/vicuna-7b-1.1"  # 例: "gpt2", "bert-base-uncased" など
model = AutoModelForCausalLM.from_pretrained(model_name)
tokenizer = AutoTokenizer.from_pretrained(model_name)