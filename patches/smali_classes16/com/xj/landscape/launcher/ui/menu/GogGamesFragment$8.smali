.class public final Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;
.super Ljava/lang/Object;

# BannerHub: DialogInterface$OnClickListener for the "Download" button in the
# size-confirmation dialog shown when user taps Install on a GOG game card.
# Hides the Install button, shows ProgressBar + statusTV, then calls startDownload.

.implements Landroid/content/DialogInterface$OnClickListener;

.field public final a:Landroid/content/Context;
.field public final b:Lcom/xj/landscape/launcher/ui/menu/GogGame;
.field public final c:Landroid/view/View;          # Install button (to GONE)
.field public final d:Landroid/widget/ProgressBar;
.field public final e:Landroid/widget/TextView;    # statusTV
.field public final f:Landroid/widget/Button;      # launch button


.method public constructor <init>(Landroid/content/Context;Lcom/xj/landscape/launcher/ui/menu/GogGame;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->a:Landroid/content/Context;
    iput-object p2, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->b:Lcom/xj/landscape/launcher/ui/menu/GogGame;
    iput-object p3, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->c:Landroid/view/View;
    iput-object p4, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->d:Landroid/widget/ProgressBar;
    iput-object p5, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->e:Landroid/widget/TextView;
    iput-object p6, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->f:Landroid/widget/Button;

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    # Hide the Install button
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->c:Landroid/view/View;
    const/16 v1, 0x8  # GONE
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    # Show ProgressBar (resets to 0, visible)
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->d:Landroid/widget/ProgressBar;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V  # VISIBLE

    # Show statusTV + set initial text
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->e:Landroid/widget/TextView;
    const-string v1, "Starting download..."
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/4 v1, 0x0  # VISIBLE
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    # Call GogDownloadManager.startDownload
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->a:Landroid/content/Context;
    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->b:Lcom/xj/landscape/launcher/ui/menu/GogGame;
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->d:Landroid/widget/ProgressBar;
    iget-object v3, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->e:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;->f:Landroid/widget/Button;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager;->startDownload(Landroid/content/Context;Lcom/xj/landscape/launcher/ui/menu/GogGame;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;)V

    return-void
.end method
