.class public final Lcom/xj/winemu/sidebar/BhHudExtraDetailListener;
.super Ljava/lang/Object;
.source "SourceFile"

# OnCheckedChangeListener for the "Extra Detailed" checkbox below the Winlator HUD switch.
# Saves the hud_extra_detail boolean to bh_prefs.
# BhFrameRating reads this pref on its own 1-second cycle and updates visibility automatically.

.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;

# instance fields
.field public final a:Landroid/content/Context;

# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/xj/winemu/sidebar/BhHudExtraDetailListener;->a:Landroid/content/Context;
    return-void
.end method

# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    # p1 = CompoundButton (unused)
    # p2 = isChecked (new state)

    # Save "hud_extra_detail" pref
    iget-object v0, p0, Lcom/xj/winemu/sidebar/BhHudExtraDetailListener;->a:Landroid/content/Context;
    const-string v1, "bh_prefs"
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v1
    const-string v2, "hud_extra_detail"
    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
