.class public final enum Lcom/google/firebase/database/core/view/Event$EventType;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/view/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/core/view/Event$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum CHILD_MOVED:Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

.field public static final enum VALUE:Lcom/google/firebase/database/core/view/Event$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/google/firebase/database/core/view/Event$EventType;

    const-string v1, "CHILD_REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    .line 24
    new-instance v0, Lcom/google/firebase/database/core/view/Event$EventType;

    const-string v1, "CHILD_ADDED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    .line 25
    new-instance v0, Lcom/google/firebase/database/core/view/Event$EventType;

    const-string v1, "CHILD_MOVED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_MOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    .line 26
    new-instance v0, Lcom/google/firebase/database/core/view/Event$EventType;

    const-string v1, "CHILD_CHANGED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    .line 27
    new-instance v0, Lcom/google/firebase/database/core/view/Event$EventType;

    const-string v1, "VALUE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/firebase/database/core/view/Event$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->VALUE:Lcom/google/firebase/database/core/view/Event$EventType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/firebase/database/core/view/Event$EventType;

    .line 21
    sget-object v7, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_REMOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_ADDED:Lcom/google/firebase/database/core/view/Event$EventType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_MOVED:Lcom/google/firebase/database/core/view/Event$EventType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/firebase/database/core/view/Event$EventType;->CHILD_CHANGED:Lcom/google/firebase/database/core/view/Event$EventType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/google/firebase/database/core/view/Event$EventType;->$VALUES:[Lcom/google/firebase/database/core/view/Event$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/core/view/Event$EventType;
    .locals 1

    .line 21
    const-class v0, Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/database/core/view/Event$EventType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/database/core/view/Event$EventType;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/firebase/database/core/view/Event$EventType;->$VALUES:[Lcom/google/firebase/database/core/view/Event$EventType;

    invoke-virtual {v0}, [Lcom/google/firebase/database/core/view/Event$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/core/view/Event$EventType;

    return-object v0
.end method
