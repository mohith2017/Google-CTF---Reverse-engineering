.class final Lcom/google/firebase/auth/api/internal/zzu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.2"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzfr<",
        "Lcom/google/android/gms/internal/firebase_auth/zzff;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/api/internal/zzee;

.field private final synthetic zzb:Lcom/google/firebase/auth/api/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzu;->zzb:Lcom/google/firebase/auth/api/internal/zzb;

    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzu;->zza:Lcom/google/firebase/auth/api/internal/zzee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfw;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfw;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfw;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfw;

    .line 8
    iget-object v1, p0, Lcom/google/firebase/auth/api/internal/zzu;->zzb:Lcom/google/firebase/auth/api/internal/zzb;

    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzu;->zza:Lcom/google/firebase/auth/api/internal/zzee;

    invoke-static {v1, v2, p1, v0, p0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/firebase/auth/api/internal/zzfo;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzy;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzu;->zza:Lcom/google/firebase/auth/api/internal/zzee;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/api/internal/zzee;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
