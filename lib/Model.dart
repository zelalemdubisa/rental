import 'exports.dart';
class PickModels extends StatefulWidget {
  const PickModels({Key? key}) : super(key: key);

  @override
  State<PickModels> createState() => _PickModelsState();
}

class _PickModelsState extends State<PickModels> {
  @override
  Widget build(BuildContext context) {
    List<String> modelList = ["Rolls-Royce","Diablo","Suziki","Toyota","Corola","Mercedice","hybrid","Tata","rava 4"];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Center(child: Text("Models")),backgroundColor: Colors.amber,),
        body: ListView.builder(
          itemCount: modelList.length,
            itemBuilder: (context , index){
            return Card(
              elevation: 3,
              child: ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                title: Text(modelList[index]),
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey
                  ),
                  // child: Image(
                  //   fit: BoxFit.contain,
                  //   image: new AssetImage(imageList[index],),
                  // ),
                ),
                trailing: Icon(Icons.arrow_forward_rounded),
              ),
            );
            }
        ),
      ),
    );
  }
}
