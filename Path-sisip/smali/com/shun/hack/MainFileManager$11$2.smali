.class Lcom/shun/hack/MainFileManager$11$2;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager$11;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shun/hack/MainFileManager$11;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$11;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$11$2;->this$1:Lcom/shun/hack/MainFileManager$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 670
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11$2;->this$1:Lcom/shun/hack/MainFileManager$11;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$11$2;->this$1:Lcom/shun/hack/MainFileManager$11;

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$11$2;->this$1:Lcom/shun/hack/MainFileManager$11;

    iget-object v3, v3, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$700(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shun/hack/MainFileManager;->access$900(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    .line 671
    return-void
.end method
