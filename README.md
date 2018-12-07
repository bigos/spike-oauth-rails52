Como está usando Docker, a comunicação entre os apps é delicada.
Em resumo, eles se conhecem pelos nomes dos serviços accounts e client. Cada um tem uma porta específica.

Para que tudo fique padrão e haja menos confusão, colocar no /etc/hosts da sua máquina host:

```
127.0.0.1 accounts client
```

E tome cuidado para acessar sempre no navegador:

http://accounts:3001

http://client:3002

Cadastre a aplicação no accounts e atualize o docker-compose.yml antes de começar!

# Translation

Since you're using Docker, communication between apps is tricky. In short, they
are known by the names of the accounts and client services. Each has a specific
port.

For everything to be standard and less messy, put it in the / etc / hosts of
your host machine:

127.0.0.1 accounts client

And be careful to always access in the browser:

http: // accounts: 3001

http: // client: 3002

Register the application on accounts and update docker-compose.yml before you
start!
