#@PDQTest
exec { 'test':
  command   => '& C:\fail.ps1',
  provider  => powershell,
}

exec { 'test2':
  command   => '& C:\fail.ps1',
  provider  => powershell,
  creates   => 'C:\ProgramData\chocolatey',
}