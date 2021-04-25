.class public Lcom/coba;
.super Ljava/lang/Object;
.source "coba.java"


# static fields
.field public static isFileWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/coba;->isFileWrite:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    const-string v0, "shunTranSer"

    invoke-static {p0, v0}, Lcom/shun/hack/memori/SharedMemori;->getStaticSharedMemori(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sput-boolean v1, Lcom/coba;->isFileWrite:Z

    .line 27
    const-string v0, "Translate from file"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    const-string v0, "/sdcard/patch_translete_in.txt"

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->readText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/coba;->orib(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 47
    const-string v0, "shunNetwork"

    invoke-static {p0, v0}, Lcom/shun/hack/memori/SharedMemori;->getStaticSharedMemori(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/coba;->orid(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static orib(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    const-string v0, "ini dari clipoard"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 20
    const-string v0, "oke"

    return-object v0
.end method

.method public static orid(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public classAc(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/shun/hack/MainFileManager;

    invoke-direct {v0}, Lcom/shun/hack/MainFileManager;-><init>()V

    const-string v1, "this text to translate"

    invoke-virtual {v0, p1, v1}, Lcom/shun/hack/MainFileManager;->intentActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public final writeFroma(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/coba;->isFileWrite:Z

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "/sdcard/patch_translete_out.txt"

    invoke-static {v0, p1}, Lcom/shun/hack/MainFileManager;->writeText(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method
