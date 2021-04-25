.class Lcom/shun/hack/MainFileManager$11$1;
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
    .line 656
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$11$1;->this$1:Lcom/shun/hack/MainFileManager$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11$1;->this$1:Lcom/shun/hack/MainFileManager$11;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/shun/hack/MainFileManager;->access$900(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V

    .line 659
    return-void
.end method
