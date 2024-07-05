export TRANSFORMERS_CACHE="./cache/";
OPENAI_KEY="fugafuga";
SEARCHAPI_KEY="hogehoge";
DATA_PATH="./data/openagi_data/";
DEVICE_LIST="0"; 
EVAL_DEVICE="cuda:1";
LLM_DEVICE="cuda:1";
BATCH_SIZE=5;
# LLM_NAME="flan_t5";
LLM_NAME="gpt";
TASK="few_shot";
SCHEMA="benchmark";

if [ $SCHEMA = "benchmark" ]
then
    python openagi_benchmark.py \
    --openai_key ${OPENAI_KEY} \
    --huggingface_cache ${TRANSFORMERS_CACHE} \
    --data_path ${DATA_PATH} \
    --device_list ${DEVICE_LIST} \
    --eval_device ${EVAL_DEVICE} \
    --llm_device ${LLM_DEVICE} \
    --batch_size ${BATCH_SIZE} \
    --llm_name ${LLM_NAME} \
    --task ${TASK}
else
    python openagi_opentask.py \
    --searchapi_key ${SEARCHAPI_KEY} \
    --openai_key ${OPENAI_KEY} \
    --device ${EVAL_DEVICE}
fi


