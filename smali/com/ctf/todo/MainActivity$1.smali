.class Lcom/ctf/todo/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctf/todo/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 57
    iput-object p1, p0, Lcom/ctf/todo/MainActivity$1;->this$0:Lcom/ctf/todo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/ctf/todo/MainActivity$1;->this$0:Lcom/ctf/todo/MainActivity;

    iget-object v0, v0, Lcom/ctf/todo/MainActivity;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Insert a new task"

    .line 61
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 62
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ctf/todo/MainActivity$1;->this$0:Lcom/ctf/todo/MainActivity;

    iget-object v1, v1, Lcom/ctf/todo/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 64
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    new-instance v1, Lcom/ctf/todo/MainActivity$1$1;

    invoke-direct {v1, p0, v0}, Lcom/ctf/todo/MainActivity$1$1;-><init>(Lcom/ctf/todo/MainActivity$1;Landroid/widget/EditText;)V

    const-string v0, "Insert"

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 71
    new-instance v0, Lcom/ctf/todo/MainActivity$1$2;

    invoke-direct {v0, p0}, Lcom/ctf/todo/MainActivity$1$2;-><init>(Lcom/ctf/todo/MainActivity$1;)V

    const-string v1, "Cancel"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
