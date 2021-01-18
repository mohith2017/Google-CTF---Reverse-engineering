.class Lcom/ctf/todo/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ctf/todo/RegisterActivity;->createAccount(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/ctf/todo/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/ctf/todo/RegisterActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ctf/todo/RegisterActivity$2;->this$0:Lcom/ctf/todo/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "EmailPassword"

    if-eqz v0, :cond_0

    const-string p1, "createUserWithEmail:success"

    .line 63
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/ctf/todo/RegisterActivity$2;->this$0:Lcom/ctf/todo/RegisterActivity;

    invoke-static {p1}, Lcom/ctf/todo/RegisterActivity;->access$100(Lcom/ctf/todo/RegisterActivity;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    .line 65
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity$2;->this$0:Lcom/ctf/todo/RegisterActivity;

    const-class v1, Lcom/ctf/todo/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity$2;->this$0:Lcom/ctf/todo/RegisterActivity;

    invoke-virtual {v0, p1}, Lcom/ctf/todo/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "createUserWithEmail:failure"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    iget-object p1, p0, Lcom/ctf/todo/RegisterActivity$2;->this$0:Lcom/ctf/todo/RegisterActivity;

    const/4 v0, 0x0

    const-string v1, "Authentication failed."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
