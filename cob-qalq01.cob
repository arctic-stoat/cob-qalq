      * MIT License
      * Copyright (c) 2018 Christer Stig Åke Landstedt
      * 
      * Permission is hereby granted, free of charge, to any person obtaining a copy
      * of this software and associated documentation files (the "Software"), to deal
      * in the Software without restriction, including without limitation the rights
      * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
      * copies of the Software, and to permit persons to whom the Software is
      * furnished to do so, subject to the following conditions:
      * 
      * The above copyright notice and this permission notice shall be included in all
      * copies or substantial portions of the Software.
      * 
      * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
      * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
      * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
      * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
      * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
      * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
      * SOFTWARE.
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. cob-qalq01.
       AUTHOR.  "Christer Stig Åke Landstedt".

      * ENVIRONMENT DIVISION.
       
       DATA DIVISION.
           LOCAL-STORAGE SECTION.
           01 USER-SELECTION PIC X(1) VALUE "A".
           01 CALC1 PIC 9(5)V9(2) VALUE ZERO.
           01 CALC2 PIC 9(5)V9(2) VALUE ZERO.
           01 CALCJOB PIC X(1) VALUE "A".
           01 CALCSUM PIC 9(10)V9(2) VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROGRAM.
       999-SELECTION0.
       DISPLAY "--------------".
       DISPLAY "Cobol Qalq 0.1".
       DISPLAY "--------------".
       DISPLAY "Press Q/q to calculate".
       DISPLAY "Press I/i for information".
       DISPLAY "Press X/x to exit application".
       ACCEPT USER-SELECTION.
       
       IF USER-SELECTION = "Q"
            GO TO 999-SELECTION1
       ELSE
            IF USER-SELECTION = "q"
                 GO TO 999-SELECTION1
                 ELSE
                     IF USER-SELECTION = "I"
                     GO TO 999-SELECTION2
                     ELSE
                         IF USER-SELECTION = "i"
                         GO TO 999-SELECTION2
                         ELSE
                            IF USER-SELECTION = "X"
                            GO TO 999-SELECTION3
                            ELSE
                                IF USER-SELECTION = "x"
                                GO TO 999-SELECTION3
                            END-IF
                         END-IF
                     END-IF
                 END-IF
            END-IF
       END-IF.
       
       999-SELECTION1.
       DISPLAY "---------------------------".
       DISPLAY "Calculate".
       DISPLAY "---------------------------".
       DISPLAY "Enter number".
       ACCEPT CALC1.
       DISPLAY "Select calculation +,-,/,*".
       ACCEPT CALCJOB.
       DISPLAY "Enter number".
       ACCEPT CALC2.
       IF CALCJOB = "+"
            COMPUTE CALCSUM = CALC1 + CALC2
       ELSE
            IF CALCJOB = "-"
                 COMPUTE CALCSUM = CALC1 - CALC2
            ELSE
                 IF CALCJOB = "*"
                     COMPUTE CALCSUM = CALC1 * CALC2
                 ELSE
                     IF CALCJOB = "/"
                         COMPUTE CALCSUM = CALC1 / CALC2
                     END-IF
                 END-IF
            END-IF
       END-IF.
       DISPLAY "Resault: "CALCSUM.
       DISPLAY "Press Q/q to calculate again".
       DISPLAY "Press R/r to return to main menu".
       DISPLAY "Press X/x to exit application".
       ACCEPT USER-SELECTION.
       MOVE 0 TO CALC1.
       MOVE 0 TO CALC2.
       MOVE "A" TO CALCJOB.

       IF USER-SELECTION = "Q"
            GO TO 999-SELECTION1
       ELSE
            IF USER-SELECTION = "q"
                 GO TO 999-SELECTION1
                 ELSE
                     IF USER-SELECTION = "R"
                     GO TO 999-SELECTION0
                     ELSE
                         IF USER-SELECTION = "r"
                         GO TO 999-SELECTION0
                         ELSE
                            IF USER-SELECTION = "X"
                            GO TO 999-SELECTION3
                            ELSE
                                IF USER-SELECTION = "x"
                                GO TO 999-SELECTION3
                            END-IF
                         END-IF
                     END-IF
                 END-IF
            END-IF
       END-IF.

       999-SELECTION2.
       DISPLAY "---------------------------".
       DISPLAY "Application information".
       DISPLAY "---------------------------".
       DISPLAY "Application: Cobol Qalq 0.1".
       DISPLAY "---------------------------".
       DISPLAY "MIT License".
       DISPLAY "Copyright (c) 2018 Christer Stig Åke Landstedt".
       DISPLAY " ".
       DISPLAY "Permission is hereby granted, free of charge, to any ".
       DISPLAY "person obtaining a copy of this software and ".
       DISPLAY "associated documentation files (the ""Software""), ".
       DISPLAY "to deal in the Software without restriction, ".
       DISPLAY "including without limitation the rights ".
       DISPLAY "to use, copy, modify, merge, publish, distribute, ".
       DISPLAY "sublicense, and/or sell copies of the Software,".
       DISPLAY "and to permit persons to whom the Software is ".
       DISPLAY "furnished to do so, subject to the following ".
       DISPLAY "conditions:".
       DISPLAY " ".
       DISPLAY "The above copyright notice and this permission notice ".
       DISPLAY "shall be included in all copies or substantial ".
       DISPLAY "portions of the Software. ".
       DISPLAY " ".
       DISPLAY "THE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY ".
       DISPLAY "OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT ".
       DISPLAY "LIMITED TO THE WARRANTIES OF MERCHANTABILITY, ".
       DISPLAY "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. ".
       DISPLAY "IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS ".
       DISPLAY "BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER ".
       DISPLAY "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR ".
       DISPLAY "OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION ".
       DISPLAY "WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE ".
       DISPLAY "SOFTWARE.".
       GO TO 999-SELECTION0.
       

       999-SELECTION3.
       STOP-RUN.
