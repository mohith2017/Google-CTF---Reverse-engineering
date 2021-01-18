.class public final Lcom/google/firebase/database/core/view/QueryParams;
.super Ljava/lang/Object;
.source "QueryParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_PARAMS:Lcom/google/firebase/database/core/view/QueryParams;

.field private static final INDEX:Ljava/lang/String; = "i"

.field private static final INDEX_END_NAME:Ljava/lang/String; = "en"

.field private static final INDEX_END_VALUE:Ljava/lang/String; = "ep"

.field private static final INDEX_START_NAME:Ljava/lang/String; = "sn"

.field private static final INDEX_START_VALUE:Ljava/lang/String; = "sp"

.field private static final LIMIT:Ljava/lang/String; = "l"

.field private static final VIEW_FROM:Ljava/lang/String; = "vf"


# instance fields
.field private index:Lcom/google/firebase/database/snapshot/Index;

.field private indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

.field private indexEndValue:Lcom/google/firebase/database/snapshot/Node;

.field private indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

.field private indexStartValue:Lcom/google/firebase/database/snapshot/Node;

.field private jsonSerialization:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private viewFrom:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/firebase/database/core/view/QueryParams;

    invoke-direct {v0}, Lcom/google/firebase/database/core/view/QueryParams;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/google/firebase/database/core/view/QueryParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    .line 58
    iput-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 59
    iput-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    .line 60
    iput-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 62
    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 64
    iput-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->jsonSerialization:Ljava/lang/String;

    return-void
.end method

