.class Lcom/ctf/todo/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctf/todo/MainActivity;->initDataset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctf/todo/MainActivity;


# direct methods
.method constructor <init>(Lcom/ctf/todo/MainActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ctf/todo/MainActivity$2;->this$0:Lcom/ctf/todo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    const-string p1, "initDataset"

    const-string v0, "Database Error"

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 4

    const-string v0, "MainActivity"

    const-string v1, "Fetching Tasks"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DataSnapshot;

    .line 96
    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fetched value"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "desc"

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "Task"

    .line 100
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Key"

    .line 101
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v2, Lcom/ctf/todo/MainActivity;->mDataset:Ljava/util/ArrayList;

    new-instance v3, Lcom/ctf/todo1/models/Task;

    invoke-direct {v3, v1, v0}, Lcom/ctf/todo1/models/Task;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/ctf/todo/MainActivity$2;->this$0:Lcom/ctf/todo/MainActivity;

    iget-object p1, p1, Lcom/ctf/todo/MainActivity;->mAdapter:Lcom/ctf/todo/MyAdapter;

    sget-object v0, Lcom/ctf/todo/MainActivity;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/ctf/todo/MyAdapter;->updateDataSet(Ljava/util/ArrayList;)V

    return-void
.end method
