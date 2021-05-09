.class Lcom/shun/hack/MainFileManager$5;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->alertApkPatch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shun/hack/MainFileManager;

.field final synthetic val$shMemori:Lcom/shun/hack/memori/SharedMemori;

.field final synthetic val$swTelnet:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/memori/SharedMemori;Landroid/widget/Switch;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$5;->this$0:Lcom/shun/hack/MainFileManager;

    iput-object p2, p0, Lcom/shun/hack/MainFileManager$5;->val$shMemori:Lcom/shun/hack/memori/SharedMemori;

    iput-object p3, p0, Lcom/shun/hack/MainFileManager$5;->val$swTelnet:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 335
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$5;->val$shMemori:Lcom/shun/hack/memori/SharedMemori;

    const-string v1, "shunTelnet"

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$5;->val$swTelnet:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/shun/hack/memori/SharedMemori;->setSharedMemori(Ljava/lang/String;Z)V

    .line 336
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$5;->val$shMemori:Lcom/shun/hack/memori/SharedMemori;

    const-string v1, "shunTelnet"

    invoke-virtual {v0, v1}, Lcom/shun/hack/memori/SharedMemori;->getSharedMemori(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$5;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Translate default from cliboard"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$5;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Translate from Telnet use remote: telnet <ip> 9090"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
