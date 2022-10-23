import 'package:architecture/features/post/presentation/bloc/activity_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatefulWidget{
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState()=> _PostPageState();

}
class _PostPageState extends State<PostPage>{


  @override
  void initState() {
    super.initState();
    BlocProvider.of<ActivityBloc>(context).add(LoadApiEvent());
  }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Activities for bored people'),
     ),
     body: BlocBuilder<ActivityBloc, ActivityState>(
       builder: (context, state) {
         if (state is ActivityStateLoadingState) {
           return const Center(
             child: CircularProgressIndicator(),
           );
         }
         if (state is ActivityStateLoadedState) {
           return Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               const SizedBox(height: 20,),
               Text(state.activityName,style: const TextStyle(color: Colors.black),),
               const SizedBox(height: 20,),
               Text(state.activityType,style: const TextStyle(color: Colors.black),),
               const SizedBox(height: 20,),
               Text(
                 state.participants.toString(),style: const TextStyle(color: Colors.black),
               ),
               const SizedBox(height: 20,),
               ElevatedButton(
                 onPressed: () => BlocProvider.of<ActivityBloc>(context).add(LoadApiEvent()),
                 child: Text('LOAD NEXT'),
               )
             ],
           );
         }
         if (state is ActivityNoInternetState) {
           return Text('no internet :(');
         }
         return Container();
       },
     ),
   );


  }




}