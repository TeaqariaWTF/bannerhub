.class public final Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$2;
.super Ljava/lang/Object;

# BannerHub: Toast Runnable — posts Toast.show() to the main thread.
# Used by GogDownloadManager$1.showToast() via Handler(Looper.getMainLooper()).post().

.implements Ljava/lang/Runnable;

.field public final a:Landroid/content/Context;
.field public final b:Ljava/lang/String;


.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$2;->a:Landroid/content/Context;
    iput-object p2, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$2;->b:Ljava/lang/String;

    return-void
.end method


.method public run()V
    .locals 3

    # p0=v3=this
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$2;->a:Landroid/content/Context;
    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$2;->b:Ljava/lang/String;

    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
