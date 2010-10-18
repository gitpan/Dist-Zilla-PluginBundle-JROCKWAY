package Dist::Zilla::PluginBundle::JROCKWAY;
BEGIN {
  $Dist::Zilla::PluginBundle::JROCKWAY::VERSION = '1.102910';
}
# ABSTRACT: JROCKWAY does not like boilerplate
use Moose;
use namespace::autoclean;

our $VERSION;

with 'Dist::Zilla::Role::PluginBundle::Easy';

use Dist::Zilla::Plugin::AutoPrereqs;
use Dist::Zilla::Plugin::AutoVersion;
use Dist::Zilla::Plugin::PkgVersion;
use Dist::Zilla::Plugin::MetaConfig;
use Dist::Zilla::Plugin::PodSyntaxTests;
use Dist::Zilla::Plugin::PodWeaver;
use Dist::Zilla::Plugin::Repository;
use Dist::Zilla::Plugin::GatherDir;
use Dist::Zilla::Plugin::PruneCruft;
use Dist::Zilla::Plugin::ManifestSkip;
use Dist::Zilla::Plugin::MetaConfig;
use Dist::Zilla::Plugin::MetaJSON;
use Dist::Zilla::Plugin::MetaYAML;
use Dist::Zilla::Plugin::License;
use Dist::Zilla::Plugin::Readme;
use Dist::Zilla::Plugin::ExtraTests;
use Dist::Zilla::Plugin::ExecDir;
use Dist::Zilla::Plugin::ShareDir;
use Dist::Zilla::Plugin::MakeMaker;
use Dist::Zilla::Plugin::Manifest;
use Dist::Zilla::Plugin::TestRelease;
use Dist::Zilla::Plugin::ConfirmRelease;
use Dist::Zilla::Plugin::UploadToCPAN;
use Dist::Zilla::PluginBundle::Git;

sub configure {
    my $self = shift;

    $self->add_plugins(qw(
       BeJROCKWAY
       AutoPrereqs
       AutoVersion
       PkgVersion
       PodSyntaxTests
       PodWeaver
       Repository
       GatherDir
       PruneCruft
       ManifestSkip
       MetaConfig
       MetaJSON
       MetaYAML
       License
       Readme
       ExtraTests
       ExecDir
       ShareDir
       MakeMaker
       Manifest
       TestRelease
       ConfirmRelease
       UploadToCPAN
   ), [
       'NextRelease' => {
           format => '%-9v%{EEE LLL d hh:mm:ss vvv YYYY}d',
       },
   ]);
}

__PACKAGE__->meta->make_immutable;

1;



=pod

=head1 NAME

Dist::Zilla::PluginBundle::JROCKWAY - JROCKWAY does not like boilerplate

=head1 VERSION

version 1.102910

=head1 DESCRIPTION

This basically sets everything up the way I like.  Actually, I don't
like RJBS-style versions, but they are convenient and I think it's
cool to say "I released Foo colon colon Bar version
1.2349857213094852734958273450928736459872346587234 today".

=head1 AUTHOR

Jonathan Rockway <jrockway@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Jonathan Rockway.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

