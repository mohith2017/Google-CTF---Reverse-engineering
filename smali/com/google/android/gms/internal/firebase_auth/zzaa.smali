.class public final enum Lcom/google/android/gms/internal/firebase_auth/zzaa;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@19.3.2"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzil;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase_auth/zzaa;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzil;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field private static final enum zzb:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field private static final enum zzc:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field private static final enum zzd:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field private static final enum zze:Lcom/google/android/gms/internal/firebase_auth/zzaa;

.field private static final zzf:Lcom/google/android/gms/internal/firebase_auth/zzik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzik<",
            "Lcom/google/android/gms/internal/firebase_auth/zzaa;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/firebase_auth/zzaa;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v1, "VERIFY_OP_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v1, "SIGN_UP_OR_IN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v1, "REAUTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zza:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v1, "UPDATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const-string v1, "LINK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/firebase_auth/zzaa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zze:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 29
    sget-object v7, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    aput-object v7, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zza:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzh:[Lcom/google/android/gms/internal/firebase_auth/zzaa;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzik;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase_auth/zzaa;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzh:[Lcom/google/android/gms/internal/firebase_auth/zzaa;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase_auth/zzaa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase_auth/zzaa;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/firebase_auth/zzaa;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zze:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zza:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    return-object p0

    .line 4
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzaa;

    return-object p0
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase_auth/zzin;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzab;->zza:Lcom/google/android/gms/internal/firebase_auth/zzin;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzg:I

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzaa;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzaa;->zzg:I

    return v0
.end method
