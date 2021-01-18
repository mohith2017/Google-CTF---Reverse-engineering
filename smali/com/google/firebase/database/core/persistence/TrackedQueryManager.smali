.class public Lcom/google/firebase/database/core/persistence/TrackedQueryManager;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HAS_ACTIVE_DEFAULT_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_QUERY_UNPRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lcom/google/firebase/database/core/utilities/Clock;

.field private currentQueryId:J

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private final storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

.field private trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$1;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 48
    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$2;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_ACTIVE_DEFAULT_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 57
    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$3;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$3;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 65
    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$4;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$4;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_UNPRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;Lcom/google/firebase/database/logging/LogWrapper;Lcom/google/firebase/database/core/utilities/Clock;)V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    .line 99
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    .line 100
    iput-object p2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 101
    iput-object p3, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->clock:Lcom/google/firebase/database/core/utilities/Clock;

    .line 102
    new-instance p1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 104
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->resetPreviouslyActiveTrackedQueries()V

    .line 107
    iget-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {p1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->loadTrackedQueries()Ljava/util/List;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 109
    iget-wide v0, p2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    .line 110
    invoke-direct {p0, p2}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->cacheTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/database/core/utilities/Predicate;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;Lcom/google/firebase/database/core/persistence/TrackedQuery;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    return-void
.end method

.method private static assertValidTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string v0, "Can\'t have tracked non-default query that loads all data"

    .line 86
    invoke-static {p0, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method private cacheTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V
    .locals 6

    .line 386
    iget-object v0, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-static {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->assertValidTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 388
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 389
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v2, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 396
    :cond_0
    iget-object v1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    if-eqz v1, :cond_2

    .line 397
    iget-wide v1, v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-wide v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 399
    iget-object v1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static calculateCountToPrune(Lcom/google/firebase/database/core/persistence/CachePolicy;J)J
    .locals 4

    .line 261
    invoke-interface {p0}, Lcom/google/firebase/database/core/persistence/CachePolicy;->getPercentOfQueriesToPruneAtOnce()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    long-to-float v0, p1

    mul-float v0, v0, v1

    float-to-double v0, v0

    .line 262
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 265
    invoke-interface {p0}, Lcom/google/firebase/database/core/persistence/CachePolicy;->getMaxNumberOfQueriesToKeep()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private filteredQueryIdsAtPath(Lcom/google/firebase/database/core/Path;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 374
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 376
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 377
    iget-object v2, v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    iget-wide v1, v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getQueriesMatching(Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 410
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 411
    invoke-interface {p1, v3}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private includedInDefaultCompleteQuery(Lcom/google/firebase/database/core/Path;)Z
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->findRootMostMatchingPath(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Lcom/google/firebase/database/core/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private resetPreviouslyActiveTrackedQueries()V
    .locals 3

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->beginTransaction()V

    .line 119
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->clock:Lcom/google/firebase/database/core/utilities/Clock;

    invoke-interface {v1}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->resetPreviouslyActiveTrackedQueries(J)V

    .line 120
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->endTransaction()V

    .line 123
    throw v0
.end method

.method private saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V
    .locals 1

    .line 403
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->cacheTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    .line 404
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    return-void
.end method

.method private setQueryActiveFlag(Lcom/google/firebase/database/core/view/QuerySpec;Z)V
    .locals 8

    .line 154
    invoke-static {p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    .line 155
    invoke-virtual {p0, v3}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->clock:Lcom/google/firebase/database/core/utilities/Clock;

    invoke-interface {v0}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v4

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1, v4, v5}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->updateLastUse(J)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->setActiveState(Z)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object p1

    goto :goto_0

    .line 163
    :cond_0
    new-instance p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    iput-wide v6, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    const/4 v6, 0x0

    move-object v0, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    .line 167
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    return-void
.end method


# virtual methods
.method public countOfPrunableQueries()J
    .locals 2

    .line 329
    sget-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->getQueriesMatching(Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public ensureCompleteTrackedQuery(Lcom/google/firebase/database/core/Path;)V
    .locals 9

    .line 302
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->includedInDefaultCompleteQuery(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    invoke-static {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    .line 307
    invoke-virtual {p0, v4}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object p1

    if-nez p1, :cond_0

    .line 309
    new-instance p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->clock:Lcom/google/firebase/database/core/utilities/Clock;

    .line 313
    invoke-interface {v0}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->setComplete()Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object p1

    .line 320
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    :cond_1
    return-void
.end method

.method public findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .locals 2

    .line 127
    invoke-static {p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getKnownCompleteChildren(Lcom/google/firebase/database/core/Path;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 282
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->filteredQueryIdsAtPath(Lcom/google/firebase/database/core/Path;)Ljava/util/Set;

    move-result-object v1

    .line 283
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v2, v1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 291
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 292
    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 293
    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v3, v1}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public hasActiveDefaultQuery(Lcom/google/firebase/database/core/Path;)Z
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_ACTIVE_DEFAULT_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)Z
    .locals 4

    .line 198
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->includedInDefaultCompleteQuery(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-boolean p1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public pruneOldQueries(Lcom/google/firebase/database/core/persistence/CachePolicy;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .locals 8

    .line 212
    sget-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->getQueriesMatching(Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->calculateCountToPrune(Lcom/google/firebase/database/core/persistence/CachePolicy;J)J

    move-result-wide v1

    .line 214
    new-instance p1, Lcom/google/firebase/database/core/persistence/PruneForest;

    invoke-direct {p1}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>()V

    .line 216
    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v3}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pruning old queries.  Prunable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Count to prune: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 217
    invoke-virtual {v3, v5, v6}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :cond_0
    new-instance v3, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;

    invoke-direct {v3, p0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;-><init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    :goto_0
    int-to-long v5, v3

    cmp-long v7, v5, v1

    if-gez v7, :cond_1

    .line 234
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 235
    iget-object v6, v5, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v6}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/firebase/database/core/persistence/PruneForest;->prune(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object p1

    .line 236
    iget-object v5, v5, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {p0, v5}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->removeTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    long-to-int v2, v1

    .line 240
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 242
    iget-object v1, v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/persistence/PruneForest;->keep(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 246
    :cond_2
    sget-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_UNPRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->getQueriesMatching(Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unprunable queries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 251
    iget-object v1, v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/persistence/PruneForest;->keep(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object p1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public removeTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 4

    .line 133
    invoke-static {p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    iget-wide v2, v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-interface {v1, v2, v3}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->deleteTrackedQuery(J)V

    .line 138
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 139
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    :cond_0
    return-void
.end method

.method public setQueriesComplete(Lcom/google/firebase/database/core/Path;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 180
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;-><init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V

    .line 181
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    return-void
.end method

.method public setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 1

    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueryActiveFlag(Lcom/google/firebase/database/core/view/QuerySpec;Z)V

    return-void
.end method

.method public setQueryCompleteIfExists(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 1

    .line 171
    invoke-static {p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 173
    iget-boolean v0, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->setComplete()Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    :cond_0
    return-void
.end method

.method public setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueryActiveFlag(Lcom/google/firebase/database/core/view/QuerySpec;Z)V

    return-void
.end method

.method verifyCache()V
    .locals 5

    .line 335
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->loadTrackedQueries()Ljava/util/List;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    new-instance v3, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$7;

    invoke-direct {v3, p0, v1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$7;-><init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 349
    new-instance v2, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$8;

    invoke-direct {v2, p0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$8;-><init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 359
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracked queries out of sync.  Tracked queries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Stored queries: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v2, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method
