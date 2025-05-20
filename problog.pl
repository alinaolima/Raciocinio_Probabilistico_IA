% STR: condição da rua
0.6::str(dry); 0.3::str(wet); 0.1::str(snow_covered).

% R: Dínamo deslizando (condicional à condição da rua)
0.9::r :- str(snow_covered).
0.4::r :- str(wet).
0.05::r :- str(dry).

% V depende apenas de R (V ⫫ Flw, Str | R)
0.2::v :- r.
0.95::v :- \+r.

% FLW: Volante desgastado
0.1::flw.

% B: Lâmpada boa
0.95::b.

% K: Cabo bom
0.97::k.

% Li (luz ligada) depende de V, B e K
% Casos para V = true
0.99::li :- v, b, k.
0.01::li :- v, b, \+k.
0.01::li :- v, \+b, k.
0.001::li :- v, \+b, \+k.

% Casos para V = false
0.3::li :- \+v, b, k.
0.005::li :- \+v, b, \+k.
0.005::li :- \+v, \+b, k.
% Sem regra para \+v, \+b, \+k → probabilidade implícita 0

% Evidência: condição da rua = snow_covered
evidence(str(snow_covered)).

% Consulta: qual a probabilidade de tensão?
query(v).
