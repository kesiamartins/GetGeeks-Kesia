from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user(target):

    data = {
        'faker': {
            "name": fake.first_name(),
            "lastname": fake.last_name(),
            "email": fake.free_email(),
            "password": "qwe123"
        },
        'invalid_email': {
            "name": "Pedro",
            "lastname": "De Lara",
            "email": "pedro_dl*hotmail.com",
            "password": "qwe123"
        },
        'login': {
            "name": "Kesia",
            "lastname": "Martins",
            "email": "kesiasilvamartins@gmail.com",
            "password": "qwe123"
        },
        'be_geek': {
            "name": "Kim",
            "lastname": "Dotcom",
            "email": "kim@dot.com",
            "password": "qwe123",
            "geek_profile": {
                'whats': '11999999999',
                'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac aliquet libero. Fusce eget est ac.',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
            }
        },
        'attempt_be_geek': {
            "name": "Dio",
            "lastname": "Linux",
            "email": "dio@linux.com",
            "password": "qwe123",
            "geek_profile": {
                'whats': '11999999999',
                'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique mauris id pulvinar molestie. Integer tincidunt diam nec ullamcorper varius. Duis laoreet justo at sodales pulvinar. Nullam ornare egestas dapibus. Praesent sem tortor, eleifend in non.',
                'printer_repair': 'Não',
                'work': 'Remoto',
                'cost': '150'
            }
        },
    }

    return data[target]

