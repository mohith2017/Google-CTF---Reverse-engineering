.class public final Lcom/google/android/gms/internal/firebase_auth/zzfr;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.2"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzgb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Lcom/google/firebase/auth/api/internal/zzgb<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzl;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J

.field private final zzc:Z

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/firebase_auth/zzeo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zza:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzb:J

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzc:Z

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzd:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zze:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzb:J

    const/4 v3, 0x2

    .line 20
    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzc:Z

    const/4 v1, 0x3

    .line 23
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzd:Ljava/lang/String;

    const/4 v1, 0x4

    .line 27
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zze:Ljava/lang/String;

    const/4 v1, 0x5

    .line 31
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzf:Ljava/lang/String;

    const/4 v1, 0x6

    .line 35
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 36
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final synthetic zza()Lcom/google/android/gms/internal/firebase_auth/zzjr;
    .locals 2

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl;->zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zzb;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zze:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zzb;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zzb;

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzf:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zzb;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zzb;

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzeo;

    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzeo;->zza()Lcom/google/android/gms/internal/firebase_auth/zzjr;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zzb;->zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zza;)Lcom/google/android/gms/internal/firebase_auth/zzp$zzl$zzb;

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;->zzf()Lcom/google/android/gms/internal/firebase_auth/zzjr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig;

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzl;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzeo;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzg:Lcom/google/android/gms/internal/firebase_auth/zzeo;

    return-void
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zza:Ljava/lang/String;

    return-object v0
.end method
