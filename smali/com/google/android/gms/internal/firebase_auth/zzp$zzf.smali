.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;
.super Lcom/google/android/gms/internal/firebase_auth/zzig;
.source "com.google.firebase:firebase-auth@@19.3.2"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzig<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjt;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

.field private static volatile zzi:Lcom/google/android/gms/internal/firebase_auth/zzkb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzkb<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/firebase_auth/zzio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/firebase_auth/zzio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;-><init>()V

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    .line 34
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzig;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzig;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzd:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzad()Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zze:Lcom/google/android/gms/internal/firebase_auth/zzio;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzad()Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzio;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase_auth/zzp$zzf$zza;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzz()Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzc:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 27
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzkb;

    if-nez p1, :cond_1

    .line 20
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    monitor-enter p2

    .line 21
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzkb;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzig$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzig$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzig;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzi:Lcom/google/android/gms/internal/firebase_auth/zzkb;

    .line 25
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001a\u0003\u001a\u0004\u1002\u0001"

    .line 16
    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zzh:Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    .line 12
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzf;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method