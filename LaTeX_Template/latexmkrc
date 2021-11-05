
$pdf_mode = 1;
$xelatex = "xelatex -synctex=1 --shell-escape -interaction=nonstopmode %O %S";
$pdflatex = "xelatex -synctex=1 --shell-escape -interaction=nonstopmode %O %S";
$biber = "biber --validate-datamodel %O %S";
$preview_mode = 1;
$cleanup_mode = 2;

add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries -q $_[0]";
  }
  else {
    system "makeglossaries $_[0]";
  };
}

push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
push @generated_exts, 'synctex.gz';

$clean_ext = 'acn acr alg aux bbl bcf blg brf fdb_latexmk glg glo gls idx ilg ind ist lof log lot out run.xml toc toe dvi slg slo sls xdy listing'