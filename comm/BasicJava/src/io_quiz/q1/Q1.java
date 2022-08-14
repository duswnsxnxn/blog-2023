package io_quiz.q1;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

public class Q1 {

   public static void main(String[] args) {
      try(FileOutputStream fos=new FileOutputStream("gugudan.txt");
            OutputStreamWriter osw=new OutputStreamWriter(fos)
         ){
         for(int i=2;i<=9;i++) {
            for(int j=1;j<=9;j++) {
               System.out.print(i+"*"+j+"="+i*j+"\n");
               osw.write(i+"*"+j+"="+i*j+"\n");
            }
         }
         
      } catch (FileNotFoundException e) {
         e.printStackTrace();
      } catch (IOException e) {
         e.printStackTrace();
      }
      System.out.println("출력완료");
   }

}