
import 'exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white30,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/image/rolls.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 35,
                              width: 40,
                              child: Icon(Icons.arrow_back),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 40,
                                child: Icon(Icons.logout),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 35,
                                width: 40,
                                child: Icon(Icons.emoji_symbols_outlined),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                              )
                            ],
                          )
                        ],),
                      SizedBox(height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PRIMIUM CLASS",style: TextStyle(color: Colors.amber),),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                              SizedBox(width: 5,),
                              Text("5.0",style: TextStyle(color: Colors.grey),)

                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 19,),
                      Text("Rolls-Royce",style: TextStyle(color: Colors.white,fontSize: 25),),
                      SizedBox(height: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("A vehicle that makes a dream",style: TextStyle(color: Colors.grey,),),
                          Text("off comfortable off-roading reality",style: TextStyle(color: Colors.grey,),),
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text("Features",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                height: 130,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xffFCEACC),
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:25,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        ),
                                        child: Icon(Icons.timer),
                                      ),
                                      Column(
                                        children: [
                                          Text("ENGINE",style: TextStyle(fontSize: 10),),
                                          Text("OUTPUT",style: TextStyle(fontSize: 10),),
                                        ],
                                      ),
                                      Row(
                                        textBaseline: TextBaseline.ideographic,
                                        crossAxisAlignment: CrossAxisAlignment.baseline,

                                        children: [
                                          Text("571",style: TextStyle(fontSize: 20),),
                                          Text("Rp",style: TextStyle(fontSize: 10,color: Color(0xff87898C)),),
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 130,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xffDBE5F1),
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:25,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        ),
                                        child: Icon(Icons.call),
                                      ),
                                      Column(
                                        children: [
                                          Text("HIGHEST",style: TextStyle(fontSize: 10),),
                                          Text("SPEED",style: TextStyle(fontSize: 10),),
                                        ],
                                      ),
                                      Row(
                                        textBaseline: TextBaseline.ideographic,
                                        crossAxisAlignment: CrossAxisAlignment.baseline,

                                        children: [
                                          Text("250",style: TextStyle(fontSize: 20,),),
                                          Text("KM/HR",style: TextStyle(fontSize: 10,color: Color(0xff87898C)),),
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 130,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff212328),
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:25,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        ),
                                        child: Icon(Icons.timer),
                                      ),
                                      Column(
                                        children: [
                                          Text("TIME",style: TextStyle(fontSize: 10,color: Color(0xff87898C)),),
                                          Text("TO100KM/H",style: TextStyle(fontSize: 10,color: Color(0xff87898C)),),
                                        ],
                                      ),
                                      Row(
                                        textBaseline: TextBaseline.ideographic,
                                        crossAxisAlignment: CrossAxisAlignment.baseline,

                                        children: [
                                          Text("5.2",style: TextStyle(fontSize: 20,color: Colors.white),),
                                          Text("sec",style: TextStyle(fontSize: 10,color: Colors.white),),
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),


                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight:  Radius.circular(15),topLeft:  Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textBaseline: TextBaseline.ideographic,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              children: [
                                Text("\$",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                SizedBox(width: 5,),
                                Text("2000",style: TextStyle(fontSize: 30),),
                                SizedBox(width: 7,),
                                Text("/Day",style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => MapScreen()));
                              },
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Center(
                                    child: Text("Book a car",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                              ),
                            )
                          ],
                          ),
                        ),
                      ),


                    ],
                  ),
                )
              ],
            ),
          )

      ),
    );
  }
}
