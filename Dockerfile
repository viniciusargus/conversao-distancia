FROM python:3.11.2
    # faz a criação apartir de uma imagem já criada no site do dockerhub
    WORKDIR /app 
    # O workdir cria o diretorio e entra no diretorio criado.
    COPY requirements.txt .
    RUN python -m pip install -r requirements.txt 
    # Pip é o gerenciador de pacotes do python
    COPY . .
    CMD [ "gunicorn","--bind", "0.0.0.0:5000","app:app"] 
    # O gunicorn servidor web usado no python,fazendo o bind de porta informando que qualquer ip pode fazer uma requisição para a porta 5000.O app e uma variavel flash
    