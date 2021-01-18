.class public Lcom/ctf/todo/MyAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ctf/todo/MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/ctf/todo/MyAdapter;


# direct methods
.method public constructor <init>(Lcom/ctf/todo/MyAdapter;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/ctf/todo/MyAdapter$MyViewHolder;->this$0:Lcom/ctf/todo/MyAdapter;

    .line 73
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080050

    .line 74
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/ctf/todo/MyAdapter$MyViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 75
    iput-object p2, p0, Lcom/ctf/todo/MyAdapter$MyViewHolder;->context:Landroid/content/Context;

    .line 76
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/ctf/todo/MyAdapter$MyViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ctf/todo/MyAdapter$MyViewHolder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ctf/todo/MyAdapter$MyViewHolder;->this$0:Lcom/ctf/todo/MyAdapter;

    iget-object v1, v1, Lcom/ctf/todo/MyAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ctf/todo1/models/Task;

    iget-object p1, p1, Lcom/ctf/todo1/models/Task;->desc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
