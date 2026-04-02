.class public final Lcom/xj/game/UninstallGameHelper;
.super Ljava/lang/Object;
.source "r8-map-id-712846b76e3224c0169ce621759774aea144e14d75c3fb3c733f7f2b03c1bb19"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xj/game/UninstallGameHelper$GameFrom;,
        Lcom/xj/game/UninstallGameHelper$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final a:Lcom/xj/game/UninstallGameHelper;

.field public static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/xj/game/UninstallGameHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/xj/game/UninstallGameHelper;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/xj/game/UninstallGameHelper;->a:Lcom/xj/game/UninstallGameHelper;

    .line 8
    .line 9
    new-instance v0, Lcom/xj/game/e;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/xj/game/e;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcom/xj/game/UninstallGameHelper;->b:Lkotlin/Lazy;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/xj/game/repository/GameLibraryRepository;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/xj/game/UninstallGameHelper;->r()Lcom/xj/game/repository/GameLibraryRepository;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/xj/game/UninstallGameHelper;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/xj/game/UninstallGameHelper;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/xj/game/UninstallGameHelper;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/xj/game/UninstallGameHelper;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/xj/game/UninstallGameHelper;)Lcom/xj/game/repository/GameLibraryRepository;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xj/game/UninstallGameHelper;->o()Lcom/xj/game/repository/GameLibraryRepository;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/xj/game/UninstallGameHelper;Lcom/xj/common/service/bean/GameDetailEntity;Lcom/xj/game/UninstallGameHelper$GameFrom;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/xj/game/UninstallGameHelper;->q(Lcom/xj/common/service/bean/GameDetailEntity;Lcom/xj/game/UninstallGameHelper$GameFrom;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r()Lcom/xj/game/repository/GameLibraryRepository;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/xj/game/repository/GameLibraryRepository;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/xj/game/repository/GameLibraryRepository;-><init>()V

    .line 6
    return-object v0
.end method

.method public static synthetic t(Lcom/xj/game/UninstallGameHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x8

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move v4, p4

    .line 11
    move-object v5, p5

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/xj/game/UninstallGameHelper;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p2, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;

    .line 8
    .line 9
    iget v1, v0, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;-><init>(Lcom/xj/game/UninstallGameHelper;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    :goto_0
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    iget v1, v0, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;->label:I

    .line 33
    const/4 v2, 0x1

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    sget-object p0, Lcom/xj/game/SteamGameManager;->a:Lcom/xj/game/SteamGameManager;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    iput-object v1, v0, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput v2, v0, Lcom/xj/game/UninstallGameHelper$checkIsSteamGameDownloadBySteamService$1;->label:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/xj/game/SteamGameManager;->B(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    if-ne p0, p2, :cond_3

    .line 73
    return-object p2

    .line 74
    .line 75
    :cond_3
    :goto_1
    check-cast p0, Lcom/xj/game/entity/UserSteamGameState;

    .line 76
    .line 77
    sget-object p1, Lcom/xj/game/entity/UserSteamGameState;->Downloaded:Lcom/xj/game/entity/UserSteamGameState;

    .line 78
    .line 79
    if-eq p0, p1, :cond_5

    .line 80
    .line 81
    sget-object p1, Lcom/xj/game/entity/UserSteamGameState;->InDownloadQueue:Lcom/xj/game/entity/UserSteamGameState;

    .line 82
    .line 83
    if-ne p0, p1, :cond_4

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/4 v2, 0x0

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public final g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p2, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;

    .line 8
    .line 9
    iget v1, v0, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;-><init>(Lcom/xj/game/UninstallGameHelper;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    :goto_0
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    iget v1, v0, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;->label:I

    .line 33
    const/4 v2, 0x1

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    const-class p0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Lcom/therouter/TheRouter;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    check-cast p0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 65
    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    iput-object v1, v0, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    iput v2, v0, Lcom/xj/game/UninstallGameHelper$deleteDownloadOnlineGame$1;->label:I

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, p1, v0}, Lcom/xj/winemu/api/bean/IWinEmuService;->y(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    if-ne p0, p2, :cond_3

    .line 81
    return-object p2

    .line 82
    .line 83
    :cond_3
    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    move-result p0

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const/4 p0, 0x0

    .line 90
    .line 91
    .line 92
    :goto_2
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    # BH: delete orphaned virtual container directory for this game
    invoke-static {p1}, Lcom/xj/winemu/sidebar/BhContainerCleanup;->cleanup(Ljava/lang/String;)V

    .line 1
    .line 2
    const-class p0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/therouter/TheRouter;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1, p2}, Lcom/xj/winemu/api/bean/IWinEmuService;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    return-object p0

    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    return-object p0

    .line 25
    .line 26
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    return-object p0
.end method

.method public final i(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p2, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;

    .line 8
    .line 9
    iget v1, v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;-><init>(Lcom/xj/game/UninstallGameHelper;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    :goto_0
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    iget v1, v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;->label:I

    .line 33
    const/4 v2, 0x1

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    :try_start_1
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 59
    .line 60
    sget-object p0, Lcom/xj/game/UninstallGameHelper;->a:Lcom/xj/game/UninstallGameHelper;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    iput-object v1, v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;->L$0:Ljava/lang/Object;

    .line 67
    const/4 v1, 0x0

    .line 68
    .line 69
    iput v1, v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;->I$0:I

    .line 70
    .line 71
    iput v2, v0, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocal$1;->label:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/xj/game/UninstallGameHelper;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    if-ne p0, p2, :cond_3

    .line 78
    return-object p2

    .line 79
    .line 80
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    .line 88
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 89
    .line 90
    .line 91
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    if-eqz p0, :cond_4

    .line 103
    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    const-string p2, "deleteIfGameCoverInLocal failure : "

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    .line 121
    const-string p1, "UninstallGameHelper"

    .line 122
    .line 123
    .line 124
    invoke-static {p1, p0}, Lcom/xj/common/utils/XjLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 127
    return-object p0
.end method

.method public final j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result p0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    const-class p0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/therouter/TheRouter;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    check-cast p0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Lcom/xj/winemu/api/bean/IWinEmuService;->x()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object p0, v0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x2

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p0, v1, v2, v0}, Lkotlin/text/StringsKt;->f0(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 35
    move-result p0

    .line 36
    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    return-object p0

    .line 41
    .line 42
    :cond_2
    new-instance p0, Ljava/io/File;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    return-object p0

    .line 55
    .line 56
    :cond_3
    new-instance p1, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocalInternal$2;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p0, v0}, Lcom/xj/game/UninstallGameHelper$deleteIfGameCoverInLocalInternal$2;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2}, Lcom/drake/net/utils/SuspendKt;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    if-ne p0, p1, :cond_4

    .line 70
    return-object p0

    .line 71
    .line 72
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    return-object p0

    .line 74
    .line 75
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    return-object p0
.end method

.method public final k(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    const-class p0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/therouter/TheRouter;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/xj/winemu/api/bean/IWinEmuService;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1, p2}, Lcom/xj/winemu/api/bean/IWinEmuService;->k(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    return-object p0

    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    return-object p0

    .line 25
    .line 26
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    return-object p0
.end method

.method public final l(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p0

    .line 11
    .line 12
    const-class p1, Lcom/xj/common/service/ISteamGameService;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/therouter/TheRouter;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/xj/common/service/ISteamGameService;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p0, p2}, Lcom/xj/common/service/ISteamGameService;->C(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    if-ne p0, p1, :cond_0

    .line 31
    return-object p0

    .line 32
    .line 33
    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    .line 35
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    return-object p0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-instance p0, Lcom/xj/game/UninstallGameHelper$getGameEntityInfo$2;

    .line 3
    const/4 p3, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/xj/game/UninstallGameHelper$getGameEntityInfo$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p4}, Lcom/drake/net/utils/SuspendKt;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final n(Lcom/xj/common/service/bean/GameDetailEntity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    instance-of v0, p3, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;

    .line 8
    .line 9
    iget v1, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p3}, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;-><init>(Lcom/xj/game/UninstallGameHelper;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->label:I

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    if-eq v2, v6, :cond_3

    .line 41
    .line 42
    if-eq v2, v5, :cond_2

    .line 43
    .line 44
    if-ne v2, v4, :cond_1

    .line 45
    .line 46
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Ljava/lang/String;

    .line 49
    .line 50
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lcom/xj/common/service/bean/GameDetailEntity;

    .line 53
    .line 54
    .line 55
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0

    .line 66
    .line 67
    :cond_2
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$1:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Ljava/lang/String;

    .line 70
    .line 71
    iget-object p1, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lcom/xj/common/service/bean/GameDetailEntity;

    .line 74
    .line 75
    .line 76
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_3
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$1:Ljava/lang/Object;

    .line 81
    move-object p2, p0

    .line 82
    .line 83
    check-cast p2, Ljava/lang/String;

    .line 84
    .line 85
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$0:Ljava/lang/Object;

    .line 86
    move-object p1, p0

    .line 87
    .line 88
    check-cast p1, Lcom/xj/common/service/bean/GameDetailEntity;

    .line 89
    .line 90
    .line 91
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    if-nez p1, :cond_5

    .line 98
    return-object v3

    .line 99
    .line 100
    :cond_5
    iput-object p1, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object p3

    .line 105
    .line 106
    iput-object p3, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$1:Ljava/lang/Object;

    .line 107
    .line 108
    iput v6, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->label:I

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p2, v0}, Lcom/xj/game/UninstallGameHelper;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    move-result-object p3

    .line 113
    .line 114
    if-ne p3, v1, :cond_6

    .line 115
    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :cond_6
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    move-result p0

    .line 123
    .line 124
    if-eqz p0, :cond_7

    .line 125
    .line 126
    sget-object v3, Lcom/xj/game/UninstallGameHelper$GameFrom;->DOWNLOAD_FROM_STEAM_SVR:Lcom/xj/game/UninstallGameHelper$GameFrom;

    .line 127
    .line 128
    goto/16 :goto_6

    .line 129
    .line 130
    :cond_7
    sget-object p0, Lcom/xj/game/repository/GameLibraryRepository;->c:Lcom/xj/game/repository/GameLibraryRepository$Companion;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/xj/common/service/bean/GameDetailEntity;->getLocalGameId()Ljava/lang/String;

    .line 134
    move-result-object p3

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p3}, Lcom/xj/game/repository/GameLibraryRepository$Companion;->a(Ljava/lang/String;)Z

    .line 138
    move-result p0

    .line 139
    .line 140
    if-eqz p0, :cond_a

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/xj/common/service/bean/GameDetailEntity;->getSteam_game_info()Ljava/lang/String;

    .line 144
    move-result-object p0

    .line 145
    .line 146
    if-eqz p0, :cond_9

    .line 147
    .line 148
    .line 149
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 150
    move-result p0

    .line 151
    .line 152
    if-nez p0, :cond_8

    .line 153
    goto :goto_2

    .line 154
    .line 155
    :cond_8
    sget-object v3, Lcom/xj/game/UninstallGameHelper$GameFrom;->IMPORT_BY_STEAM_TOOL:Lcom/xj/game/UninstallGameHelper$GameFrom;

    .line 156
    .line 157
    goto/16 :goto_6

    .line 158
    .line 159
    :cond_9
    :goto_2
    sget-object v3, Lcom/xj/game/UninstallGameHelper$GameFrom;->IMPORT_BY_USER:Lcom/xj/game/UninstallGameHelper$GameFrom;

    .line 160
    .line 161
    goto/16 :goto_6

    .line 162
    .line 163
    :cond_a
    sget-object p0, Lcom/xj/common/utils/GHDemoGameStateMgr;->c:Lcom/xj/common/utils/GHDemoGameStateMgr$Companion;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/xj/common/utils/GHDemoGameStateMgr$Companion;->a()Lcom/xj/common/utils/GHDemoGameStateMgr;

    .line 167
    move-result-object p3

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/xj/common/service/bean/GameDetailEntity;->getId()I

    .line 171
    move-result v2

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 175
    move-result-object v2

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, v2}, Lcom/xj/common/utils/GHDemoGameStateMgr;->f(Ljava/lang/String;)Z

    .line 179
    move-result p3

    .line 180
    .line 181
    if-nez p3, :cond_d

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/xj/common/utils/GHDemoGameStateMgr$Companion;->a()Lcom/xj/common/utils/GHDemoGameStateMgr;

    .line 185
    move-result-object p3

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/xj/common/service/bean/GameDetailEntity;->getId()I

    .line 189
    move-result v2

    .line 190
    .line 191
    .line 192
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, v2}, Lcom/xj/common/utils/GHDemoGameStateMgr;->d(Ljava/lang/String;)Z

    .line 197
    move-result p3

    .line 198
    .line 199
    if-nez p3, :cond_d

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/xj/common/utils/GHDemoGameStateMgr$Companion;->a()Lcom/xj/common/utils/GHDemoGameStateMgr;

    .line 203
    move-result-object p0

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/xj/common/service/bean/GameDetailEntity;->getId()I

    .line 207
    move-result p3

    .line 208
    .line 209
    .line 210
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 211
    move-result-object p3

    .line 212
    .line 213
    iput-object p1, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$0:Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-result-object v2

    .line 218
    .line 219
    iput-object v2, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$1:Ljava/lang/Object;

    .line 220
    .line 221
    iput v5, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->label:I

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, p3, v0}, Lcom/xj/common/utils/GHDemoGameStateMgr;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 225
    move-result-object p3

    .line 226
    .line 227
    if-ne p3, v1, :cond_b

    .line 228
    goto :goto_4

    .line 229
    :cond_b
    move-object p0, p2

    .line 230
    .line 231
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 235
    move-result p2

    .line 236
    .line 237
    if-nez p2, :cond_d

    .line 238
    .line 239
    sget-object p2, Lcom/xj/common/utils/GHDemoGameStateMgr;->c:Lcom/xj/common/utils/GHDemoGameStateMgr$Companion;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Lcom/xj/common/utils/GHDemoGameStateMgr$Companion;->a()Lcom/xj/common/utils/GHDemoGameStateMgr;

    .line 243
    move-result-object p2

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/xj/common/service/bean/GameDetailEntity;->getId()I

    .line 247
    move-result p3

    .line 248
    .line 249
    .line 250
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 251
    move-result-object p3

    .line 252
    .line 253
    .line 254
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-result-object p1

    .line 256
    .line 257
    iput-object p1, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$0:Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    move-result-object p0

    .line 262
    .line 263
    iput-object p0, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->L$1:Ljava/lang/Object;

    .line 264
    .line 265
    iput v4, v0, Lcom/xj/game/UninstallGameHelper$getGameFrom$1;->label:I

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p3, v0}, Lcom/xj/common/utils/GHDemoGameStateMgr;->h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 269
    move-result-object p3

    .line 270
    .line 271
    if-ne p3, v1, :cond_c

    .line 272
    :goto_4
    return-object v1

    .line 273
    .line 274
    :cond_c
    :goto_5
    check-cast p3, Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 278
    move-result p0

    .line 279
    .line 280
    if-eqz p0, :cond_e

    .line 281
    .line 282
    :cond_d
    sget-object v3, Lcom/xj/game/UninstallGameHelper$GameFrom;->DOWNLOAD_FROM_SVR:Lcom/xj/game/UninstallGameHelper$GameFrom;

    .line 283
    .line 284
    :cond_e
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    const-string p1, "isNeed2UninstallGame , from = "

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object p0

    .line 300
    .line 301
    const-string p1, "UninstallGameHelper"

    .line 302
    .line 303
    .line 304
    invoke-static {p1, p0}, Lcom/xj/common/utils/XjLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-object v3
