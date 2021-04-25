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
    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iput p1, p0, Lcom/shun/hack/Item;->imageId:I

    .line 982
    iput-object p2, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    .line 983
    iput-object p3, p0, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    .line 984
    iput p4, p0, Lcom/shun/hack/Item;->type:I

    .line 985
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/shun/hack/Item;->imageId:I

    return v0
.end method

.method public getSortField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getSubheader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lcom/shun/hack/Item;->type:I

    return v0
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/shun/hack/Item;->header:Ljava/lang/String;

    .line 997
    return-void
.end method

.method public setImageId(I)V
    .locals 0

    .prologue
    .line 1012
    iput p1, p0, Lcom/shun/hack/Item;->imageId:I

    .line 1013
    return-void
.end method

.method public setSubheader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/shun/hack/Item;->subheader:Ljava/lang/String;

    .line 1005
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 988
    iput p1, p0, Lcom/shun/hack/Item;->type:I

    .line 989
    return-void
.end method
