.class public final Lcom/google/firebase/auth/api/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.2"


# static fields
.field private static final zza:Lcom/google/android/gms/common/logging/Logger;


# instance fields
.field private final zzb:Lcom/google/firebase/auth/api/internal/zzfp;

.field private final zzc:Lcom/google/firebase/auth/api/internal/zzat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 227
    new-instance v0, Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "FBAuthApiDispatcher"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/auth/api/internal/zzb;->zza:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/api/internal/zzfp;Lcom/google/firebase/auth/api/internal/zzat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzfp;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/api/internal/zzat;

    iput-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzc:Lcom/google/firebase/auth/api/internal/zzat;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/common/logging/Logger;
    .locals 1

    .line 221
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzb;->zza:Lcom/google/android/gms/common/logging/Logger;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfv;)Lcom/google/android/gms/internal/firebase_auth/zzff;
    .locals 4

    .line 94
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfv;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfv;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfv;->zzd()J

    move-result-wide v2

    .line 100
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzf()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, v0, v2, p0}, Lcom/google/android/gms/internal/firebase_auth/zzff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfv;)Lcom/google/android/gms/internal/firebase_auth/zzff;
    .locals 0

    .line 225
    invoke-static {p1, p2}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfv;)Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzb;)Lcom/google/firebase/auth/api/internal/zzat;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzc:Lcom/google/firebase/auth/api/internal/zzat;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zze;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zze;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zze;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/firebase/auth/api/internal/zzfo;)V
    .locals 13

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzev;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzev;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    .line 109
    iget-object v11, v0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v12, Lcom/google/firebase/auth/api/internal/zzj;

    move-object v2, v12

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p3

    move-object v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/auth/api/internal/zzj;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zze;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;)V

    invoke-virtual {v11, v1, v12}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzev;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_auth/zzge;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/firebase/auth/api/internal/zzfo;)V
    .locals 11

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzp()Lcom/google/firebase/auth/zze;

    move-result-object p3

    .line 198
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzl()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x4274

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzy;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzc:Lcom/google/firebase/auth/api/internal/zzat;

    invoke-virtual {v2}, Lcom/google/firebase/auth/api/internal/zzat;->zza()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    new-instance v2, Lcom/google/android/gms/internal/firebase_auth/zzek;

    invoke-direct {v2, p1, p3, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzek;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/zze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/google/firebase/auth/api/internal/zzee;->zza(Lcom/google/android/gms/internal/firebase_auth/zzek;)V

    return-void

    .line 205
    :cond_1
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/api/internal/zzee;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 207
    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 208
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzg()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Bearer"

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzf()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zze()Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 215
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzge;->zzp()Lcom/google/firebase/auth/zze;

    move-result-object v8

    move-object v3, p0

    move-object v9, p2

    move-object v10, p3

    .line 216
    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zze;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/firebase/auth/api/internal/zzfo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzee;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/android/gms/internal/firebase_auth/zzff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zze;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/firebase/auth/api/internal/zzfo;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 218
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zze;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/firebase/auth/api/internal/zzfo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/android/gms/internal/firebase_auth/zzge;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/firebase/auth/api/internal/zzfo;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Lcom/google/android/gms/internal/firebase_auth/zzge;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/firebase/auth/api/internal/zzfo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/firebase/auth/api/internal/zzfo;)V
    .locals 0

    .line 224
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/firebase/auth/api/internal/zzfo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/firebase/auth/api/internal/zzfo;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/firebase/auth/api/internal/zzfo;)V

    return-void
.end method

