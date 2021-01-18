.class final enum Lcom/google/firebase/database/core/Repo$TransactionStatus;
.super Ljava/lang/Enum;
.source "Repo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/Repo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransactionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/core/Repo$TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum INITIALIZING:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

.field public static final enum SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 717
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->INITIALIZING:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 722
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "RUN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 725
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "SENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 728
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "COMPLETED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 731
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "SENT_NEEDS_ABORT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 733
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const-string v1, "NEEDS_ABORT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/firebase/database/core/Repo$TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 716
    sget-object v8, Lcom/google/firebase/database/core/Repo$TransactionStatus;->INITIALIZING:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v8, v1, v2

    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->$VALUES:[Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 716
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .locals 1

    .line 716
    const-class v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/database/core/Repo$TransactionStatus;
    .locals 1

    .line 716
    sget-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->$VALUES:[Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-virtual {v0}, [Lcom/google/firebase/database/core/Repo$TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/core/Repo$TransactionStatus;

    return-object v0
.end method
