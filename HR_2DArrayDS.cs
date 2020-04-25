//Problem at https://www.hackerrank.com/challenges/2d-array/problem
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Text.RegularExpressions;
using System.Text;
using System;

class Solution {

    // Complete the hourglassSum function below.
    static int hourglassSum(int[][] arr) {
        
        int currentHourGlass = 0;
        int largestSum = -999;

        for (int i = 1; i < 5; i++){
            for (int j = 1; j < 5; j++){
                currentHourGlass = 0;
                currentHourGlass += arr[i-1][j-1];
                currentHourGlass += arr[i-1][j];
                currentHourGlass += arr[i-1][j+1];
                currentHourGlass += arr[i][j];
                currentHourGlass += arr[i+1][j-1];
                currentHourGlass += arr[i+1][j];
                currentHourGlass += arr[i+1][j+1];
                if (currentHourGlass > largestSum){
                    largestSum = currentHourGlass;
                }

            }
        }

        return largestSum;
    }

    static void Main(string[] args) {
        TextWriter textWriter = new StreamWriter(@System.Environment.GetEnvironmentVariable("OUTPUT_PATH"), true);

        int[][] arr = new int[6][];

        for (int i = 0; i < 6; i++) {
            arr[i] = Array.ConvertAll(Console.ReadLine().Split(' '), arrTemp => Convert.ToInt32(arrTemp));
        }

        int result = hourglassSum(arr);

        textWriter.WriteLine(result);

        textWriter.Flush();
        textWriter.Close();
    }
}

