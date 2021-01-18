.class Lcom/ctf/todo/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctf/todo/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctf/todo/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ctf/todo/LoginActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/ctf/todo/LoginActivity$2;->this$0:Lcom/ctf/todo/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ctf/todo/LoginActivity$2;->this$0:Lcom/ctf/todo/LoginActivity;

    const-class v1, Lcom/ctf/todo/RegisterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    iget-object v0, p0, Lcom/ctf/todo/LoginActivity$2;->this$0:Lcom/ctf/todo/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/ctf/todo/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
