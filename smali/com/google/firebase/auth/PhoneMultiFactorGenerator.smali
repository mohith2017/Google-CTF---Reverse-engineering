.class public Lcom/google/firebase/auth/PhoneMultiFactorGenerator;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.2"


# static fields
.field public static final FACTOR_ID:Ljava/lang/String; = "phone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssertion(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/firebase/auth/PhoneMultiFactorAssertion;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-object v0
.end method
