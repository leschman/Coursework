/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lab10;

/**
 *
 * @author Logan Esch
 */
public class Lab10Stuff {
       public double forAverage(int[] arr){
       int total = 0;
       for(int i = 0; i < arr.length; i++ ){
           total += arr[i];
       }
       return (double)total/arr.length;
   }
   
   public double whileAverage(int[] arr){
       int total = 0;
       int count = 0;
       while(count < arr.length){
           total += arr[count];
           count++;
       }
       return (double)total/arr.length;
   }
   
   public double doWhileAverage(int[] arr){
       int total = 0;
       int count = 0;
       do{
           total += arr[count];
           count++;
       }while(count < arr.length);
       return (double)total/arr.length;
   }
   
   public void larger (int a,int b){
       if(a < b){
           System.out.println(b);
       }else{
           System.out.println(a);
       }
   }
   public void equal (int a, int b){
       if(a == b){
           System.out.println("equal");
       }else{
           System.out.println("Not equal");
       }
   }
   
   public void assending (int a, int b, int c){
       int biggest = Integer.MIN_VALUE;
       int index = -1;
       int[] arr = {a,b,c};
       for(int i = 0; i < arr.length; i++){
           if(arr[i] > biggest){
               biggest = arr[i];
               index = i;
           }
       }
       System.out.println(biggest);
       arr[index] = Integer.MIN_VALUE;
       biggest = Integer.MIN_VALUE;
       for(int i = 0; i < arr.length; i++){
           if(arr[i] > biggest){
               biggest = arr[i];
               index = i;
           }
       }
       System.out.println(biggest);
       arr[index] = Integer.MIN_VALUE;
       biggest = Integer.MIN_VALUE;
       for(int i = 0; i < arr.length; i++){
           if(arr[i] > biggest){
               biggest = arr[i];
               index = i;
           }
       }
       System.out.println(biggest);

   }
   
//   public void switcher (int choice){
//       switch(choice){
//           case 1 : person.printName;
//               break;
//           case 3 : person.printAge;
//               break;
//           case 6 : person.printSSN;
//               break;
//       }
//   }
}
