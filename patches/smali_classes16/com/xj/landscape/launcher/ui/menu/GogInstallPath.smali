.class public Lcom/xj/landscape/launcher/ui/menu/GogInstallPath;
.super Ljava/lang/Object;

# BannerHub: GOG game install path helper.
# GOG games are installed at:
#   {Context.getFilesDir()}/gog_games/{installDirectory}/
# This is a sibling to the files/Steam/ directory, keeping all
# game data at the same level and away from the Wine prefix internals.
# installDirectory comes from the GOG build manifest (content-system API).


.method public static getInstallDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    # v0 = Context.getFilesDir()  (e.g. /data/data/<pkg>/files)
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v0

    # v2 = new File(filesDir, "gog_games")
    const-string v1, "gog_games"
    new-instance v2, Ljava/io/File;
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # v0 = new File(gogGamesDir, installDirectory)
    new-instance v0, Ljava/io/File;
    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

