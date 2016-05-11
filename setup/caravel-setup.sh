
### Dependencies
pip install sqlalchemy
brew install pkg-config libffi openssl
env LDFLAGS="-L$(brew --prefix openssl)/lib" CFLAGS="-I$(brew --prefix openssl)/include" pip install cryptography

### Clients
pip install mysqlclient

### Install
# Install caravel
pip install caravel

# Create an admin user
fabmanager create-admin --app caravel

# Initialize the database
caravel db upgrade

# Create default roles and permissions
caravel init

# Load some data to play with
# caravel load_examples
