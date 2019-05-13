import operator

class ItensProjeto(object):
    """__init__() functions as the class constructor"""
    def __init__(self, item_id=None, nome=None, descricao=None, proj_id=None, data=None,
                 image_name=None, flag_img_visible=None, file_name=None, flag_file_visible=None):
        self.item_id = item_id
        self.proj_id = proj_id
        self.nome = nome
        self.descricao = descricao
        self.data = data
        self.image_name = image_name
        self.flag_img_visible = flag_img_visible
        self.file_name = file_name
        self.flag_file_visible = flag_file_visible

    def json_to_projeto(self, lista=None):
        itemList = []
        for item in lista:
            itemList.append(ItensProjeto(item[0], item[1], item[2], item[3], item[4]))

        return itemList

    def sortListProjeto(self, lista, order_by):
        return sorted(lista, key=operator.attrgetter(order_by), reverse=True)

    def getDataFormatada(self):
        return self.data.strftime("%d de %B de %Y as %H:%M:%S")
