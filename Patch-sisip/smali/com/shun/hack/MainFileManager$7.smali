.class Lcom/shun/hack/MainFileManager$7;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->alertEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shun/hack/MainFileManager;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    iput-object p2, p0, Lcom/shun/hack/MainFileManager$7;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 380
    :try_start_0
    new-instance v0, Lcom/shun/hack/FileUtils;

    invoke-direct {v0}, Lcom/shun/hack/FileUtils;-><init>()V

    iget-object v0, p0, Lcom/shun/hack/MainFileManager$7;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shun/hack/FileUtils;->saveCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$7;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
