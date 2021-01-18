.class public Lcom/google/firebase/database/snapshot/ChildrenNode;
.super Ljava/lang/Object;
.source "ChildrenNode.java"

# interfaces
.implements Lcom/google/firebase/database/snapshot/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;,
        Lcom/google/firebase/database/snapshot/ChildrenNode$NamedNodeIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static NAME_ONLY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final children:Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;"
        }
    .end annotation
.end field

.field private lazyHash:Ljava/lang/String;

.field private final priority:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildrenNode$1;

    invoke-direct {v0}, Lcom/google/firebase/database/snapshot/ChildrenNode$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/snapshot/ChildrenNode;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/google/firebase/database/snapshot/ChildrenNode;->NAME_ONLY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->emptyMap(Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 82
    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method

.method protected constructor <init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create empty ChildrenNode with priority!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    .line 90
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-void
.end method

.method private static addIndentation(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, " "

    .line 404
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private toString(Ljava/lang/StringBuilder;I)V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "{ }"

    .line 410
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    const-string v0, "{\n"

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "\n"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    add-int/lit8 v3, p2, 0x2

    .line 414
    invoke-static {p1, v3}, Lcom/google/firebase/database/snapshot/ChildrenNode;->addIndentation(Ljava/lang/StringBuilder;I)V

    .line 415
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 416
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v4, :cond_1

    .line 418
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildrenNode;

    .line 419
    invoke-direct {v1, p1, v3}, Lcom/google/firebase/database/snapshot/ChildrenNode;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 421
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x2

    .line 426
    invoke-static {p1, v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->addIndentation(Ljava/lang/StringBuilder;I)V

    const-string v0, ".priority="

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_3
    invoke-static {p1, p2}, Lcom/google/firebase/database/snapshot/ChildrenNode;->addIndentation(Ljava/lang/StringBuilder;I)V

    const-string p2, "}"

    .line 432
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/database/snapshot/Node;)I
    .locals 4

    .line 332
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 333
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 338
    :cond_1
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    .line 341
    :cond_2
    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 343
    :cond_3
    sget-object v0, Lcom/google/firebase/database/snapshot/Node;->MAX_NODE:Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/ChildrenNode;->compareTo(Lcom/google/firebase/database/snapshot/Node;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 359
    :cond_1
    instance-of v2, p1, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-nez v2, :cond_2

    return v0

    .line 362
    :cond_2
    check-cast p1, Lcom/google/firebase/database/snapshot/ChildrenNode;

    .line 363
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 365
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v3}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    return v0

    .line 368
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 369
    iget-object p1, p1, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 370
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 371
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 372
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 374
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_6
    return v0

    .line 378
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    .line 379
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Something went wrong internally."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEachChild(Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;)V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->forEachChild(Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;Z)V

    return-void
.end method

.method public forEachChild(Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    new-instance v0, Lcom/google/firebase/database/snapshot/ChildrenNode$2;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/snapshot/ChildrenNode$2;-><init>(Lcom/google/firebase/database/snapshot/ChildrenNode;Lcom/google/firebase/database/snapshot/ChildrenNode$ChildVisitor;)V

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;)V

    goto :goto_1

    .line 259
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p2, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;)V

    :goto_1
    return-void
.end method

.method public getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 245
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 249
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method public getFirstChildKey()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->getMinKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 206
    sget-object v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->lazyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 6

    .line 173
    sget-object v0, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    if-ne p1, v0, :cond_7

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    const-string v1, ":"

    if-nez v0, :cond_0

    const-string v0, "priority:"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    sget-object v2, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V1:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-interface {v0, v2}, Lcom/google/firebase/database/snapshot/Node;->getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 185
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_2

    .line 186
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 189
    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 192
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 200
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 174
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hashes on children nodes only supported for V1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 234
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object p1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    return-object p1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    return-object p1

    .line 239
    :cond_1
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p1

    return-object p1
.end method

.method public getLastChildKey()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->getMaxKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public getPredecessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/snapshot/ChildKey;

    return-object p1
.end method

.method public getPriority()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public getSuccessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/snapshot/ChildKey;

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 10

    .line 115
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v8}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v8

    .line 125
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v7, p1}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_1

    .line 129
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v2, :cond_2

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x30

    if-ne v7, v9, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    invoke-static {v8}, Lcom/google/firebase/database/core/utilities/Utilities;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 133
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_3

    .line 134
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v6, :cond_1

    .line 135
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    if-eqz v5, :cond_6

    mul-int/lit8 v4, v4, 0x2

    if-ge v6, v4, :cond_6

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-gt v3, v6, :cond_5

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object p1

    :cond_6
    if-eqz p1, :cond_7

    .line 154
    iget-object p1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 155
    iget-object p1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, ".priority"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 388
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/NamedNode;

    mul-int/lit8 v1, v1, 0x1f

    .line 389
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x11

    .line 390
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildrenNode$NamedNodeIterator;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/snapshot/ChildrenNode$NamedNodeIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildrenNode$NamedNodeIterator;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->reverseIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/snapshot/ChildrenNode$NamedNodeIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 398
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/snapshot/ChildrenNode;->toString(Ljava/lang/StringBuilder;I)V

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2

    .line 287
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 290
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p0, p2}, Lcom/google/firebase/database/snapshot/ChildrenNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 294
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    .line 295
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/snapshot/ChildrenNode;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2

    .line 311
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, p2}, Lcom/google/firebase/database/snapshot/ChildrenNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 315
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 318
    :cond_1
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 319
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 321
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 323
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p1

    return-object p1

    .line 325
    :cond_3
    new-instance p1, Lcom/google/firebase/database/snapshot/ChildrenNode;

    iget-object p2, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/database/snapshot/ChildrenNode;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/snapshot/Node;)V

    return-object p1
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p1

    return-object p1

    .line 227
    :cond_0
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/ChildrenNode;->children:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/ChildrenNode;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method
