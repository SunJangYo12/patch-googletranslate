.class Lcom/shun/hack/MainFileManager$13$1;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shun/hack/MainFileManager$13;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$13;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 736
    if-nez p2, :cond_1

    .line 737
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1500(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1400(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    if-ne p2, v2, :cond_3

    .line 740
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_2

    .line 745
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 746
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v0, "data"

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v2, v2, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string v0, "android.intent.extra.TITLE"

    const-string v2, "\u0427\u0442\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c?"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v0, v1}, Lcom/shun/hack/MainFileManager;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    goto :goto_0

    .line 756
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v2, v2, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v1, v0}, Lcom/shun/hack/MainFileManager;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 761
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13$1;->this$1:Lcom/shun/hack/MainFileManager$13;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$1700(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
