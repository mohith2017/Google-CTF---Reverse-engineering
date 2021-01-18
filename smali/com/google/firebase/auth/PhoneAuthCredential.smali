.class public Lcom/google/firebase/auth/PhoneAuthCredential;
.super Lcom/google/firebase/auth/AuthCredential;
.source "com.google.firebase:firebase-auth@@19.3.2"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/google/firebase/auth/zzw;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzw;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/PhoneAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/AuthCredential;-><init>()V

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot create PhoneAuthCredential without either verificationProof, sessionInfo, temporary proof, or enrollment ID."

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zza:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzb:Ljava/lang/String;

    .line 10
    iput-boolean p3, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc:Z

    .line 11
    iput-object p4, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zze:Z

    .line 13
    iput-object p6, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzf:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;
    .locals 9

    .line 16
    new-instance v8, Lcom/google/firebase/auth/PhoneAuthCredential;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/PhoneAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;
    .locals 9

    .line 17
    new-instance v8, Lcom/google/firebase/auth/PhoneAuthCredential;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/PhoneAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    new-instance v8, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 59
    iget-object v1, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zza:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-boolean v3, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc:Z

    .line 64
    iget-object v4, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd:Ljava/lang/String;

    .line 66
    iget-boolean v5, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zze:Z

    .line 68
    iget-object v6, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzf:Ljava/lang/String;

    .line 70
    iget-object v7, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzg:Ljava/lang/String;

    move-object v0, v8

    .line 71
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/PhoneAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    return-object v0
.end method

.method public getSignInMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    return-object v0
.end method

.method public getSmsCode()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 31
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 35
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 36
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 38
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc:Z

    const/4 v1, 0x3

    .line 39
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 41
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd:Ljava/lang/String;

    const/4 v1, 0x4

    .line 43
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 45
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zze:Z

    const/4 v1, 0x5

    .line 46
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 48
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzf:Ljava/lang/String;

    const/4 v1, 0x6

    .line 50
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 52
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzg:Ljava/lang/String;

    const/4 v1, 0x7

    .line 54
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 55
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/firebase/auth/AuthCredential;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/PhoneAuthCredential;

    return-object v0
.end method

.method public final zza(Z)Lcom/google/firebase/auth/PhoneAuthCredential;
    .locals 0

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zze:Z

    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zze:Z

    return v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzf:Ljava/lang/String;

    return-object v0
.end method
