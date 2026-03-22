.class public final Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;
.super Ljava/lang/Object;

# BannerHub: UI-thread Runnable posted by GogDownloadManager$1 to update the
# card-level ProgressBar and statusTV during download.
# progress 0-99: setProgress on bar + setText on statusTV (if message non-null).
# progress >= 100: hide bar + hide statusTV + show+enable Launch button + show checkmark.

.implements Ljava/lang/Runnable;

.field public final a:Landroid/widget/ProgressBar;
.field public final b:Landroid/widget/TextView;   # statusTV
.field public final c:Landroid/widget/Button;     # launch button
.field public final d:I                           # progress (0-100)
.field public final e:Ljava/lang/String;          # status message (may be null)
.field public final f:Landroid/widget/TextView;   # checkmark ("✓ Installed")


.method public constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;ILjava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->a:Landroid/widget/ProgressBar;
    iput-object p2, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->b:Landroid/widget/TextView;
    iput-object p3, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->c:Landroid/widget/Button;
    iput p4, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->d:I
    iput-object p5, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->e:Ljava/lang/String;
    iput-object p6, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->f:Landroid/widget/TextView;

    return-void
.end method


.method public run()V
    .locals 3

    # Update ProgressBar
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->a:Landroid/widget/ProgressBar;
    iget v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->d:I
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    # Update statusTV if message non-null
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->e:Ljava/lang/String;
    if-eqz v2, :no_msg
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->b:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :no_msg

    # If progress >= 100: hide bar + statusTV, show+enable Launch button
    iget v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->d:I
    const/16 v0, 0x64
    if-lt v1, v0, :run_done

    # Hide ProgressBar
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->a:Landroid/widget/ProgressBar;
    const/16 v1, 0x8  # GONE
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    # Hide statusTV
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->b:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    # Show + enable Launch button
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->c:Landroid/widget/Button;
    if-eqz v0, :show_checkmark
    const/4 v1, 0x0  # VISIBLE
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const/4 v1, 0x1  # enabled
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :show_checkmark
    # Show checkmark ("✓ Installed") on the card
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/GogDownloadManager$3;->f:Landroid/widget/TextView;
    if-eqz v2, :run_done
    const/4 v0, 0x0  # VISIBLE
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :run_done
    return-void
.end method
