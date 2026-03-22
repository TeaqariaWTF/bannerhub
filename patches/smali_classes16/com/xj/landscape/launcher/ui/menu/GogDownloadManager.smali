.class public Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager;
.super Ljava/lang/Object;

# BannerHub: GOG Gen 2 download pipeline entry point.
# startDownload(Context, GogGame, ProgressBar, TextView, Button) spawns a background
# thread that runs the full 7-step pipeline in GogDownloadManager$1.
# ProgressBar and statusTV are updated on the main thread via Handler as pipeline
# progresses (5% → 20% → 40% → 45% → 85% → 90% → 100% "✓ Complete").


.method public static startDownload(Landroid/content/Context;Lcom/xj/landscape/launcher/ui/menu/GogGame;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 7

    # Move all params into consecutive locals v1..v6 so range invoke works cleanly
    new-instance v0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$1;
    move-object v1, p0  # Context
    move-object v2, p1  # GogGame
    move-object v3, p2  # ProgressBar
    move-object v4, p3  # TextView (statusTV)
    move-object v5, p4  # Button (launch)
    move-object v6, p5  # TextView (checkmark)
    invoke-direct/range {v0 .. v6}, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$1;-><init>(Landroid/content/Context;Lcom/xj/landscape/launcher/ui/menu/GogGame;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