.end method

.method public final o()Lcom/xj/game/repository/GameLibraryRepository;
    .locals 0

    .line 1
    .line 2
    sget-object p0, Lcom/xj/game/UninstallGameHelper;->b:Lkotlin/Lazy;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/xj/game/repository/GameLibraryRepository;

    .line 9
    return-object p0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    instance-of v0, p4, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;

    .line 8
    .line 9
    iget v1, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;-><init>(Lcom/xj/game/UninstallGameHelper;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->label:I

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eq v2, v5, :cond_2

    .line 40
    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$3:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lcom/xj/common/service/bean/GameDetailEntity;

    .line 46
    .line 47
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$2:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Ljava/lang/String;

    .line 50
    .line 51
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Ljava/lang/String;

    .line 54
    .line 55
    iget-object p0, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    goto :goto_3

    .line 62
    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0

    .line 70
    .line 71
    :cond_2
    iget-object p1, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$2:Ljava/lang/Object;

    .line 72
    move-object p3, p1

    .line 73
    .line 74
    check-cast p3, Ljava/lang/String;

    .line 75
    .line 76
    iget-object p1, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$1:Ljava/lang/Object;

    .line 77
    move-object p2, p1

    .line 78
    .line 79
    check-cast p2, Ljava/lang/String;

    .line 80
    .line 81
    iget-object p1, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object p4

    .line 95
    .line 96
    iput-object p4, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object p4

    .line 101
    .line 102
    iput-object p4, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object p3, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$2:Ljava/lang/Object;

    .line 105
    .line 106
    iput v5, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->label:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xj/game/UninstallGameHelper;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 110
    move-result-object p4

    .line 111
    .line 112
    if-ne p4, v1, :cond_4

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_4
    :goto_1
    check-cast p4, Lcom/xj/common/service/bean/GameDetailEntity;

    .line 116
    .line 117
    if-nez p4, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    iput-object p1, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    iput-object p1, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$1:Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    iput-object p1, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$2:Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    iput-object p1, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->L$3:Ljava/lang/Object;

    .line 147
    .line 148
    iput v4, v0, Lcom/xj/game/UninstallGameHelper$isNeed2UninstallGame$1;->label:I

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p4, p3, v0}, Lcom/xj/game/UninstallGameHelper;->n(Lcom/xj/common/service/bean/GameDetailEntity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    move-result-object p4

    .line 153
    .line 154
    if-ne p4, v1, :cond_6

    .line 155
    :goto_2
    return-object v1

    .line 156
    .line 157
    :cond_6
    :goto_3
    check-cast p4, Lcom/xj/game/UninstallGameHelper$GameFrom;

    .line 158
    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    const-string p1, "isNeed2UninstallGame , from = "

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 175
    .line 176
    const-string p1, "UninstallGameHelper"

    .line 177
    .line 178
    .line 179
    invoke-static {p1, p0}, Lcom/xj/common/utils/XjLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    if-eqz p4, :cond_7

    .line 182
    .line 183
    sget-object p0, Lcom/xj/game/UninstallGameHelper$GameFrom;->IMPORT_BY_USER:Lcom/xj/game/UninstallGameHelper$GameFrom;

    .line 184
    .line 185
    if-eq p4, p0, :cond_7

    .line 186
    move v3, v5

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 190
    move-result-object p0

    .line 191
    return-object p0
.end method

.method public final q(Lcom/xj/common/service/bean/GameDetailEntity;Lcom/xj/game/UninstallGameHelper$GameFrom;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "realUninstallGame , from = "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, " , gameId = "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, " , steamAppId = "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "UninstallGameHelper"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/xj/common/utils/XjLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    sget-object v0, Lcom/xj/game/UninstallGameHelper$WhenMappings;->a:[I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 44
    move-result p2

    .line 45
    .line 46
    aget p2, v0, p2

    .line 47
    const/4 v0, 0x1

    .line 48
    .line 49
    if-eq p2, v0, :cond_7

    .line 50
    const/4 p3, 0x2

    .line 51
    .line 52
    if-eq p2, p3, :cond_4

    .line 53
    const/4 p1, 0x3

    .line 54
    .line 55
    if-eq p2, p1, :cond_2

    .line 56
    const/4 p1, 0x4

    .line 57
    .line 58
    if-ne p2, p1, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p4, p5}, Lcom/xj/game/UninstallGameHelper;->l(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    if-ne p0, p1, :cond_0

    .line 72
    return-object p0

    .line 73
    .line 74
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    return-object p0

    .line 76
    .line 77
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 81
    throw p0

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p4, p5}, Lcom/xj/game/UninstallGameHelper;->k(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    if-ne p0, p1, :cond_3

    .line 95
    return-object p0

    .line 96
    .line 97
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    return-object p0

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/xj/common/service/bean/GameDetailEntity;->getLocalGameIconPath()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    .line 104
    if-eqz p0, :cond_6

    .line 105
    .line 106
    .line 107
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 108
    move-result p0

    .line 109
    .line 110
    if-nez p0, :cond_5

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_5
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/xj/common/service/bean/GameDetailEntity;->getLocalGameIconPath()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    .line 119
    .line 120
    invoke-static {p0}, Lcom/blankj/utilcode/util/FileUtils;->m(Ljava/lang/String;)Z

    .line 121
    move-result p0

    .line 122
    .line 123
    .line 124
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 125
    move-result-object p0

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    .line 132
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 136
    move-result-object p0

    .line 137
    .line 138
    .line 139
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    :cond_6
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 142
    return-object p0

    .line 143
    .line 144
    .line 145
    :cond_7
    invoke-virtual {p0, p3, p5}, Lcom/xj/game/UninstallGameHelper;->u(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 146
    move-result-object p0

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    if-ne p0, p1, :cond_8

    .line 153
    return-object p0

    .line 154
    .line 155
    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    return-object p0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/xj/game/UninstallGameHelper$uninstallGame$2;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v4, p4

    .line 8
    .line 9
    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/xj/game/UninstallGameHelper$uninstallGame$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p5}, Lcom/drake/net/utils/SuspendKt;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    return-object p0

    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    return-object p0
.end method

.method public final u(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    .line 1
    .line 2
    new-instance p0, Lcom/xj/game/UninstallGameHelper$uninstallPcDemoGame$2;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/xj/game/UninstallGameHelper$uninstallPcDemoGame$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p2}, Lcom/drake/net/utils/SuspendKt;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->g()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    return-object p0
.end method
