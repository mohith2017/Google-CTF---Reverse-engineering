.class Lcom/google/firebase/database/Query$1;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/Query;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/Query;

.field final synthetic val$listener:Lcom/google/firebase/database/ValueEventListener;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/google/firebase/database/Query$1;->this$0:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/Query$1;->val$listener:Lcom/google/firebase/database/ValueEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/firebase/database/Query$1;->val$listener:Lcom/google/firebase/database/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/firebase/database/Query$1;->this$0:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    .line 179
    iget-object v0, p0, Lcom/google/firebase/database/Query$1;->val$listener:Lcom/google/firebase/database/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onDataChange(Lcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method
