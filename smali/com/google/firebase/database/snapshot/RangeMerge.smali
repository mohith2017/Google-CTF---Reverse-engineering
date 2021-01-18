.class public Lcom/google/firebase/database/snapshot/RangeMerge;
.super Ljava/lang/Object;
.source "RangeMerge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final optExclusiveStart:Lcom/google/firebase/database/core/Path;

.field private final optInclusiveEnd:Lcom/google/firebase/database/core/Path;

.field private final snap:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/RangeMerge;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/RangeMerge;->getOptExclusiveStart()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    new-instance v2, Lcom/google/firebase/database/core/Path;

    invoke-direct {v2, v0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/RangeMerge;->getOptInclusiveEnd()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v1, Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/util/List;)V

    :cond_1
    iput-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/RangeMerge;->getSnap()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    .line 40
    iput-object p3, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    return-void
.end method

.method private updateRangeInNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Path;->compareTo(Lcom/google/firebase/database/core/Path;)I

    move-result v0

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/Path;->compareTo(Lcom/google/firebase/database/core/Path;)I

    move-result v2

    .line 67
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 68
    :goto_2
    iget-object v5, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    if-eqz v5, :cond_3

    invoke-virtual {p1, v5}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-lez v0, :cond_4

    if-gez v2, :cond_4

    if-nez v4, :cond_4

    return-object p3

    :cond_4
    if-lez v0, :cond_5

    if-eqz v4, :cond_5

    .line 72
    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v5

    if-eqz v5, :cond_5

    return-object p3

    :cond_5
    if-lez v0, :cond_7

    if-nez v2, :cond_7

    .line 77
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 79
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p2

    :cond_7
    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    return-object p2

    .line 87
    :cond_9
    :goto_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 88
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 89
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 91
    :cond_a
    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 92
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 94
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 98
    :cond_c
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p2

    :cond_e
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 102
    invoke-interface {p2, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 105
    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    .line 106
    invoke-interface {p2, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 107
    invoke-interface {p3, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .line 104
    invoke-direct {p0, v4, v5, v6}, Lcom/google/firebase/database/snapshot/RangeMerge;->updateRangeInNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    if-eq v4, v3, :cond_e

    .line 110
    invoke-interface {v1, v2, v4}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    goto :goto_6

    :cond_f
    return-object v1
.end method


# virtual methods
.method public applyTo(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2

    .line 52
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/database/snapshot/RangeMerge;->updateRangeInNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method getEnd()Lcom/google/firebase/database/core/Path;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method getStart()Lcom/google/firebase/database/core/Path;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangeMerge{optExclusiveStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optExclusiveStart:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", optInclusiveEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->optInclusiveEnd:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/RangeMerge;->snap:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
