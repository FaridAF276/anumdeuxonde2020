## Copyright (C) 2019 ThomasGPhonk
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} VariableAnnexe (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ThomasGPhonk <ThomasGPhonk@DESKTOP-7FS6V1P>
## Created: 2019-06-03

function wret= VariableAnnexe (z,t,v);
  
global B1 B2 w;



if t == 0
  w = zeros (length(z),1);
  wt = B1*v - B2*w ;
endif


if t > 0
  wt = B1*v - B2*w ; 
endif

wret = w + wt;
w = wret;

w(1)= 0;
w(length(z)) = 0;

endfunction
