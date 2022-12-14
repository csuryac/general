
#!/bin/bash
kubectl get ns | grep -i supplychain | awk '{print $1}' | tail -n +2 > namespaces.txt
for word in $(cat namespaces.txt)
do
        if kubectl get pods -n $word > /dev/null 2>&1
        then
                for i in $(echo `kubectl get pods -n $word | awk '$5 != "0" {print $0}' | awk 'FNR>=2 {print $1"," $4"," $5}'`); do echo $word",$i" >> podDetail.csv; done;
        fi
done
tableStart="<html>
<h2>Pods Count of Supply Chain K8 Cluster</h2>
<style>
table {
    border-spacing: 0;
    width: 80%;
    border: 1px solid #ddd;
}
th, td {
    text-align: left;
    padding: 1px;
}
tr:nth-child(even) {
    background-color: #f2f2f2
}
</style>
<BR>
<HTML><table id='myTable'>
      <tr>
        <th>Namespace</th>
        <th>POD Name</th>
        <th>Restart Count</th>
        <th>Age</th>
     </tr>"

tableBody=""
while read INPUT ; do
        tableBody="${tableBody}<tr><td>${INPUT//,/</td><td>}</td></tr>"
done < podDetail.csv

tableEnd="</TABLE>
<script>
    function sortTable() {
      var table, rows, switching, i, x, y, shouldSwitch;
      table = document.getElementById('myTable');
      switching = true;
      while (switching) {
        switching = false;
        rows = table.rows;
        for (i = 1; i < (rows.length - 1); i++) {
          shouldSwitch = false;
          x = rows[i].getElementsByTagName('TD')[2];
          y = rows[i + 1].getElementsByTagName('TD')[2];
          if (Number(x.innerHTML) < Number(y.innerHTML)) {
            shouldSwitch = true;
            break;
          }
        }
        if (shouldSwitch) {
          rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
          switching = true;
        }
      }
    }
    </script>

<body onload='sortTable()'></body>
</HTML>"


emailBody=$tableStart$tableBody$tableEnd

echo ${emailBody} | mutt -e 'set content_type="text/javascript"' xyz@abc.com -s "Info - Pods Count in SupplyChain K8 Cluster"
