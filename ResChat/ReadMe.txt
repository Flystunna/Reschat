If you want to run this project on your PC.


1.	Make a Database
2.	Run "FullSQLScript.sql" to your database. Make a sure that Database name is same , in my
	case, my database name is "UserDB". Alternatively you can run 4 individual SQL (sql1.sql,
	Sql2.sql, Sql3.sql, Sql4.sql) but please maintain the sequence.

3.	Setup Connection String. if you don't know how to setup, here is small Tutorial.

		=>	connectionString = "Server=##Server-Name##; Database=##DATABASE-NAME##; User ID=##USER-ID##;Password=##Password## ;Integrated Security=True;"

			->replace the all ##All-content## with your one.
			->if you want Windows authentication, just cut the User ID & Password and  if you want User ID & Password system login, you can remove "Integrated Security=True".
			->Fill Up the connectionString to Web.Config

		Example:(in my case):
				connectionString = "Server=RITWICK\LOCALSQLSERVER; Database=UserDB; User ID=sa; Password=●●●●●●●●●●"


4.	And All setup is completed, Lets run it :)