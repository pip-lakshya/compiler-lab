%{
#include "y.tab.h"
%}

%%

a       { return A; }
b       { return B; }
c       { return C; }
d       { return D; }

[ \t\n]+    ;

.       { return yytext[0]; }

%%

