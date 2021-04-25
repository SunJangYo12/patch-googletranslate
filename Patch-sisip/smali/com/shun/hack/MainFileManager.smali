.class public Lcom/shun/hack/MainFileManager;
.super Landroid/app/Activity;
.source "MainFileManager.java"


# static fields
.field public static getTransResultTelnet:Ljava/lang/String; = null

.field public static isTransResultTelnet:Z = false

.field private static final tag:Ljava/lang/String; = "MainFileManager"

.field private static tmpCloneFie:Ljava/lang/String;

.field private static tmpEdt:Ljava/lang/String;


# instance fields
.field public aksiVar:[Ljava/lang/String;

.field private alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

.field private btn:Landroid/widget/Button;

.field private chooseFile:Z

.field private context:Landroid/content/Context;

.field private currPath:Ljava/lang/String;

.field private edt:Landroid/widget/EditText;

.field private folder:Z

.field private fullPath:Landroid/widget/TextView;

.field private it:Lcom/shun/hack/Item;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shun/hack/Item;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private mapExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private prevPath:Ljava/lang/String;

.field private settings:Landroid/content/SharedPreferences;

.field private shell:Lcom/shun/hack/init/ShellExecuter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/shun/hack/MainFileManager;->isTransResultTelnet:Z

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/shun/hack/MainFileManager;->getTransResultTelnet:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/shun/hack/MainFileManager;->tmpEdt:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/shun/hack/MainFileManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->alertApkPatch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/shun/hack/MainFileManager;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->calcBackPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->selectAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/shun/hack/MainFileManager;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/shun/hack/MainFileManager;->folder:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/init/ShellExecuter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/shun/hack/MainFileManager;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->shun(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->pwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/shun/hack/MainFileManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->alertCustomPath(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/shun/hack/MainFileManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/shun/hack/MainFileManager;->alertShell(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shun/hack/MainFileManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/shun/hack/MainFileManager;)Lcom/shun/hack/Item;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;

    return-object v0
.end method

.method static synthetic access$702(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/Item;)Lcom/shun/hack/Item;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->it:Lcom/shun/hack/Item;

    return-object p1
.end method

.method static synthetic access$800(Lcom/shun/hack/MainFileManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/shun/hack/MainFileManager;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/shun/hack/MainFileManager;->alertAksi(ZLjava/lang/String;)V

    return-void
.end method

.method private alertAksi(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 711
    iput-object p2, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    .line 712
    iput-boolean p1, p0, Lcom/shun/hack/MainFileManager;->folder:Z

    .line 713
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 714
    const-string v1, "Pilih Aksi"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 715
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    new-instance v2, Lcom/shun/hack/MainFileManager$13;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$13;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 854
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 855
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 857
    return-void
.end method

.method private alertApkPatch(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 280
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 281
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    const-string v1, "Alice apk patch: paksa berhenti untuk perubahan"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 285
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 286
    new-instance v2, Lcom/shun/hack/memori/SharedMemori;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/shun/hack/memori/SharedMemori;-><init>(Landroid/content/Context;)V

    .line 288
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 289
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 290
    const-string v4, "Network"

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 291
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 292
    const-string v5, "File Translate"

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 293
    new-instance v5, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 294
    const-string v6, "Telnet Translate"

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v6, Lcom/shun/hack/MainFileManager$3;

    invoke-direct {v6, p0, v2, v3}, Lcom/shun/hack/MainFileManager$3;-><init>(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/memori/SharedMemori;Landroid/widget/Switch;)V

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const-string v6, "shunNetwork"

    invoke-virtual {v2, v6}, Lcom/shun/hack/memori/SharedMemori;->getSharedMemori(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 309
    new-instance v6, Lcom/shun/hack/MainFileManager$4;

    invoke-direct {v6, p0, v2, v4}, Lcom/shun/hack/MainFileManager$4;-><init>(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/memori/SharedMemori;Landroid/widget/Switch;)V

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const-string v6, "shunTranSer"

    invoke-virtual {v2, v6}, Lcom/shun/hack/memori/SharedMemori;->getSharedMemori(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 322
    new-instance v6, Lcom/shun/hack/MainFileManager$5;

    invoke-direct {v6, p0, v2, v5}, Lcom/shun/hack/MainFileManager$5;-><init>(Lcom/shun/hack/MainFileManager;Lcom/shun/hack/memori/SharedMemori;Landroid/widget/Switch;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const-string v6, "shunTelnet"

    invoke-virtual {v2, v6}, Lcom/shun/hack/memori/SharedMemori;->getSharedMemori(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 335
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 340
    const-string v1, "Close"

    new-instance v2, Lcom/shun/hack/MainFileManager$6;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$6;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 349
    return-void
.end method

.method private alertCustomPath(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 381
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    const-string v1, "Alice Custompath"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 388
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    const-string v2, "/sdcard"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 396
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 398
    const-string v2, "Read"

    new-instance v3, Lcom/shun/hack/MainFileManager$8;

    invoke-direct {v3, p0, v1}, Lcom/shun/hack/MainFileManager$8;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 407
    return-void
.end method

.method private alertShell(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/16 v7, 0x1f4

    const/4 v8, -0x1

    const/4 v11, -0x2

    .line 410
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 411
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 412
    const-string v1, "Alice shell"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 414
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 415
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 416
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 417
    new-instance v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 418
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 420
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 421
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 422
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x50

    invoke-direct {v8, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 423
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 424
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 426
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 434
    const-string v6, " Run"

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 435
    const-string v6, " Clear"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual {v3, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-virtual {v3, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 440
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 441
    invoke-virtual {v2, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 446
    new-instance v2, Lcom/shun/hack/MainFileManager$9;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$9;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    new-instance v2, Lcom/shun/hack/MainFileManager$10;

    invoke-direct {v2, p0, v1}, Lcom/shun/hack/MainFileManager$10;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 476
    return-void
.end method

.method private calcBackPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 863
    :goto_0
    return-object v0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    const-string v0, ""

    goto :goto_0
.end method

.method private calcSize(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 591
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 592
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, " b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    :goto_0
    return-object v0

    .line 593
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 594
    long-to-float v0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->round(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, " Kb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 596
    :cond_1
    long-to-float v0, p1

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->round(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, " Mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 115
    .line 116
    const-string v0, "shunNetwork"

    invoke-static {p0, v0}, Lcom/shun/hack/memori/SharedMemori;->getStaticSharedMemori(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    .line 121
    :cond_0
    invoke-static {p0}, Lcom/shun/hack/MainFileManager;->orid(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 906
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLongPressListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 683
    new-instance v0, Lcom/shun/hack/MainFileManager$12;

    invoke-direct {v0, p0}, Lcom/shun/hack/MainFileManager$12;-><init>(Lcom/shun/hack/MainFileManager;)V

    return-object v0
.end method

.method private getPressListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lcom/shun/hack/MainFileManager$11;

    invoke-direct {v0, p0}, Lcom/shun/hack/MainFileManager$11;-><init>(Lcom/shun/hack/MainFileManager;)V

    return-object v0
.end method

.method private initMapExt()V
    .locals 4

    .prologue
    const v3, 0x1080040

    .line 609
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".php"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".html"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".txt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".cfg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".conf"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".config"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".ini"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".sh"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".css"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".mp3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".amr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".wav"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".mid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".midi"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".ogg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".mp4"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".3gp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".apk"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".sql"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".doc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".docx"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".ico"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".jpg"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".bmp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".gif"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".png"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".pdf"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".ppt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".zip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".rar"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".tar"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".7z"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    const-string v1, ".jar"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    return-void
.end method

.method public static orid(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 127
    const-string v0, "/sdcard/log_sisip.txt"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    return v1
.end method

.method private pwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 867
    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readFolder(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 479
    const-string v0, "MainFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ls"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-l"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "-a"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 485
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 486
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ls"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "-a"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shun/hack/ServerUtils;->readFromProcess(Ljava/lang/Process;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 488
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string v1, "MainFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read ls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/shun/hack/log/L;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    .line 499
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 500
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 501
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    new-instance v1, Lcom/shun/hack/Item;

    const v2, 0x108003d

    const-string v8, ".."

    const-string v9, "Parent folder"

    const/4 v10, 0x3

    invoke-direct {v1, v2, v8, v9, v10}, Lcom/shun/hack/Item;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/shun/hack/MyAdapter;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/shun/hack/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 507
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 510
    :cond_2
    const/4 v1, 0x0

    .line 511
    array-length v8, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v8, :cond_7

    aget-object v0, v3, v2

    .line 512
    const-string v9, "\\s+"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 513
    const/4 v9, 0x0

    aget-object v9, v0, v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 514
    const/16 v10, 0x2d

    if-eq v9, v10, :cond_3

    const/16 v10, 0x64

    if-eq v9, v10, :cond_3

    const/16 v10, 0x6c

    if-eq v9, v10, :cond_3

    move v0, v1

    .line 511
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 517
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const/4 v10, 0x0

    aget-object v10, v0, v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/16 v10, 0x64

    if-eq v9, v10, :cond_4

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_5

    .line 520
    :cond_4
    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v0, v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    new-instance v0, Lcom/shun/hack/Item;

    const v9, 0x1080049

    aget-object v10, v4, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/shun/hack/Item;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :goto_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 523
    :cond_5
    const/4 v9, 0x4

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    aget-object v0, v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    aget-object v0, v4, v1

    invoke-static {v0}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    iget-object v9, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 533
    iget-object v9, p0, Lcom/shun/hack/MainFileManager;->mapExt:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 535
    :cond_6
    new-instance v0, Lcom/shun/hack/Item;

    const v9, 0x1080040

    aget-object v10, v4, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/shun/hack/Item;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 539
    :cond_7
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 540
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 541
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 542
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 544
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/shun/hack/MyAdapter;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/shun/hack/MainFileManager;->items:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/shun/hack/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 545
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static readText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const-string v0, "write empity file"

    invoke-static {p0, v0}, Lcom/shun/hack/MainFileManager;->writeText(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 139
    const/16 v2, 0x44c

    new-array v2, v2, [C

    .line 143
    :cond_1
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 145
    if-ltz v3, :cond_2

    .line 147
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :cond_2
    if-gez v3, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v0, "File not found (TODO)"

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    const-string v0, "IOException (TODO)"

    goto :goto_0
.end method

.method public static round(F)F
    .locals 2

    .prologue
    .line 604
    const v0, 0x3c23d70a    # 0.01f

    div-float v0, p0, v0

    float-to-int v0, v0

    .line 605
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private selectAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/shun/hack/MainFileManager;->chooseFile:Z

    if-eqz v0, :cond_1

    .line 872
    invoke-virtual {p0}, Lcom/shun/hack/MainFileManager;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 874
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/shun/hack/MainFileManager;->setResult(ILandroid/content/Intent;)V

    .line 875
    invoke-virtual {p0}, Lcom/shun/hack/MainFileManager;->finish()V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    invoke-static {p1}, Lcom/shun/hack/MainFileManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_0

    .line 881
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 882
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_2

    .line 885
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 886
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const-string v0, "data"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    const-string v0, "android.intent.extra.TITLE"

    const-string v2, "\u0427\u0442\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c?"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/shun/hack/MainFileManager;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    goto :goto_0

    .line 896
    :cond_2
    invoke-virtual {p0}, Lcom/shun/hack/MainFileManager;->alertEdit()V

    goto :goto_0
.end method

.method private shun(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 707
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shun/hack/MainFileManager;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 708
    return-void
.end method

.method public static writeText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0, p0}, Lcom/shun/hack/FileUtils;->saveCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public alertEdit()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 352
    new-instance v0, Lcom/shun/hack/init/ShellExecuter;

    invoke-direct {v0}, Lcom/shun/hack/init/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    .line 353
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    const-string v1, "Alice editor"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 356
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 357
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 361
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shun/hack/MainFileManager;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shun/hack/init/ShellExecuter;->Executer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 365
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 367
    const-string v2, "Save"

    new-instance v3, Lcom/shun/hack/MainFileManager$7;

    invoke-direct {v3, p0, v1}, Lcom/shun/hack/MainFileManager$7;-><init>(Lcom/shun/hack/MainFileManager;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 378
    return-void
.end method

.method public alertMan(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 190
    iput-object p1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 191
    new-instance v0, Lcom/shun/hack/init/ShellExecuter;

    invoke-direct {v0}, Lcom/shun/hack/init/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MainFileManager;->shell:Lcom/shun/hack/init/ShellExecuter;

    .line 193
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    const-string v2, "#16cedb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 197
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    .line 201
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 203
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->fullPath:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    .line 207
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    .line 211
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 212
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->edt:Landroid/widget/EditText;

    const-string v2, "bantuan"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    const-string v2, "Settings"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->settings:Landroid/content/SharedPreferences;

    .line 216
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Open..."

    aput-object v2, v1, v6

    .line 218
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v2, "Pindah"

    aput-object v2, v1, v7

    .line 219
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "Copy"

    aput-object v3, v1, v2

    .line 220
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "Delete!!"

    aput-object v3, v1, v2

    .line 221
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "Home"

    aput-object v3, v1, v2

    .line 222
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x5

    const-string v3, "Compress zip"

    aput-object v3, v1, v2

    .line 223
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "Exit"

    aput-object v3, v1, v2

    .line 224
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "Main inang"

    aput-object v3, v1, v2

    .line 225
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "Shell"

    aput-object v3, v1, v2

    .line 226
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "Edit"

    aput-object v3, v1, v2

    .line 227
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "Info file"

    aput-object v3, v1, v2

    .line 229
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->calcBackPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->prevPath:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->getPressListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->listView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->getLongPressListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 236
    invoke-direct {p0}, Lcom/shun/hack/MainFileManager;->initMapExt()V

    .line 237
    new-instance v1, Lcom/shun/hack/AlphabeticComparator;

    invoke-direct {v1}, Lcom/shun/hack/AlphabeticComparator;-><init>()V

    iput-object v1, p0, Lcom/shun/hack/MainFileManager;->alphabeticComparator:Lcom/shun/hack/AlphabeticComparator;

    .line 239
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    const-string v2, "Alice Manager"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 245
    const-string v0, "Close"

    new-instance v2, Lcom/shun/hack/MainFileManager$1;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$1;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    const-string v0, "Option"

    new-instance v2, Lcom/shun/hack/MainFileManager$2;

    invoke-direct {v2, p0}, Lcom/shun/hack/MainFileManager$2;-><init>(Lcom/shun/hack/MainFileManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 276
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->currPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/shun/hack/MainFileManager;->readFolder(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 550
    .line 553
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 558
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 559
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 561
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 564
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 565
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clone file ERROR! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    const-string v0, "Coba tekan open dahulu trus coba lagi"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 581
    const-string v0, ""

    sput-object v0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    .line 582
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Pindah"

    aput-object v1, v0, v5

    .line 583
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const-string v1, "Copy"

    aput-object v1, v0, v6

    .line 585
    :goto_1
    return-void

    .line 567
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 569
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 570
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 573
    const-string v0, "Clone file sukses"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 574
    const-string v0, ""

    sput-object v0, Lcom/shun/hack/MainFileManager;->tmpCloneFie:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Pindah"

    aput-object v2, v0, v1

    .line 576
    iget-object v0, p0, Lcom/shun/hack/MainFileManager;->aksiVar:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Copy"

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public intentActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shun/hack/MainFileManager;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    const-string v1, "key_text_to_be_translated"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 185
    invoke-virtual {p0}, Lcom/shun/hack/MainFileManager;->finish()V

    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iput-object p0, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    .line 59
    invoke-virtual {p0, p0}, Lcom/shun/hack/MainFileManager;->alertMan(Landroid/content/Context;)V

    .line 61
    invoke-static {p0}, Lcom/coba;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/shun/hack/MainFileManager;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    new-instance v0, Lcom/coba;

    invoke-direct {v0}, Lcom/coba;-><init>()V

    const-string v1, "sss"

    invoke-virtual {v0, v1}, Lcom/coba;->writeFroma(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p0}, Lcom/shun/hack/MainFileManager;->startTelnet(Landroid/content/Context;)V

    .line 67
    const-string v0, "sample result"

    invoke-virtual {p0, v0}, Lcom/shun/hack/MainFileManager;->setResultTelnet(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    return-void
.end method

.method public setResultTelnet(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/shun/hack/MainFileManager;->isTransResultTelnet:Z

    if-eqz v0, :cond_0

    .line 73
    sput-object p1, Lcom/shun/hack/MainFileManager;->getTransResultTelnet:Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method

.method public startNewTelnet()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/shun/hack/MainFileManager;->finish()V

    .line 80
    return-void
.end method

.method public startTelnet(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    const-string v0, "shunTelnet"

    invoke-static {p1, v0}, Lcom/shun/hack/memori/SharedMemori;->getStaticSharedMemori(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "Server telnet start"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    sput-boolean v1, Lcom/shun/hack/MainFileManager;->isTransResultTelnet:Z

    .line 88
    new-instance v0, Lcom/shun/hack/ServerThread;

    invoke-direct {v0}, Lcom/shun/hack/ServerThread;-><init>()V

    .line 89
    iput-object p1, v0, Lcom/shun/hack/ServerThread;->context:Landroid/content/Context;

    .line 90
    invoke-virtual {v0}, Lcom/shun/hack/ServerThread;->start()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/shun/hack/MainFileManager;->isTransResultTelnet:Z

    goto :goto_0
.end method
