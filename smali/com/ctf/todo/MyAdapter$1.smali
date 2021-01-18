.class Lcom/ctf/todo/MyAdapter$1;
.super Ljava/lang/Object;
.source "MyAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctf/todo/MyAdapter;->onBindViewHolder(Lcom/ctf/todo/MyAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctf/todo/MyAdapter;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/ctf/todo/MyAdapter;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ctf/todo/MyAdapter$1;->this$0:Lcom/ctf/todo/MyAdapter;

    iput p2, p0, Lcom/ctf/todo/MyAdapter$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 53
    iget-object p2, p0, Lcom/ctf/todo/MyAdapter$1;->this$0:Lcom/ctf/todo/MyAdapter;

    invoke-static {p2}, Lcom/ctf/todo/MyAdapter;->access$000(Lcom/ctf/todo/MyAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 54
    iget-object p1, p0, Lcom/ctf/todo/MyAdapter$1;->this$0:Lcom/ctf/todo/MyAdapter;

    iget p2, p0, Lcom/ctf/todo/MyAdapter$1;->val$index:I

    invoke-virtual {p1, p2}, Lcom/ctf/todo/MyAdapter;->deleteData(I)V

    :cond_0
    return-void
.end method
