package MyApp::Controller::Render;
use Mojo::Base 'Mojolicious::Controller';

sub just_render {
  my $self = shift;

  my $template =  $self->param( 'explicit' )
    ? 'content_explicit'
    : 'content_implicit'
  ;

  $self->render( $template );
}


sub with_layout {
  my $self = shift;

  my $template =  $self->param( 'explicit' )
  	? 'content_explicit'
  	: 'content_implicit'
  ;

  $self->render( $template, layout => 'v1' );
}

1;
