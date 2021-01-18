.class public Lcom/ctf/todo/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static childName:Ljava/lang/String; = null

.field private static dbName:Ljava/lang/String; = "tasks"

.field static mDataset:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ctf/todo1/models/Task;",
            ">;"
        }
    .end annotation
.end field

.field private static olddbName:Ljava/lang/String; = "tasks_old"

.field private static uid:Ljava/lang/String; = null

.field private static ver:I = 0x2


# instance fields
.field context:Landroid/content/Context;

.field mAdapter:Lcom/ctf/todo/MyAdapter;

.field private mAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private mDB:Lcom/google/firebase/database/DatabaseReference;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ctf/todo/MainActivity;->mDataset:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ctf/todo/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/ctf/todo/MainActivity;->insertData(Ljava/lang/String;)V

    return-void
.end method

.method private initDataset()V
    .locals 2

    .line 83
    sget v0, Lcom/ctf/todo/MainActivity;->ver:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 84
    sget-object v0, Lcom/ctf/todo/MainActivity;->dbName:Ljava/lang/String;

    sput-object v0, Lcom/ctf/todo/MainActivity;->childName:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcom/ctf/todo/MainActivity;->olddbName:Ljava/lang/String;

    sput-object v0, Lcom/ctf/todo/MainActivity;->childName:Ljava/lang/String;

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/ctf/todo/MainActivity;->mDB:Lcom/google/firebase/database/DatabaseReference;

    sget-object v1, Lcom/ctf/todo/MainActivity;->childName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    sget-object v1, Lcom/ctf/todo/MainActivity;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/ctf/todo/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/ctf/todo/MainActivity$2;-><init>(Lcom/ctf/todo/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V

    return-void
.end method

.method private insertData(Ljava/lang/String;)V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/ctf/todo/MainActivity;->mDB:Lcom/google/firebase/database/DatabaseReference;

    sget-object v1, Lcom/ctf/todo/MainActivity;->childName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    sget-object v1, Lcom/ctf/todo/MainActivity;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/ctf/todo1/models/Task;

    invoke-direct {v1, p1, v0}, Lcom/ctf/todo1/models/Task;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Lcom/ctf/todo1/models/Task;->toMap()Ljava/util/Map;

    move-result-object p1

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ctf/todo/MainActivity;->childName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ctf/todo/MainActivity;->uid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/ctf/todo/MainActivity;->mDB:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DatabaseReference;->updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    .line 122
    sget-object p1, Lcom/ctf/todo/MainActivity;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Lcom/ctf/todo/MainActivity;->mAdapter:Lcom/ctf/todo/MyAdapter;

    sget-object v0, Lcom/ctf/todo/MainActivity;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/ctf/todo/MyAdapter;->updateDataSet(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 44
    invoke-virtual {p0, p1}, Lcom/ctf/todo/MainActivity;->setContentView(I)V

    .line 45
    iput-object p0, p0, Lcom/ctf/todo/MainActivity;->context:Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/ctf/todo/MainActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 47
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iput-object p1, p0, Lcom/ctf/todo/MainActivity;->mDB:Lcom/google/firebase/database/DatabaseReference;

    .line 48
    iget-object p1, p0, Lcom/ctf/todo/MainActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ctf/todo/MainActivity;->uid:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/ctf/todo/MainActivity;->initDataset()V

    const p1, 0x7f0800d4

    .line 50
    invoke-virtual {p0, p1}, Lcom/ctf/todo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/ctf/todo/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object p1, p0, Lcom/ctf/todo/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 54
    new-instance p1, Lcom/ctf/todo/MyAdapter;

    sget-object v0, Lcom/ctf/todo/MainActivity;->mDataset:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/ctf/todo/MyAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/ctf/todo/MainActivity;->mAdapter:Lcom/ctf/todo/MyAdapter;

    .line 55
    iget-object v0, p0, Lcom/ctf/todo/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f080076

    .line 56
    invoke-virtual {p0, p1}, Lcom/ctf/todo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 57
    new-instance v0, Lcom/ctf/todo/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/ctf/todo/MainActivity$1;-><init>(Lcom/ctf/todo/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
