.class public final Lcom/google/android/gms/internal/firebase_auth/zzkw;
.super Lcom/google/android/gms/internal/firebase_auth/zzig;
.source "com.google.firebase:firebase-auth@@19.3.2"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzig<",
        "Lcom/google/android/gms/internal/firebase_auth/zzkw;",
        "Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjt;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

.field private static volatile zzf:Lcom/google/android/gms/internal/firebase_auth/zzkb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzkb<",
            "Lcom/google/android/gms/internal/firebase_auth/zzkw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:J

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkw;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzig;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzig;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase_auth/zzkw;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/firebase_auth/zzkw;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    return-object v0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zzc:J

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzky;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzkb;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzkw;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzkb;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzig$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzig$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzig;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zzf:Lcom/google/android/gms/internal/firebase_auth/zzkb;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zze:Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkw;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkw$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzky;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzkw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzkw;-><init>()V

    return-object p1

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
