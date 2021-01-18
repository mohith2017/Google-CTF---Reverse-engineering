.class Lcom/ctf/todo/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctf/todo/MainActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ctf/todo/MainActivity$1;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ctf/todo/MainActivity$1;Landroid/widget/EditText;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ctf/todo/MainActivity$1$1;->this$1:Lcom/ctf/todo/MainActivity$1;

    iput-object p2, p0, Lcom/ctf/todo/MainActivity$1$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/ctf/todo/MainActivity$1$1;->this$1:Lcom/ctf/todo/MainActivity$1;

    iget-object p1, p1, Lcom/ctf/todo/MainActivity$1;->this$0:Lcom/ctf/todo/MainActivity;

    iget-object p2, p0, Lcom/ctf/todo/MainActivity$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ctf/todo/MainActivity;->access$000(Lcom/ctf/todo/MainActivity;Ljava/lang/String;)V

    return-void
.end method
