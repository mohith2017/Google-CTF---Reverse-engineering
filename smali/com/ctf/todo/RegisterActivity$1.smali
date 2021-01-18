.class Lcom/ctf/todo/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctf/todo/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctf/todo/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/ctf/todo/RegisterActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ctf/todo/RegisterActivity$1;->this$0:Lcom/ctf/todo/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/ctf/todo/RegisterActivity$1;->this$0:Lcom/ctf/todo/RegisterActivity;

    iget-object v0, p1, Lcom/ctf/todo/RegisterActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ctf/todo/RegisterActivity$1;->this$0:Lcom/ctf/todo/RegisterActivity;

    iget-object v1, v1, Lcom/ctf/todo/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ctf/todo/RegisterActivity;->access$000(Lcom/ctf/todo/RegisterActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
