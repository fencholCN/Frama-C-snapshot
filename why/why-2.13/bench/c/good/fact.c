/**************************************************************************/
/*                                                                        */
/*  The Why platform for program certification                            */
/*  Copyright (C) 2002-2008                                               */
/*    Romain BARDOU                                                       */
/*    Jean-Fran�ois COUCHOT                                               */
/*    Mehdi DOGGUY                                                        */
/*    Jean-Christophe FILLI�TRE                                           */
/*    Thierry HUBERT                                                      */
/*    Claude MARCH�                                                       */
/*    Yannick MOY                                                         */
/*    Christine PAULIN                                                    */
/*    Yann R�GIS-GIANAS                                                   */
/*    Nicolas ROUSSET                                                     */
/*    Xavier URBAIN                                                       */
/*                                                                        */
/*  This software is free software; you can redistribute it and/or        */
/*  modify it under the terms of the GNU General Public                   */
/*  License version 2, as published by the Free Software Foundation.      */
/*                                                                        */
/*  This software is distributed in the hope that it will be useful,      */
/*  but WITHOUT ANY WARRANTY; without even the implied warranty of        */
/*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  */
/*                                                                        */
/*  See the GNU General Public License version 2 for more details         */
/*  (enclosed in the file GPL).                                           */
/*                                                                        */
/**************************************************************************/

/*@ requires n >= 0 
  @ // variant n
  @*/
int fact(int n) { 
  if (n == 0) return 1; 
  return n * fact(n-1); 
}