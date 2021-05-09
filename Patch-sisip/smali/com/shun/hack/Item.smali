.class Lcom/shun/hack/Item;
.super Ljava/lang/Object;
.source "MainFileManager.java"

# interfaces
.implements Lcom/shun/hack/SortItem;


# instance fields
.field private header:Ljava/lang/String;

.field private imageId:I

.field private subheader:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput p1, p0, Lcom/shun/hack/Item;->imageId:I

    .line 992
    iput-object p2, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    .line 993
    iput-object p3, p0, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    .line 994
    iput p4, p0, Lcom/shun/hack/Item;->type:I

    .line 995
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/shun/hack/Item;->imageId:I

    return v0
.end method

.method public getSortField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getSubheader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/shun/hack/Item;->type:I

    return v0
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    .line 1007
    return-void
.end method

.method public setImageId(I)V
    .locals 0

    .prologue
    .line 1022
    iput p1, p0, Lcom/shun/hack/Item;->imageId:I

    .line 1023
    return-void
.end method

.method public setSubheader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    .line 1015
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 998
    iput p1, p0, Lcom/shun/hack/Item;->type:I

    .line 999
    return-void
.end method
