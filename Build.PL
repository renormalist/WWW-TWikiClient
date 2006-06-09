use Module::Build;

my $build = new Module::Build
 (
  module_name        => 'WWW::TWikiClient',
  license            => 'perl',
  requires           => {
                         perl               => '5.6.1',
                         Class::MethodMaker => 0,
                         WWW::Mechanize     => 0,
                        },
  build_requires     => {
                         Test::More => 0,
                        },
  create_makefile_pl => 'passthrough',
 );
$build->create_build_script;
$build->create_makefile_pl;
