/*
 * CIS 315
 * Summer 2016
 */

/*This program takes in a list of integers and calls a method that removes all duplicates in the list then returns the list to the user
 * @author Justin Clark
 */
import java.util.Scanner;
public class EliminateDuplicates {

    public static void main(String[] args) {
        int[] myList = new int[10];
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter ten integers: ");
        for (int i = 0; i < 10; i++){
            myList[i] = scan.nextInt();
        }
        System.out.println(myList);


        System.out.println(eliminateDuplicates(myList));

    }


    //methods

    public static int [] eliminateDuplicates(int [] list){
        int end = list.length;
        for (int i = 0; i < end; i++){
            for (int n = i + 1; n < end; n++){
                if (list[i] == list[n]){
                int shiftleft = n;

                    for (int x = n + 1; x < end; x++, shiftleft++){
                    list[shiftleft] = list[x];
                    }
                    end--;
                    n--;
                }
            }
        }
        int[] sortedarr = new int[end];

        for (int i = 0; i < end; i++){
            sortedarr[i] = list[i];
        }
        return sortedarr;
    }

}