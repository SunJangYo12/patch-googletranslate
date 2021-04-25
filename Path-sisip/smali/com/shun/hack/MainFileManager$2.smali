.class Lcom/shun/hack/MainFileManager$2;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shun/hack/MainFileManager;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Patch Settings"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Custom path"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Shell"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Close"

    aput-object v2, v0, v1

    .line 255
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    const-string v2, "Pilih Aksi"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 258
    new-instance v2, Lcom/shun/hack/MainFileManager$2$1;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$2$1;-><init>(Lcom/shun/hack/MainFileManager$2;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 273
    return-void
.end method
