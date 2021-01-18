.class public final Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/PhoneAuthOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/auth/FirebaseAuth;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/Long;

.field private zzd:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

.field private zze:Ljava/util/concurrent/Executor;

.field private zzf:Landroid/app/Activity;

.field private zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

.field private zzh:Lcom/google/firebase/auth/MultiFactorSession;

.field private zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

.field private zzj:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/firebase/auth/PhoneAuthOptions;
    .locals 15

    .line 22
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzd:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zze:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zze:Ljava/util/concurrent/Executor;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zze:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzf:Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot specify both an executor and an activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_b

    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    cmp-long v4, v0, v2

    if-gtz v4, :cond_b

    .line 33
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v3, "A phoneMultiFactorInfo must be set for second factor sign-in."

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzj:Z

    xor-int/2addr v0, v2

    const-string v4, "You cannot require sms validation without setting a multi-factor session."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_4

    .line 39
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/google/firebase/auth/internal/zzw;

    .line 40
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzw;->zzc()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    .line 42
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-nez v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    const-string v0, "Invalid MultiFactorSession - use the getSession method in MultiFactorResolver to get a valid sign-in session."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_4

    .line 44
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    const-string v0, "A phone number must not be set for MFA sign-in. A PhoneMultiFactorInfo should be set instead."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 46
    :goto_4
    new-instance v0, Lcom/google/firebase/auth/PhoneAuthOptions;

    iget-object v3, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v4, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzd:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    iget-object v6, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zze:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzf:Landroid/app/Activity;

    iget-object v9, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    iget-object v10, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    iget-object v11, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    const/4 v12, 0x0

    iget-boolean v13, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzj:Z

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/firebase/auth/PhoneAuthOptions;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;ZLcom/google/firebase/auth/zzx;)V

    return-object v0

    .line 31
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireSmsValidation(Z)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzj:Z

    return-object p0
.end method

.method public final setActivity(Landroid/app/Activity;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzf:Landroid/app/Activity;

    return-object p0
.end method

.method public final setCallbacks(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzd:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    return-object p0
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zze:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final setForceResendingToken(Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzg:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    return-object p0
.end method

.method public final setMultiFactorHint(Lcom/google/firebase/auth/PhoneMultiFactorInfo;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzi:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    return-object p0
.end method

.method public final setMultiFactorSession(Lcom/google/firebase/auth/MultiFactorSession;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzh:Lcom/google/firebase/auth/MultiFactorSession;

    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final setTimeout(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;
    .locals 3

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->zzc:Ljava/lang/Long;

    return-object p0
.end method
