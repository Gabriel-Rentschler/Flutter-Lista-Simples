import 'package:flutter/cupertino.dart';
import 'package:gabriel_sit/src/app/components/seunome_card.dart';
import 'package:gabriel_sit/src/app/components/seunome_page.dart';
import 'package:gabriel_sit/src/app/components/seunome_textform.dart';
import 'package:gabriel_sit/src/app/model/list_model.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  TextEditingController listNameController = TextEditingController();
  TextEditingController listQuantityController = TextEditingController();
  FocusNode listNameFocus = FocusNode();
  FocusNode listQuantityFocus = FocusNode();

  List<ListModel> inventoryList = [
    ListModel(listName: 'Saco de arroz', listQuantity: 18),
  ];

  addNewTransaction( {required String? listName, required String? listQuantity}) {
    setState(() {
      inventoryList.insert(
        0,
        ListModel(
            listName: listName,
            listQuantity: num.parse(listQuantity.toString())),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SeuNomePage(
      pageTile: 'Extrato',
      body: SingleChildScrollView(
        child: Column(
          children: [
            SeuNomeTextForm(
              focusNode: listNameFocus,
              userInputController: listNameController,
              label: 'Nome do item',
              onEditingComplete: (){
                listQuantityFocus.nextFocus();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SeuNomeTextForm(
              focusNode: listQuantityFocus,
              userInputController: listQuantityController,
              label: 'Quantidade do item',
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 15,
                );
              },
              shrinkWrap: true,
              itemCount: inventoryList.length,
              itemBuilder: ((context, index) {
                var transactionItem = inventoryList[index];
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: SeuNomeCard(
                      leftText: transactionItem.listName,
                      rightText: 'Qnt: ${transactionItem.listQuantity}',
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
      buttonText: 'Adicionar',
      onPressed: () {
        addNewTransaction(
          listName: listNameController.text,
          listQuantity: listQuantityController.text);
      }
    );
  }
}
