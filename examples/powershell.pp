#@PDQTest
exec { 'test':
  command   => '& C:\fail.ps1',
  provider  => powershell,
}