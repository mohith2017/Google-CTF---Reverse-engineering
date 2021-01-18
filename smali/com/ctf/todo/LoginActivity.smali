.class public Lcom/ctf/todo/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailPassword"


# instance fields
.field private mAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field mEmail:Landroid/widget/EditText;

.field mLogin:Landroid/widget/Button;

.field mPassword:Landroid/widget/EditText;

.field mRegister:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ctf/todo/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ctf/todo/LoginActivity;->loginAccount(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ctf/todo/LoginActivity;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ctf/todo/LoginActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private loginAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailPassword"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/ctf/todo/LoginActivity;->validateForm()Z

    move-result v0
    
    const/4 v0, 0x1

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/ctf/todo/LoginActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/ctf/todo/LoginActivity$3;

    invoke-direct {p2, p0}, Lcom/ctf/todo/LoginActivity$3;-><init>(Lcom/ctf/todo/LoginActivity;)V

    .line 95
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private validateEmail(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 125
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private validateForm()Z
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/ctf/todo/LoginActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/ctf/todo/LoginActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Required."

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ctf/todo/LoginActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 69
    :cond_0
    invoke-direct {p0, v1}, Lcom/ctf/todo/LoginActivity;->validateEmail(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/ctf/todo/LoginActivity;->mEmail:Landroid/widget/EditText;

    const-string v1, "Should be valid Email"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/ctf/todo/LoginActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/ctf/todo/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/ctf/todo/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/ctf/todo/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v4, v0

    :goto_2
    return v4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 33
    invoke-virtual {p0, p1}, Lcom/ctf/todo/LoginActivity;->setContentView(I)V

    .line 34
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/ctf/todo/LoginActivity;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    const p1, 0x7f08012d

    .line 35
    invoke-virtual {p0, p1}, Lcom/ctf/todo/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ctf/todo/LoginActivity;->mEmail:Landroid/widget/EditText;

    const p1, 0x7f0800cb

    .line 36
    invoke-virtual {p0, p1}, Lcom/ctf/todo/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ctf/todo/LoginActivity;->mPassword:Landroid/widget/EditText;

    const p1, 0x7f0800d5

    .line 37
    invoke-virtual {p0, p1}, Lcom/ctf/todo/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ctf/todo/LoginActivity;->mRegister:Landroid/widget/Button;

    const p1, 0x7f08009a

    .line 38
    invoke-virtual {p0, p1}, Lcom/ctf/todo/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ctf/todo/LoginActivity;->mLogin:Landroid/widget/Button;

    .line 39
    new-instance v0, Lcom/ctf/todo/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/ctf/todo/LoginActivity$1;-><init>(Lcom/ctf/todo/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/ctf/todo/LoginActivity;->mRegister:Landroid/widget/Button;

    new-instance v0, Lcom/ctf/todo/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/ctf/todo/LoginActivity$2;-><init>(Lcom/ctf/todo/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
