.class public Lcom/xj/landscape/launcher/ui/menu/GogGame;
.super Ljava/lang/Object;

# BannerHub: Data holder for a single GOG game fetched from
# api.gog.com/products/{id}?expand=downloads,description
# imageUrl is already https:-prefixed and CDN-suffix-appended.
# storeUrl is https://www.gog.com/game/{slug}

.field public title:Ljava/lang/String;
.field public imageUrl:Ljava/lang/String;
.field public gameId:Ljava/lang/String;
.field public storeUrl:Ljava/lang/String;
.field public category:Ljava/lang/String;
.field public description:Ljava/lang/String;
.field public developer:Ljava/lang/String;
.field public fileSize:J  # download size in bytes (from downloads.installers[].total_size)


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
