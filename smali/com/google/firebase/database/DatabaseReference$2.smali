.class Lcom/google/firebase/database/DatabaseReference$2;
.super Ljava/lang/Object;
.source "DatabaseReference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DatabaseReference;->setPriorityInternal(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/DatabaseReference;

.field final synthetic val$priority:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/utilities/Pair;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/google/firebase/database/DatabaseReference$2;->this$0:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/DatabaseReference$2;->val$priority:Lcom/google/firebase/database/snapshot/Node;

    iput-object p3, p0, Lcom/google/firebase/database/DatabaseReference$2;->val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference$2;->this$0:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference$2;->this$0:Lcom/google/firebase/database/DatabaseReference;

    .line 375
    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference$2;->val$priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object v3, p0, Lcom/google/firebase/database/DatabaseReference$2;->val$wrapped:Lcom/google/firebase/database/core/utilities/Pair;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    .line 374
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/database/core/Repo;->setValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
