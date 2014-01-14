define logrotate::config (

  $log 		= 'NONE',
  $options	= [],
  $prerotate 	= 'NONE',
  $postrotate 	= 'NONE'

) {

  require logrotate

  file { 

    "/etc/logrotate.d/${name}":
      owner   => root,
      group   => root,
      mode    => '0644',
      content => template('logrotate/logrotate.erb');

  }

}

