.class public final Lcom/google/android/gms/internal/firebase_auth/zzco;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.2"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzco;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/firebase/auth/PhoneAuthCredential;

.field private final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzcn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzcn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzco;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzco;->zza:Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzco;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzco;->zza:Lcom/google/firebase/auth/PhoneAuthCredential;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzco;->zzb:Ljava/lang/String;

    const/4 v1, 0x2

    .line 14
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
