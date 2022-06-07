# Whatsapp protocol definitions

These `.proto` files were found in whatsapp .apk files from versions from 2.22.6.7 until 2.22.13.5.

I think it was an accidental inclusion of these files by whatsapp.
But interesting for research purposes none the less.

I used the [create-proto-repo.sh](create-proto-repo.sh) script to create this repo from the .apk files. It takes care that the apk files are processed in the right order, and sets the commit timestamps according the the timestamps from the apk files.
So you can see the development progress by whatsapp in it's protocol by looking at the git history.

The apk files were downloaded from [https://apkcombo.com/](https://apkcombo.com/)

# whatsmeow

Another way of getting the whatsapp protocol files, is from the web.whatsapp.com site.
By using [this](https://github.com/tulir/whatsmeow/tree/main/binary/proto/extract) method by [whatsmeow](https://github.com/tulir/whatsmeow/), (originally by [sigalor](https://github.com/sigalor/whatsapp-web-reveng)).


