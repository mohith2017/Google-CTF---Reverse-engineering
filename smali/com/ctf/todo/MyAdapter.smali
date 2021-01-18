.class public Lcom/ctf/todo/MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ctf/todo/MyAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ctf/todo/MyAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private mDB:Lcom/google/firebase/database/DatabaseReference;

.field mDataset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ctf/todo1/models/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/ctf/todo1/models/Task;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ctf/todo/MyAdapter;->mDataset:Ljava/util/ArrayList;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ctf/todo/MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    iput-object p1, p0, Lcom/ctf/todo/MyAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/ctf/todo/MyAdapter;->mDataset:Ljava/util/ArrayList;

    .line 31
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iput-object p1, p0, Lcom/ctf/todo/MyAdapter;->mDB:Lcom/google/firebase/database/DatabaseReference;

    .line 32
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/ctf/todo/MyAdapter;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method

.method static synthetic access$000(Lcom/ctf/todo/MyAdapter;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ctf/todo/MyAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public deleteData(I)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/ctf/todo/MyAdapter;->mDB:Lcom/google/firebase/database/DatabaseReference;

    const-string v1, "tasks"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/ctf/todo/MyAdapter;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/ctf/todo/MyAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ctf/todo1/models/Task;

    iget-object v1, v1, Lcom/ctf/todo1/models/Task;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->removeValue()Lcom/google/android/gms/tasks/Task;

    .line 92
    iget-object v0, p0, Lcom/ctf/todo/MyAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lcom/ctf/todo/MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method getItem(I)Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ctf/todo/MyAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ctf/todo1/models/Task;

    iget-object p1, p1, Lcom/ctf/todo1/models/Task;->desc:Ljava/lang/String;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ctf/todo/MyAdapter;->mDataset:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/ctf/todo/MyAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ctf/todo/MyAdapter;->onBindViewHolder(Lcom/ctf/todo/MyAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ctf/todo/MyAdapter$MyViewHolder;I)V
    .locals 2

    .line 47
    iget-object v0, p1, Lcom/ctf/todo/MyAdapter$MyViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/ctf/todo/MyAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ctf/todo1/models/Task;

    iget-object v1, v1, Lcom/ctf/todo1/models/Task;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p1, Lcom/ctf/todo/MyAdapter$MyViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    iget-object p1, p1, Lcom/ctf/todo/MyAdapter$MyViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/ctf/todo/MyAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/ctf/todo/MyAdapter$1;-><init>(Lcom/ctf/todo/MyAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/ctf/todo/MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ctf/todo/MyAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ctf/todo/MyAdapter$MyViewHolder;
    .locals 2

    .line 38
    iget-object p2, p0, Lcom/ctf/todo/MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0051

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/ctf/todo/MyAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/ctf/todo/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lcom/ctf/todo/MyAdapter$MyViewHolder;-><init>(Lcom/ctf/todo/MyAdapter;Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method

.method public updateDataSet(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ctf/todo1/models/Task;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/ctf/todo/MyAdapter;->mDataset:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p0}, Lcom/ctf/todo/MyAdapter;->notifyDataSetChanged()V

    return-void
.end method
