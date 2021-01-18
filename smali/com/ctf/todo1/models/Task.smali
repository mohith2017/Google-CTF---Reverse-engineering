.class public Lcom/ctf/todo1/models/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation runtime Lcom/google/firebase/database/IgnoreExtraProperties;
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ctf/todo1/models/Task;->desc:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/ctf/todo1/models/Task;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation runtime Lcom/google/firebase/database/Exclude;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/ctf/todo1/models/Task;->desc:Ljava/lang/String;

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
