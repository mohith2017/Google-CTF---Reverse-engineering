.class public final Lcom/google/android/gms/internal/firebase_auth/zzeo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.2"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzgb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/api/internal/zzgb<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzeo;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/firebase_auth/zzjr;
    .locals 2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;->zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzeo;->zza:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza$zza;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;->zzf()Lcom/google/android/gms/internal/firebase_auth/zzjr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;

    return-object v0
.end method
