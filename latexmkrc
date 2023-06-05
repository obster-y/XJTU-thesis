$ENV{'TZ'}='Asia/Shanghai';

$pdf_mode = 5;
$postscript_mode = 0;
$dvi_mode = 0;
$preview_mode = 0;
$cleanup_mode = 0;

$out_dir = "./Build";

$xelatex = "xelatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape %O %S";
$biber = "biber %O %S";
$xdvipdfmx = 'xdvipdfmx -E -o %D %O %S';

add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  my ($base_name, $path) = fileparse( $_[0] );
  pushd $path;
  if ( $silent ) {
    my $return = system "makeglossaries -q $base_name";
  }
  else {
    my $return = system "makeglossaries $base_name";
  };
  popd;
  return $return;
}

push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
push @generated_exts, 'synctex.gz';

$clean_ext = 'acn acr alg aux bbl bcf blg brf fdb_latexmk fls glg glo gls hd idx ilg ind ist lof log lot nav out run.xml thm toc toe dvi slg slo sls snm xdv xdy listing'