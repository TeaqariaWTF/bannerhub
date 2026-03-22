.class public final Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;
.super Ljava/lang/Object;

# BannerHub: View$OnClickListener on the Install button in each GOG game card.
# Shows a "Download Game" confirmation dialog with download size + available space.
# On "Download": hides Install button, shows ProgressBar + statusTV, starts download.
# (GogGamesFragment$8 is the dialog's positive-button listener.)

.implements Landroid/view/View$OnClickListener;

.field public final a:Landroid/content/Context;
.field public final b:Lcom/xj/landscape/launcher/ui/menu/GogGame;
.field public final c:Landroid/widget/ProgressBar;
.field public final d:Landroid/widget/TextView;  # statusTV
.field public final e:Landroid/widget/Button;    # launch button
.field public final f:Landroid/widget/TextView;  # checkmark ("✓ Installed")


.method public constructor <init>(Landroid/content/Context;Lcom/xj/landscape/launcher/ui/menu/GogGame;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->a:Landroid/content/Context;
    iput-object p2, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->b:Lcom/xj/landscape/launcher/ui/menu/GogGame;
    iput-object p3, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->c:Landroid/widget/ProgressBar;
    iput-object p4, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->d:Landroid/widget/TextView;
    iput-object p5, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->e:Landroid/widget/Button;
    iput-object p6, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->f:Landroid/widget/TextView;

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 15
    # .locals 15 → p0=v15 (4-bit accessible), p1=v16 (needs move-object/from16)
    # locals v0-v14; range invoke uses {v8..v14} for $8 ctor (7 args)

    # ── Load fields ───────────────────────────────────────────────────────────
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->a:Landroid/content/Context;
    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->b:Lcom/xj/landscape/launcher/ui/menu/GogGame;
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->c:Landroid/widget/ProgressBar;
    iget-object v3, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->d:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->e:Landroid/widget/Button;

    # ── Compute fileSizeMB from GogGame.fileSize (long J) ─────────────────────
    iget-wide v5, v1, Lcom/xj/landscape/launcher/ui/menu/GogGame;->fileSize:J  # v5+v6
    const-wide/32 v7, 0x100000    # 1048576L (1 MB) — v7+v8
    div-long v5, v5, v7            # v5+v6 = fileSize / 1048576
    long-to-int v5, v5             # v5 = fileSizeMB (int)

    # ── Compute availableGB from StatFs(filesDir) ──────────────────────────────
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v6
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6          # v6 = path String

    new-instance v7, Landroid/os/StatFs;
    invoke-direct {v7, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBytes()J
    move-result-wide v6            # v6+v7 = available bytes

    const-wide/32 v8, 0x40000000  # 1073741824L (1 GB) — v8+v9
    div-long v6, v6, v8            # v6+v7 = availableGB (long)
    long-to-int v6, v6             # v6 = availableGB (int)

    # ── Build message string ───────────────────────────────────────────────────
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download Size: "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, " MB\nAvailable Space: "
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, " GB"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5          # v5 = message string (v6..v13 free for $8 range)

    # ── Create $8 listener (range invoke: v6=this v7..v13=args) ───────────────
    # p1 (install button View) = v16 with .locals 15; use move-object/from16
    new-instance v6, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;
    move-object v7, v0             # context
    move-object v8, v1             # GogGame
    move-object/from16 v9, p1      # install button (View clicked) — p1=v16
    move-object v10, v2            # ProgressBar
    move-object v11, v3            # statusTV
    move-object v12, v4            # launch Button
    iget-object v13, p0, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$6;->f:Landroid/widget/TextView;
    invoke-direct/range {v6 .. v13}, Lcom/xj/landscape/launcher/ui/menu/GogGamesFragment$8;-><init>(Landroid/content/Context;Lcom/xj/landscape/launcher/ui/menu/GogGame;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    # ── Build and show AlertDialog ─────────────────────────────────────────────
    new-instance v9, Landroid/app/AlertDialog$Builder;
    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v10, "Download Game"
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v10, "Cancel"
    const/4 v11, 0x0
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v10, "Download"
    invoke-virtual {v9, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
