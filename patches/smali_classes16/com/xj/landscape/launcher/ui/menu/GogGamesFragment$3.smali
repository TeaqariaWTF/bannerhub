.class public final Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$3;
.super Ljava/lang/Object;

# BannerHub: OnClickListener for each game title TextView in GogGamesFragment.
# Shows a Toast with the selected game title.

.implements Landroid/view/View$OnClickListener;

.field public final a:Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;
.field public final b:Ljava/lang/String;  # game title


.method public constructor <init>(Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$3;->a:Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;
    iput-object p2, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$3;->b:Ljava/lang/String;

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$3;->a:Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;
    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$3;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;
    move-result-object v0

    if-eqz v0, :done

    const/4 v2, 0x0  # Toast.LENGTH_SHORT
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :done
    return-void
.end method
