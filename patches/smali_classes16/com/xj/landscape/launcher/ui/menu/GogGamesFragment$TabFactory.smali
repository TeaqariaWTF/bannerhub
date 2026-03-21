.class public final Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$TabFactory;
.super Ljava/lang/Object;

# BannerHub: Function0<Fragment> factory for the GOG Games tab.
# Passed to TabItemData constructor; invoke() returns a new GogGamesFragment.

.implements Lkotlin/jvm/functions/Function0;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;
    invoke-direct {v0}, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;-><init>()V

    return-object v0
.end method
