##Import de modulo e conexão no vCenter
import-module VMware.Vimautomation.core
connect-viserver -Server server.server.com.br -WarningAction SilentlyContinue 

$vmlist = Import-CSV "F:\Scripts\tag_categoria.csv"
 
foreach ($item in $vmlist) {
 
   $categoria = $item.categoria
   $tag = $item.tag
   
   new-Tag -Category Função -Name $tag 

} 


remove-t