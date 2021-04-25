.class Lcom/shun/hack/MainFileManager$13;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shun/hack/MainFileManager;->alertAksi(ZLjava/lang/String;)V
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
    .line 715
    iput-object p1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 718
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1300(Lcom/shun/hack/MainFileManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Text"

    aput-object v2, v0, v1

    const-string v1, "Intent"

    aput-object v1, v0, v4

    const-string v1, "Main INANG.."

    aput-object v1, v0, v5

    .line 721
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 722
    const-string v2, "Pilih Aksi"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 723
    new-instance v2, Lcom/shun/hack/MainFileManager$13$1;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$13$1;-><init>(Lcom/shun/hack/MainFileManager$13;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 757
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    if-ne p2, v4, :cond_4

    .line 760
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "Pindah"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Paste HERE"

    aput-object v1, v0, v4

    goto :goto_0

    .line 764
    :cond_2
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "Paste HERE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 767
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1300(Lcom/shun/hack/MainFileManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 769
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 771
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sukses"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 772
    const-string v0, ""

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 773
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Pindah"

    aput-object v2, v0, v1

    .line 774
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Copy"

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_1
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$800(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    const-string v1, ""

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 778
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Pindah"

    aput-object v2, v1, v4

    .line 779
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Copy"

    aput-object v2, v1, v5

    .line 780
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 783
    :cond_3
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v4, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v4}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/shun/hack/MainFileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 786
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 791
    :cond_4
    if-ne p2, v5, :cond_7

    .line 792
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "Copy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 793
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 794
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Paste HERE"

    aput-object v1, v0, v5

    goto/16 :goto_0

    .line 796
    :cond_5
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "Paste HERE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1300(Lcom/shun/hack/MainFileManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 801
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 803
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sukses"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 804
    const-string v0, ""

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 805
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Pindah"

    aput-object v2, v0, v1

    .line 806
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v0, v0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Copy"

    aput-object v2, v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 817
    :goto_2
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$800(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 808
    :catch_2
    move-exception v0

    .line 809
    const-string v1, ""

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 810
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Pindah"

    aput-object v2, v1, v4

    .line 811
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, v1, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Copy"

    aput-object v2, v1, v5

    .line 812
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 815
    :cond_6
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {}, Lcom/shun/hack/MainFileManager;->access$1800()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v4, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v4}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/shun/hack/MainFileManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 820
    :cond_7
    if-ne p2, v1, :cond_8

    .line 822
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 823
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v2}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shun/hack/MainFileManager;->access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$800(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 824
    :catch_3
    move-exception v0

    .line 825
    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR hapus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 828
    :cond_8
    const/4 v0, 0x4

    if-ne p2, v0, :cond_9

    .line 829
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$800(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 833
    :cond_9
    const/4 v0, 0x5

    if-ne p2, v0, :cond_a

    .line 834
    new-instance v0, Lcom/shun/hack/Installer;

    invoke-direct {v0}, Lcom/shun/hack/Installer;-><init>()V

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/hasil.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shun/hack/Installer;->compressFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 836
    :cond_a
    const/4 v0, 0x6

    if-ne p2, v0, :cond_b

    .line 837
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v0}, Lcom/shun/hack/MainFileManager;->finish()V

    goto/16 :goto_0

    .line 839
    :cond_b
    const/4 v0, 0x7

    if-ne p2, v0, :cond_c

    .line 840
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/MainFileManager;->access$1700(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 842
    :cond_c
    const/16 v0, 0x8

    if-ne p2, v0, :cond_d

    .line 843
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, " Shell"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 844
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shun/hack/MainFileManager;->access$300(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :cond_d
    const/16 v0, 0x9

    if-ne p2, v0, :cond_e

    .line 847
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-virtual {v0}, Lcom/shun/hack/MainFileManager;->alertEdit()V

    goto/16 :goto_0

    .line 849
    :cond_e
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v1}, Lcom/shun/hack/MainFileManager;->access$1400(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shun/hack/MainFileManager$13;->this$0:Lcom/shun/hack/MainFileManager;

    invoke-static {v3}, Lcom/shun/hack/MainFileManager;->access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
