import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CredentialsForm extends StatefulWidget {
  @override
  _CredentialsFormState createState() => _CredentialsFormState();
}

class _CredentialsFormState extends State<CredentialsForm> {
  var screenUtil=ScreenUtil();
  GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  String _userName="";
  String _password="";

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _formKey,
      width:double.infinity,
      height:screenUtil.setHeight(500),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius:BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color:Colors.black12,
            offset:Offset(0.0,15.0),
            blurRadius:15.0
          ),
          BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
        ]
      ),
      child: Padding(
        padding: EdgeInsets.only(left:16.0,right:16.0,top:16.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[
              Center(
                child: Text("Login",
                style:TextStyle(
                  fontSize: screenUtil.setSp(45),
                  fontFamily: "Poppins-Bold",
                  letterSpacing: 4
                )),
              ),

                SizedBox(height: screenUtil.setHeight(25),),

                Text("Username",
                  style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize:screenUtil.setSp(20),
                    
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "username",
                    hintStyle: TextStyle(color:Colors.grey,fontSize: 10)
                  ),
                  validator: (String inValue){
                    if(inValue.length==0){
                      return "Fill in username";
                    }
                    return null;
                  },
                ),
                 SizedBox(height: screenUtil.setHeight(25),),
                 Text("Password",
                 style: TextStyle(
                   fontFamily: "Poppins-Medium",
                   fontSize:screenUtil.setSp(20)
                 ),
                 ),
                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: "Password",
                     hintStyle: TextStyle(color:Colors.grey,fontSize: 10)
                   ),
                 ),

                 SizedBox(height: screenUtil.setHeight(25),),
                 InkWell(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Text("Forgot Password?",
                       style: TextStyle(
                         color:Colors.blue,
                         fontFamily: "Poppins-Medium",
                         fontSize: screenUtil.setSp(28)
                       ),)
                     ],
                   ),
                   onTap: (){
                     print("Probably navigate to the next page");
                     //page called forgot page
                   },
                 )
        ],),
        ),
    );
  }
}
