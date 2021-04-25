.class Lcom/shun/hack/MainFileManager$11;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->getPressListener()Landroid/widget/AdapterView$OnItemClickListener;
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
    .line 645
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$602(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shun/hack/Item;

    invoke-static {v1, v0}, Lcom/shun/hack/MainFileManager;->access$702(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/Item;)Lcom/shun/hack/Item;

    .line 651
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$700(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shun/hack/Item;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 677
    :goto_0
    return-void

    .line 654
    :pswitch_0
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$700(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$800(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1000(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/shun/hack/MainFileManager$11$1;

    invoke-direct {v1, p0}, Lcom/shun/hack/MainFileManager$11$1;-><init>(Lcom/shun/hack/MainFileManager$11;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 663
    :pswitch_1
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1100(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$800(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :pswitch_2
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$700(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$1200(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$11;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1000(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/shun/hack/MainFileManager$11$2;

    invoke-direct {v1, p0}, Lcom/shun/hack/MainFileManager$11$2;-><init>(Lcom/shun/hack/MainFileManager$11;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
