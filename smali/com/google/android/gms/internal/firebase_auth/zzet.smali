.class public final enum Lcom/google/android/gms/internal/firebase_auth/zzet;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@19.3.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_auth/zzet;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase_auth/zzet;

.field private static final enum zzb:Lcom/google/android/gms/internal/firebase_auth/zzet;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/firebase_auth/zzet;


# instance fields
.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzet;

    const-string v1, "REFRESH_TOKEN"

    const/4 v2, 0x0

    const-string v3, "refresh_token"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzet;->zza:Lcom/google/android/gms/internal/firebase_auth/zzet;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzet;

    const-string v1, "AUTHORIZATION_CODE"

    const/4 v3, 0x1

    const-string v4, "authorization_code"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzet;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzet;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase_auth/zzet;

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/firebase_auth/zzet;->zza:Lcom/google/android/gms/internal/firebase_auth/zzet;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/android/gms/internal/firebase_auth/zzet;->zzd:[Lcom/google/android/gms/internal/firebase_auth/zzet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzet;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_auth/zzet;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzet;->zzd:[Lcom/google/android/gms/internal/firebase_auth/zzet;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_auth/zzet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_auth/zzet;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzet;->zzc:Ljava/lang/String;

    return-object v0
.end method