.method private final zza(Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/firebase/auth/api/internal/zzfo;)V
    .locals 9

    .line 87
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v8, Lcom/google/firebase/auth/api/internal/zzg;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/auth/api/internal/zzg;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/android/gms/internal/firebase_auth/zzfa;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/firebase/auth/api/internal/zzfo;)V

    invoke-virtual {v0, p4, v8}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method private final zza(Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/firebase/auth/api/internal/zzfo;)V
    .locals 9

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzev;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzev;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v8, Lcom/google/firebase/auth/api/internal/zzh;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/auth/api/internal/zzh;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzfo;Lcom/google/firebase/auth/api/internal/zzee;Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzfw;)V

    invoke-virtual {v0, v1, v8}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzev;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/api/internal/zzfr<",
            "Lcom/google/android/gms/internal/firebase_auth/zzff;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p2, p1}, Lcom/google/firebase/auth/api/internal/zzfr;->zza(Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->zzc()Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzal;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzal;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzfr;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzew;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/api/internal/zzb;)Lcom/google/firebase/auth/api/internal/zzfp;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase_auth/zzfe;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 192
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzaf;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzaf;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfe;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzgc;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzc:Lcom/google/firebase/auth/api/internal/zzat;

    invoke-virtual {p1}, Lcom/google/firebase/auth/api/internal/zzat;->zza()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgc;->zzc(Z)Lcom/google/android/gms/internal/firebase_auth/zzgc;

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    const/4 v0, 0x0

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzz;

    invoke-direct {v1, p0, p3}, Lcom/google/firebase/auth/api/internal/zzz;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzgc;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzgk;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 150
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v0, Lcom/google/firebase/auth/api/internal/zzo;

    invoke-direct {v0, p0, p3}, Lcom/google/firebase/auth/api/internal/zzo;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzgk;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzgk;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance p1, Lcom/google/firebase/auth/api/internal/zzq;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, v0, p4}, Lcom/google/firebase/auth/api/internal/zzq;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/android/gms/internal/firebase_auth/zzgk;Landroid/content/Context;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 0

    .line 61
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzgi;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance p3, Lcom/google/firebase/auth/api/internal/zzc;

    invoke-direct {p3, p0, p5}, Lcom/google/firebase/auth/api/internal/zzc;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzgi;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzfe;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/api/internal/zzb;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzfe;Lcom/google/firebase/auth/api/internal/zzee;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzfr;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfr;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzp;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzp;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfr;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzgd;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzn;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzn;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzgd;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzf;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/auth/api/internal/zzf;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/api/internal/zzee;)V

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzer;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Lcom/google/android/gms/internal/firebase_auth/zzer;Lcom/google/firebase/auth/api/internal/zzee;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzgc;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 165
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzs;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzs;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/android/gms/internal/firebase_auth/zzgc;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 127
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfe;

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzgm;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzgm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzfe;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzgm;)V

    .line 130
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfe;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfe;

    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfe;->zza(Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/internal/firebase_auth/zzfe;

    .line 133
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/google/firebase/auth/api/internal/zzb;->zzb(Lcom/google/android/gms/internal/firebase_auth/zzfe;Lcom/google/firebase/auth/api/internal/zzee;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 116
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p2}, Lcom/google/firebase/auth/ActionCodeSettings;->zzd()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgm;->zza(I)Lcom/google/android/gms/internal/firebase_auth/zzgm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzfe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzfe;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzgm;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzfe;

    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgm;->zza:Lcom/google/android/gms/internal/firebase_auth/zzgm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzfe;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzgm;)V

    .line 122
    :goto_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfe;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfe;

    .line 123
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfe;->zza(Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/internal/firebase_auth/zzfe;

    .line 124
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzfe;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfe;

    .line 125
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzl;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/auth/api/internal/zzl;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {p1, v1, p2}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfe;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzah;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzah;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzew;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzew;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zza;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zza;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzew;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzag;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzag;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzfy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzd;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/auth/api/internal/zzd;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfy;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzae;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzae;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfy;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzaj;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/auth/api/internal/zzaj;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfn;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzfn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzm;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/auth/api/internal/zzm;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfn;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 170
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzu;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzu;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfw;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfw;

    .line 43
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfw;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfw;

    .line 44
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzai;

    invoke-direct {p2, p0, p3}, Lcom/google/firebase/auth/api/internal/zzai;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfw;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 154
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzr;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/google/firebase/auth/api/internal/zzr;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p3, v0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzy;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzy;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzen;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzen;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzi;

    invoke-direct {p2, p0, p3}, Lcom/google/firebase/auth/api/internal/zzi;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzen;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 185
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzaa;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/auth/api/internal/zzaa;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 135
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzfn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance p2, Lcom/google/firebase/auth/api/internal/zzk;

    invoke-direct {p2, p0, p3}, Lcom/google/firebase/auth/api/internal/zzk;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Lcom/google/android/gms/internal/firebase_auth/zzfn;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 2

    .line 189
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/google/firebase/auth/api/internal/zzb;->zzb:Lcom/google/firebase/auth/api/internal/zzfp;

    new-instance v1, Lcom/google/firebase/auth/api/internal/zzac;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/auth/api/internal/zzac;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/auth/api/internal/zzfp;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V
    .locals 1

    .line 174
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/google/firebase/auth/api/internal/zzx;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/firebase/auth/api/internal/zzx;-><init>(Lcom/google/firebase/auth/api/internal/zzb;Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzee;)V

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/auth/api/internal/zzb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/api/internal/zzfr;)V

    return-void
.end method
