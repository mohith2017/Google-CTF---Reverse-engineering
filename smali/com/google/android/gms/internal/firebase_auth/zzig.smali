.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzig;
.super Lcom/google/android/gms/internal/firebase_auth/zzgn;
.source "com.google.firebase:firebase-auth@@19.3.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzig$zza;,
        Lcom/google/android/gms/internal/firebase_auth/zzig$zzf;,
        Lcom/google/android/gms/internal/firebase_auth/zzig$zzc;,
        Lcom/google/android/gms/internal/firebase_auth/zzig$zzd;,
        Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;,
        Lcom/google/android/gms/internal/firebase_auth/zzig$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzig<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_auth/zzig$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_auth/zzgn<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase_auth/zzig<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/firebase_auth/zzlc;

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgn;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzlc;->zza()Lcom/google/android/gms/internal/firebase_auth/zzlc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzlc;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzc:I

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase_auth/zzig;Lcom/google/android/gms/internal/firebase_auth/zzhh;Lcom/google/android/gms/internal/firebase_auth/zzht;)Lcom/google/android/gms/internal/firebase_auth/zzig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzig<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhh;",
            "Lcom/google/android/gms/internal/firebase_auth/zzht;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzir;
        }
    .end annotation

    .line 76
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzig$zze;->zzd:I

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 78
    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzig;

    .line 79
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza()Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkh;

    move-result-object v0

    .line 80
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzho;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhh;)Lcom/google/android/gms/internal/firebase_auth/zzho;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkh;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzke;Lcom/google/android/gms/internal/firebase_auth/zzht;)V

    .line 81
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkh;->zzb(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzir;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzir;

    throw p0

    .line 90
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/firebase_auth/zzir;

    if-eqz p2, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzir;

    throw p0

    .line 86
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzir;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzir;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase_auth/zzir;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjr;)Lcom/google/android/gms/internal/firebase_auth/zzir;

    move-result-object p0

    throw p0
.end method

.method static zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzig<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig;

    if-nez v0, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig;

    .line 39
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzig$zze;->zzf:I

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig;

    if-eqz v0, :cond_1

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzd:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase_auth/zzjr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzjr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 54
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 56
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 57
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 55
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzig<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/firebase_auth/zzig;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase_auth/zzig<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 59
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzig$zze;->zza:I

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza()Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkh;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkh;->zzc(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 69
    sget p1, Lcom/google/android/gms/internal/firebase_auth/zzig$zze;->zzb:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 72
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method protected static zzac()Lcom/google/android/gms/internal/firebase_auth/zzim;
    .locals 1

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzij;->zzd()Lcom/google/android/gms/internal/firebase_auth/zzij;

    move-result-object v0

    return-object v0
.end method

.method protected static zzad()Lcom/google/android/gms/internal/firebase_auth/zzio;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "TE;>;"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkc;->zzd()Lcom/google/android/gms/internal/firebase_auth/zzkc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza()Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkh;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzig;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza()Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkh;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkh;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjs;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzhq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza()Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkh;

    move-result-object v0

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhs;->zza(Lcom/google/android/gms/internal/firebase_auth/zzhq;)Lcom/google/android/gms/internal/firebase_auth/zzhs;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkh;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzlw;)V

    return-void
.end method

.method public final zzaa()Z
    .locals 1

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(Lcom/google/android/gms/internal/firebase_auth/zzig;Z)Z

    move-result v0

    return v0
.end method

.method public final zzab()I
    .locals 2

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza()Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzkh;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkh;->zzd(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzc:I

    .line 29
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzc:I

    return v0
.end method

.method public final synthetic zzae()Lcom/google/android/gms/internal/firebase_auth/zzjq;
    .locals 2

    .line 93
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzig$zze;->zze:I

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;

    .line 96
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;->zza(Lcom/google/android/gms/internal/firebase_auth/zzig;)Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;

    return-object v0
.end method

.method public final synthetic zzaf()Lcom/google/android/gms/internal/firebase_auth/zzjq;
    .locals 2

    .line 100
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzig$zze;->zze:I

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;

    return-object v0
.end method

.method public final synthetic zzag()Lcom/google/android/gms/internal/firebase_auth/zzjr;
    .locals 2

    .line 105
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzig$zze;->zzf:I

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig;

    return-object v0
.end method

.method final zzb(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzc:I

    return-void
.end method

.method final zzy()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzig;->zzc:I

    return v0
.end method

.method protected final zzz()Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/firebase_auth/zzig<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/firebase_auth/zzig$zzb<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzig$zze;->zze:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzig;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzig$zzb;

    return-object v0
.end method
