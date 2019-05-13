import operator


class User(object):
    """__init__() functions as the class constructor"""
    def __init__(self, user_id=None, user_name=None, user_email=None, user_password=None, ts_insercao=None,
                 qtd_projetos=None, qtd_atividades=None, qtd_consultas=None):
            self.user_id = user_id
            self.user_name = user_name
            self.user_email = user_email
            self.user_password = user_password
            self.ts_insercao = ts_insercao
            self.qtd_projetos = qtd_projetos
            self.qtd_atividades = qtd_atividades
            self.qtd_consultas = qtd_consultas

    def json_to_user(self, lista=None):
        user_list = []
        for item in lista:
            user_list.append(User(item[0], item[1], item[2], item[3], item[4], item[5], item[6], item[7]))

        return user_list


    def sortList(self, lista, order_by):
        return sorted(lista, key=operator.attrgetter(order_by), reverse=True)

    def getDataFormatada(self):
        return self.ts_insercao.strftime("%d de %B de %Y as %H:%M:%S")
