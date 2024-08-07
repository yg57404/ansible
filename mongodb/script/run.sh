db_name=admin
user=test
pass="$(openssl rand -base64 12)"

echo $pass

mongo <<EOF
use ${db_name}
db.createUser(
{
	user: "${user}",

	pwd: "password",

	roles:[
	{
		role: "read" , db:"${db_name}"}

    ]
})
EOF



# mongo --host 172.50.3.250 -u mongo-admin -p#dQBo#7^Rim# --authenticationDatabase admin <<EOF
# use quotes_engine;
# vvar collectionNames = db.getCollectionNames(), stats = [];
# collectionNames.forEach(function (n) { stats.push(db[n].stats()); });
# stats = stats.sort(function(a, b) { return b['size'] - a['size']; });
# for (var c in stats) { print(stats[c]['ns'] + ": " + stats[c]['size'] + " (" + stats[c]['storageSize'] + ")"); }
# EOF