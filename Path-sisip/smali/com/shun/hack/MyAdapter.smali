.class Lcom/shun/hack/MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shun/hack/MyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private li:Landroid/view/LayoutInflater;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shun/hack/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shun/hack/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 917
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    .line 918
    if-eqz p2, :cond_0

    .line 919
    iput-object p2, p0, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    .line 921
    :cond_0
    iput-object p1, p0, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    .line 922
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shun/hack/MyAdapter;->li:Landroid/view/LayoutInflater;

    .line 923
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 934
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v4, -0x2

    .line 938
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 939
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 940
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 943
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 945
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 946
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 948
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 950
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 951
    const-string v4, "#040404"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 952
    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 953
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 955
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/shun/hack/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 956
    const-string v5, "#040404"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 957
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 958
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 960
    iget-object v0, p0, Lcom/shun/hack/MyAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shun/hack/Item;

    .line 962
    invoke-virtual {v0}, Lcom/shun/hack/Item;->getImageId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 963
    invoke-virtual {v0}, Lcom/shun/hack/Item;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    invoke-virtual {v0}, Lcom/shun/hack/Item;->getSubheader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    return-object v1
.end method
