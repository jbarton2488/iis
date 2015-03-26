describe 'IIS is installed with the default web site' {
  $output = $null
  try {
    $output =(new-object net.webclient).DownloadString('http://localhost')
  }
  catch {    
  }
  it 'is listening on port 80' {
    $output | should exist
  }
}
