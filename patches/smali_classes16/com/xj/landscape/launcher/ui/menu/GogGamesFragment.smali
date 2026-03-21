.class public Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;
.super Landroidx/fragment/app/Fragment;

# BannerHub: GOG Games tab fragment.
# Displays the signed-in user's GOG game library fetched from
# embed.gog.com/account/getFilteredProducts?mediaType=1&sortBy=title
# using the access_token stored in bh_gog_prefs SharedPreferences.
# If not logged in, shows a prompt to sign in via the GOG side menu option.

.field public statusView:Landroid/widget/TextView;
.field public scrollView:Landroid/widget/ScrollView;
.field public gameListLayout:Landroid/widget/LinearLayout;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# ── onCreateView: build UI programmatically ───────────────────────────────────
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    # v0 = context
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;
    move-result-object v0

    # Root FrameLayout — dark background
    new-instance v1, Landroid/widget/FrameLayout;
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
    const v2, 0xFF0D0D0D
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    # Status TextView (loading / not-logged-in / error)
    new-instance v2, Landroid/widget/TextView;
    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v3, "Loading GOG games..."
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v3, 0xFFCCCCCC
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    const/16 v3, 0x11  # Gravity.CENTER
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V
    iput-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;->statusView:Landroid/widget/TextView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x1  # MATCH_PARENT
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # ScrollView (hidden until games loaded)
    new-instance v2, Landroid/widget/ScrollView;
    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
    const/16 v3, 0x8  # GONE
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    iput-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;->scrollView:Landroid/widget/ScrollView;

    # Inner LinearLayout — vertical list of game TextViews
    new-instance v3, Landroid/widget/LinearLayout;
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v4, 0x1  # VERTICAL
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V
    iput-object v3, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;->gameListLayout:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x1  # MATCH_PARENT
    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # Add ScrollView to root
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x1
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # Initial content load
    invoke-virtual {p0}, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;->refreshContent()V

    return-object v1
.end method


# ── onResume: re-check login when returning from GOG side menu ────────────────
.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;->refreshContent()V

    return-void
.end method


# ── refreshContent: check SP login state, show prompt or start fetch ──────────
.method public refreshContent()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;
    move-result-object v0
    if-eqz v0, :done

    const-string v1, "bh_gog_prefs"
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v1

    const-string v2, "access_token"
    const/4 v3, 0x0
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2  # accessToken or null

    if-eqz v2, :not_logged_in

    # Logged in — show "Loading..." and start fetch thread
    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;->statusView:Landroid/widget/TextView;
    if-eqz v1, :start_thread
    const-string v3, "Loading GOG games..."
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/4 v3, 0x0  # VISIBLE
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;->scrollView:Landroid/widget/ScrollView;
    if-eqz v1, :start_thread
    const/16 v3, 0x8  # GONE
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :start_thread
    new-instance v1, Ljava/lang/Thread;
    new-instance v3, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$1;
    invoke-direct {v3, p0, v2}, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$1;-><init>(Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;Ljava/lang/String;)V
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    goto :done

    :not_logged_in
    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;->statusView:Landroid/widget/TextView;
    if-eqz v1, :hide_scroll
    const-string v3, "Sign in via the GOG option in the side menu"
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/4 v3, 0x0  # VISIBLE
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :hide_scroll
    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment;->scrollView:Landroid/widget/ScrollView;
    if-eqz v1, :done
    const/16 v3, 0x8  # GONE
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :done
    return-void
.end method
