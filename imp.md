
  

python -m rasa_core.run --enable_api -d models/dialogue -u models/nlu/default/bank_nlu --endpoints endpoints.yml --auth_token token
python -m rasa_core_sdk.endpoint --actions actions