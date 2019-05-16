import operator
import datetime

class projeto(object):
    """__init__() functions as the class constructor"""
    def __init__(self, proj_id=None, nome=None, descricao=None, user_id=None, objetivo=None,
                 data=None, data_conclusao=None, flag_exclusao=None):
        self.proj_id = proj_id
        self.nome = nome
        self.descricao = descricao
        self.objetivo = objetivo
        self.user_id = user_id
        self.data = data
        self.data_conclusao = data_conclusao
        self.flag_exclusao = flag_exclusao

    def json_to_projeto(self, lista=None):
        projetoList = []
        for item in lista:
            projetoList.append(projeto(item[0], item[1], item[2], item[3], item[4], item[5], item[6], item[7]))

        return projetoList

    def sortListProjeto(self, lista, order_by):
        return sorted(lista, key=operator.attrgetter(order_by), reverse=True)

    def getDataFormatada(self, tipo_data=None):
        now = datetime.datetime.now()

        if tipo_data == 'inicio':
            return self.data.strftime("%d de %B de %Y as %H:%M:%S")
        elif tipo_data == 'termino':
            return self.data_conclusao.strftime("%d de %B de %Y as %H:%M:%S")
        else:
            return str(now - self.data)
