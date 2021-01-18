.class public Lcom/google/firebase/database/core/view/filter/IndexedFilter;
.super Ljava/lang/Object;
.source "IndexedFilter.java"

# interfaces
.implements Lcom/google/firebase/database/core/view/filter/NodeFilter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/snapshot/Index;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    return-void
.end method


# virtual methods
.method public filtersNodes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()Lcom/google/firebase/database/snapshot/Index;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method public getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .locals 0

    return-object p0
.end method

.method public updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 2

    .line 42
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    .line 43
    invoke-interface {p5, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 45
    invoke-interface {v0, p4}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {p3, p4}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p4

    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-ne p4, v1, :cond_0

    return-object p1

    :cond_0
    if-eqz p6, :cond_3

    .line 59
    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 60
    invoke-interface {p5, p2}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 61
    invoke-static {p2, v0}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 67
    invoke-static {p2, p3}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p2, p3, v0}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 72
    :cond_3
    :goto_0
    invoke-interface {p5}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4

    return-object p1

    .line 76
    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    return-object p1
.end method

.method public updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 4

    if-eqz p3, :cond_4

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 86
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v1

    .line 87
    invoke-virtual {p3, v1}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 93
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 95
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v1

    .line 96
    invoke-virtual {p3, v1}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v1

    .line 100
    invoke-virtual {p3, v1}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 1

    .line 111
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 114
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    return-object p1
.end method
