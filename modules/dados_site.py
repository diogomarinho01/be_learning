import operator


class dados_site(object):
    """__init__() functions as the class constructor"""
    def __init__(self, site_id=None, ts_insercao=None, nome=None, mensagem=None):
            self.site_id = site_id
            self.ts_insercao = ts_insercao
            self.nome = nome
            self.mensagem = mensagem

    def json_to_site(self, lista=None):
        site_list = []
        for item in lista:
            site_list.append(dados_site(item[0], item[1], item[2], item[3]))

        return site_list


    def sortList(self, lista, order_by):
        return sorted(lista, key=operator.attrgetter(order_by), reverse=True)

    def getDataFormatada(self):
        return self.ts_insercao.strftime("%d de %B de %Y as %H:%M:%S")
