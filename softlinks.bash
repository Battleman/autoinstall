rmdir Templates
rmdir Desktop
rmdir Public
for i in Documents Downloads Music Pictures Public Videos Games
do
	rmdir $i 2> /dev/null
	ln -s "/storage/$i" "/home/battleman/$i"
done

for i in .ssh .mozilla .thunderbird
do
	rm -r $i 2>/dev/null
	ln -s "/storage/$i" "/home/battleman/$i"
done

for i in ISO nltk_data scikit_learn_data anaconda3
do
	ln -s "/storage/$i" "/home/battleman/$i"
done
