.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza$zza;
.super Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;
.source "com.google.firebase:firebase-auth@@19.3.2"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzig$zzb<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjt;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzig;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza$zza;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;->zzb()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;->zzb:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza$zza;->zza:Lcom/google/android/gms/internal/firebase_auth/zzig;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;Ljava/lang/String;)V

    return-object p0
.end method