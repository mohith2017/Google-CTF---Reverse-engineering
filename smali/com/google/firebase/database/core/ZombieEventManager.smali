.class public Lcom/google/firebase/database/core/ZombieEventManager;
.super Ljava/lang/Object;
.source "ZombieEventManager.java"

# interfaces
.implements Lcom/google/firebase/database/core/EventRegistrationZombieListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static defaultInstance:Lcom/google/firebase/database/core/ZombieEventManager;


# instance fields
.field final globalEventRegistrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/google/firebase/database/core/ZombieEventManager;

    invoke-direct {v0}, Lcom/google/firebase/database/core/ZombieEventManager;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/ZombieEventManager;->defaultInstance:Lcom/google/firebase/database/core/ZombieEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/core/ZombieEventManager;
    .locals 1

    .line 45
    sget-object v0, Lcom/google/firebase/database/core/ZombieEventManager;->defaultInstance:Lcom/google/firebase/database/core/ZombieEventManager;

    return-object v0
.end method

.method private unRecordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 81
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 82
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 84
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v1

    if-nez v1, :cond_5

    .line 99
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    .line 98
    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/EventRegistration;->clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;

    move-result-object v1

    .line 101
    iget-object v3, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_5

    .line 103
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 104
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 105
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 109
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 110
    iget-object p1, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public onZombied(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/ZombieEventManager;->unRecordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    return-void
.end method

.method public recordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v2, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/EventRegistration;->clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v3, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x1

    .line 70
    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/EventRegistration;->setIsUserInitiated(Z)V

    .line 71
    invoke-virtual {p1, p0}, Lcom/google/firebase/database/core/EventRegistration;->setOnZombied(Lcom/google/firebase/database/core/EventRegistrationZombieListener;)V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zombifyForRemove(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 120
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 135
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 136
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/EventRegistration;

    .line 137
    invoke-virtual {v3}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    invoke-virtual {v3}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v3}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 145
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    .line 148
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
