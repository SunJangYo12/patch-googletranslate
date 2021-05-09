.class Lcom/shun/hack/MainFileManager$8;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->alertCustomPath(Landroid/content/Context;)V
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
    .line 408
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$8;->this$0:Lcom/shun/hack/MainFileManager;

    iput-object p2, p0, Lcom/shun/hack/MainFileManager$8;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$8;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$8;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$8;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V

    .line 412
    return-void
.end method
