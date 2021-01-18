.class public Lcom/ctf/todo/RegisterActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RegisterActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailPassword"


# instance fields
.field private mAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field mButton:Landroid/widget/Button;

.field mEmail:Landroid/widget/EditText;

.field mPassword:Landroid/widget/EditText;

.field mPassword2:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ctf/todo/RegisterActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ctf/todo/RegisterActivity;->createAccount(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ctf/todo/RegisterActivity;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ctf/todo/RegisterActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private createAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailPassword"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/ctf/todo/RegisterActivity;->validateForm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/ctf/todo/RegisterActivity$2;

    invoke-direct {p2, p0}, Lcom/ctf/todo/RegisterActivity$2;-><init>(Lcom/ctf/todo/RegisterActivity;)V

    .line 58
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private validateEmail(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 128
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private validateForm()Z
    .locals 7

    .line 83
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/ctf/todo/RegisterActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Required."

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 89
    :cond_0
    invoke-direct {p0, v1}, Lcom/ctf/todo/RegisterActivity;->validateEmail(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity;->mEmail:Landroid/widget/EditText;

    const-string v1, "Should be valid Email"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/ctf/todo/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    goto :goto_2

    .line 102
    :cond_2
    iget-object v5, p0, Lcom/ctf/todo/RegisterActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 105
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ge v5, v6, :cond_3

    .line 106
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity;->mPassword:Landroid/widget/EditText;

    const-string v5, "Password must be atleast 6 characters"

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 110
    :cond_3
    iget-object v5, p0, Lcom/ctf/todo/RegisterActivity;->mPassword2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 112
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity;->mPassword2:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    goto :goto_3

    .line 115
    :cond_4
    iget-object v3, p0, Lcom/ctf/todo/RegisterActivity;->mPassword2:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 118
    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 119
    iget-object v0, p0, Lcom/ctf/todo/RegisterActivity;->mPassword2:Landroid/widget/EditText;

    const-string v1, "Passwords should match."

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    return v4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 34
    invoke-virtual {p0, p1}, Lcom/ctf/todo/RegisterActivity;->setContentView(I)V

    .line 35
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/ctf/todo/RegisterActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    const p1, 0x7f08012d

    .line 36
    invoke-virtual {p0, p1}, Lcom/ctf/todo/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ctf/todo/RegisterActivity;->mEmail:Landroid/widget/EditText;

    const p1, 0x7f0800cb

    .line 37
    invoke-virtual {p0, p1}, Lcom/ctf/todo/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ctf/todo/RegisterActivity;->mPassword:Landroid/widget/EditText;

    const p1, 0x7f0800cc

    .line 38
    invoke-virtual {p0, p1}, Lcom/ctf/todo/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ctf/todo/RegisterActivity;->mPassword2:Landroid/widget/EditText;

    const p1, 0x7f0800d5

    .line 39
    invoke-virtual {p0, p1}, Lcom/ctf/todo/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ctf/todo/RegisterActivity;->mButton:Landroid/widget/Button;

    .line 40
    new-instance v0, Lcom/ctf/todo/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/ctf/todo/RegisterActivity$1;-><init>(Lcom/ctf/todo/RegisterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