.method private copy()Lcom/google/firebase/database/core/view/QueryParams;
    .locals 2

    .line 130
    new-instance v0, Lcom/google/firebase/database/core/view/QueryParams;

    invoke-direct {v0}, Lcom/google/firebase/database/core/view/QueryParams;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    .line 132
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    iput-object v1, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    .line 133
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    iput-object v1, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 134
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    iput-object v1, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    .line 135
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    iput-object v1, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 136
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->viewFrom:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    iput-object v1, v0, Lcom/google/firebase/database/core/view/QueryParams;->viewFrom:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    .line 137
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    iput-object v1, v0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method public static fromQueryObject(Ljava/util/Map;)Lcom/google/firebase/database/core/view/QueryParams;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/database/core/view/QueryParams;"
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/google/firebase/database/core/view/QueryParams;

    invoke-direct {v0}, Lcom/google/firebase/database/core/view/QueryParams;-><init>()V

    const-string v1, "l"

    .line 255
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    const-string v2, "sp"

    .line 257
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 259
    invoke-static {v2}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/view/QueryParams;->normalizeValue(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    iput-object v2, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    const-string v2, "sn"

    .line 260
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 262
    invoke-static {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    iput-object v2, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    :cond_0
    const-string v2, "ep"

    .line 266
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 268
    invoke-static {v2}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/view/QueryParams;->normalizeValue(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    iput-object v2, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    const-string v2, "en"

    .line 269
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 271
    invoke-static {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    iput-object v2, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    :cond_1
    const-string v2, "vf"

    .line 275
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 277
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->LEFT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->RIGHT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    :goto_0
    iput-object v1, v0, Lcom/google/firebase/database/core/view/QueryParams;->viewFrom:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    :cond_3
    const-string v1, "i"

    .line 280
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 282
    invoke-static {p0}, Lcom/google/firebase/database/snapshot/Index;->fromQueryDefinition(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/Index;

    move-result-object p0

    iput-object p0, v0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    :cond_4
    return-object v0
.end method

.method private static normalizeValue(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 3

    .line 361
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/StringNode;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/firebase/database/snapshot/EmptyNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/LongNode;

    if-eqz v0, :cond_1

    .line 371
    new-instance v0, Lcom/google/firebase/database/snapshot/DoubleNode;

    .line 372
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0

    .line 374
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value passed to normalizeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public endAt(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/QueryParams;
    .locals 1

    .line 168
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/LongNode;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 169
    invoke-direct {p0}, Lcom/google/firebase/database/core/view/QueryParams;->copy()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    .line 170
    iput-object p1, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    .line 171
    iput-object p2, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    .line 312
    :cond_1
    check-cast p1, Lcom/google/firebase/database/core/view/QueryParams;

    .line 314
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 317
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 320
    :cond_5
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 321
    invoke-virtual {v2, v3}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 325
    :cond_7
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 330
    :cond_9
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 331
    invoke-virtual {v2, v3}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    .line 335
    :cond_b
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5

    :cond_c
    iget-object v2, p1, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_d

    :goto_5
    return v1

    .line 341
    :cond_d
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->isViewFromLeft()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->isViewFromLeft()Z

    move-result p1

    if-eq v2, p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_6
    return v1
.end method

.method public getIndex()Lcom/google/firebase/database/snapshot/Index;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method public getIndexEndName()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v0, :cond_0

    return-object v0

    .line 106
    :cond_0
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexEndValue()Lcom/google/firebase/database/snapshot/Node;
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexStartName()Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getMinName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexStartValue()Lcom/google/firebase/database/snapshot/Node;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLimit()I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get limit if limit has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNodeFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;-><init>(Lcom/google/firebase/database/snapshot/Index;)V

    return-object v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/view/filter/LimitedFilter;-><init>(Lcom/google/firebase/database/core/view/QueryParams;)V

    return-object v0

    .line 294
    :cond_1
    new-instance v0, Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/view/filter/RangedFilter;-><init>(Lcom/google/firebase/database/core/view/QueryParams;)V

    return-object v0
.end method

.method public getWireProtocolParams()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ep"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const-string v2, "l"

    .line 201
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->viewFrom:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    if-nez v1, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    sget-object v1, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->LEFT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    goto :goto_0

    .line 212
    :cond_2
    sget-object v1, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->RIGHT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    .line 215
    :cond_3
    :goto_0
    sget-object v3, Lcom/google/firebase/database/core/view/QueryParams$1;->$SwitchMap$com$google$firebase$database$core$view$QueryParams$ViewFrom:[I

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    const-string v4, "vf"

    if-eq v1, v3, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "r"

    .line 220
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 217
    :cond_5
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 225
    iget-object v1, p0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/Index;->getQueryDefinition()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public hasAnchoredLimit()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->viewFrom:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnd()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLimit()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStart()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->isViewFromLeft()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 352
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 353
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 354
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndValue:Lcom/google/firebase/database/snapshot/Node;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 355
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->indexEndName:Lcom/google/firebase/database/snapshot/ChildKey;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 356
    iget-object v2, p0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public isDefault()Z
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasAnchoredLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isViewFromLeft()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->viewFrom:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->LEFT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public limitToFirst(I)Lcom/google/firebase/database/core/view/QueryParams;
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/google/firebase/database/core/view/QueryParams;->copy()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    .line 144
    sget-object p1, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->LEFT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    iput-object p1, v0, Lcom/google/firebase/database/core/view/QueryParams;->viewFrom:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    return-object v0
.end method

.method public limitToLast(I)Lcom/google/firebase/database/core/view/QueryParams;
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/google/firebase/database/core/view/QueryParams;->copy()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/google/firebase/database/core/view/QueryParams;->limit:Ljava/lang/Integer;

    .line 151
    sget-object p1, Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;->RIGHT:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    iput-object p1, v0, Lcom/google/firebase/database/core/view/QueryParams;->viewFrom:Lcom/google/firebase/database/core/view/QueryParams$ViewFrom;

    return-object v0
.end method

.method public loadsAllData()Z
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasStart()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public orderBy(Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/core/view/QueryParams;
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/google/firebase/database/core/view/QueryParams;->copy()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    .line 177
    iput-object p1, v0, Lcom/google/firebase/database/core/view/QueryParams;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method public startAt(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/view/QueryParams;
    .locals 1

    .line 158
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/LongNode;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 159
    invoke-direct {p0}, Lcom/google/firebase/database/core/view/QueryParams;->copy()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    .line 160
    iput-object p1, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartValue:Lcom/google/firebase/database/snapshot/Node;

    .line 161
    iput-object p2, v0, Lcom/google/firebase/database/core/view/QueryParams;->indexStartName:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->jsonSerialization:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/util/JsonMapper;->serializeJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->jsonSerialization:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/core/view/QueryParams;->jsonSerialization:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
