$regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
$proxyState = Get-ItemProperty -Path $regPath -Name "ProxyEnable"
$proxyIP = "172.20.10.1"
$proxyPort = "1082"
$proxyAddress = "$proxyIP`:$proxyPort"

if ($proxyState.ProxyEnable -eq 1) {
    Set-ItemProperty -Path $regPath -Name "ProxyEnable" -Value 0
    $msg = "代理已关闭"
    # 关闭 Git 代理
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    $msg += "`n`nGit 代理已关闭"
} else {
    Set-ItemProperty -Path $regPath -Name "ProxyEnable" -Value 1
    Set-ItemProperty -Path $regPath -Name "ProxyServer" -Value "172.20.10.1:1082"
    $msg = "代理已开启（172.20.10.1:1082）"
    # 设置 Git 代理
    git config --global http.proxy $proxyAddress
    git config --global https.proxy $proxyAddress
    $msg += "`n`nGit 代理已设置为 $proxyAddress"
}
# 显示当前 Git 代理设置
$httpProxy = git config --global --get http.proxy
$httpsProxy = git config --global --get https.proxy

$msg += "`n`n当前 Git 代理设置:"
$msg += "`nHTTP  代理: $httpProxy"
$msg += "`nHTTPS 代理: $httpsProxy"

[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[System.Windows.Forms.MessageBox]::Show($msg, "代理状态")
