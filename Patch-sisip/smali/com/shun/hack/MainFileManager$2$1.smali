.class Lcom/shun/hack/MainFileManager$2$1;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shun/hack/MainFileManager$2;


# direct methods
.method constructor <init>(Lcom/shun/hack/MainFileManager$2;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$2$1;->this$1:Lcom/shun/hack/MainFileManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 271
    if-nez p2, :cond_1

    .line 272
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$2$1;->this$1:Lcom/shun/hack/MainFileManager$2;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$2$1;->this$1:Lcom/shun/hack/MainFileManager$2;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$100(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$2$1;->this$1:Lcom/shun/hack/MainFileManager$2;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$2$1;->this$1:Lcom/shun/hack/MainFileManager$2;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$200(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V

    goto :goto_0

    .line 277
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$2$1;->this$1:Lcom/shun/hack/MainFileManager$2;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$2$1;->this$1:Lcom/shun/hack/MainFileManager$2;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager$2;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cat /system/build.prop"

    invoke-static {v0, v1, v2}, Lcom/shun/hack/MainFileManager;->access$300(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
