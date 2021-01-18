.class Lcom/ctf/todo/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctf/todo/LoginActivity;->loginAccount(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctf/todo/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ctf/todo/LoginActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ctf/todo/LoginActivity$3;->this$0:Lcom/ctf/todo/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Authentication failed."

    const-string v3, "EmailPassword"

    if-eqz v0, :cond_0

    const-string v0, "signInWithEmail:success"

    .line 100
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/ctf/todo/LoginActivity$3;->this$0:Lcom/ctf/todo/LoginActivity;

    invoke-static {v0}, Lcom/ctf/todo/LoginActivity;->access$100(Lcom/ctf/todo/LoginActivity;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ctf/todo/LoginActivity$3;->this$0:Lcom/ctf/todo/LoginActivity;

    const-class v4, Lcom/ctf/todo/MainActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    iget-object v3, p0, Lcom/ctf/todo/LoginActivity$3;->this$0:Lcom/ctf/todo/LoginActivity;

    invoke-virtual {v3, v0}, Lcom/ctf/todo/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    const-string v4, "signInWithEmail:failure"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    iget-object v0, p0, Lcom/ctf/todo/LoginActivity$3;->this$0:Lcom/ctf/todo/LoginActivity;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/ctf/todo/LoginActivity$3;->this$0:Lcom/ctf/todo/LoginActivity;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
