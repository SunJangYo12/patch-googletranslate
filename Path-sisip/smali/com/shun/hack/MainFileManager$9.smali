.class Lcom/shun/hack/MainFileManager$9;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->alertShell(Landroid/content/Context;Ljava/lang/String;)V
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
    .line 446
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$9;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/shun/hack/MainFileManager;->access$300(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    return-void
.end method
