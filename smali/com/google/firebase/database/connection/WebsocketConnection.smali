.class Lcom/google/firebase/database/connection/WebsocketConnection;
.super Ljava/lang/Object;
.source "WebsocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;,
        Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;,
        Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MS:J = 0x7530L

.field private static final KEEP_ALIVE_TIMEOUT_MS:J = 0xafc8L

.field private static final MAX_FRAME_SIZE:I = 0x4000

.field private static connectionId:J


# instance fields
.field private conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

.field private connectTimeout:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

.field private delegate:Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;

.field private everConnected:Z

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

.field private isClosed:Z

.field private keepAlive:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private totalFrames:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;Ljava/lang/String;)V
    .locals 4

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->everConnected:Z

    .line 157
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    .line 173
    iput-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

    .line 174
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 175
    iput-object p4, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->delegate:Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;

    .line 176
    sget-wide v0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionId:J

    .line 177
    new-instance p4, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ws_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocket"

    invoke-direct {p4, p1, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 178
    invoke-direct {p0, p2, p3, p5}, Lcom/google/firebase/database/connection/WebsocketConnection;->createConnection(Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/connection/WebsocketConnection;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/firebase/database/connection/WebsocketConnection;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->everConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/database/connection/WebsocketConnection;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->resetKeepAlive()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/database/connection/WebsocketConnection;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/firebase/database/connection/WebsocketConnection;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->handleIncomingFrame(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/database/connection/WebsocketConnection;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->onClosed()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/database/connection/WebsocketConnection;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->closeIfNeverConnected()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/database/connection/WebsocketConnection;)Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    return-object p0
.end method

.method private appendFrame(Ljava/lang/String;)V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/connection/util/StringListReader;->addString(Ljava/lang/String;)V

    .line 249
    iget-wide v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 253
    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/util/StringListReader;->freeze()V

    .line 254
    iget-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/util/StringListReader;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/util/JsonMapper;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    .line 256
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingFrame complete frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->delegate:Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;->onMessage(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 263
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing frame (cast error): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/util/StringListReader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->close()V

    .line 265
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->shutdown()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 259
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-virtual {v2}, Lcom/google/firebase/database/connection/util/StringListReader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->close()V

    .line 261
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->shutdown()V

    :cond_1
    :goto_0
    return-void
.end method

.method private closeIfNeverConnected()V
    .locals 3

    .line 358
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->everConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "timed out on connect"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->close()V

    :cond_1
    return-void
.end method

.method private createConnection(Lcom/google/firebase/database/connection/HostInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/HostInfo;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 186
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/HostInfo;->isSecure()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/HostInfo;->getNamespace()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p2, v0, p1, p3}, Lcom/google/firebase/database/connection/HostInfo;->getConnectionUrl(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 187
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 188
    iget-object p3, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {p3}, Lcom/google/firebase/database/connection/ConnectionContext;->getUserAgent()Ljava/lang/String;

    move-result-object p3

    const-string v0, "User-Agent"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object p3, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

    invoke-virtual {p3}, Lcom/google/firebase/database/connection/ConnectionContext;->getApplicationId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "X-Firebase-GMPID"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance p3, Lcom/google/firebase/database/tubesock/WebSocket;

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectionContext:Lcom/google/firebase/database/connection/ConnectionContext;

    const/4 v1, 0x0

    invoke-direct {p3, v0, p1, v1, p2}, Lcom/google/firebase/database/tubesock/WebSocket;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    .line 191
    new-instance p1, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;

    invoke-direct {p1, p0, p3, v1}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClientTubesock;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection;Lcom/google/firebase/database/tubesock/WebSocket;Lcom/google/firebase/database/connection/WebsocketConnection$1;)V

    return-object p1
.end method

.method private extractFrameCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 283
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->handleNewFrameCount(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    :cond_1
    const/4 v0, 0x1

    .line 292
    invoke-direct {p0, v0}, Lcom/google/firebase/database/connection/WebsocketConnection;->handleNewFrameCount(I)V

    return-object p1
.end method

.method private handleIncomingFrame(Ljava/lang/String;)V
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->resetKeepAlive()V

    .line 299
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->appendFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->extractFrameCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    invoke-direct {p0, p1}, Lcom/google/firebase/database/connection/WebsocketConnection;->appendFrame(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleNewFrameCount(I)V
    .locals 3

    int-to-long v0, p1

    .line 271
    iput-wide v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    .line 272
    new-instance p1, Lcom/google/firebase/database/connection/util/StringListReader;

    invoke-direct {p1}, Lcom/google/firebase/database/connection/util/StringListReader;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    .line 273
    iget-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandleNewFrameCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->totalFrames:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private isBuffering()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->frameReader:Lcom/google/firebase/database/connection/util/StringListReader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nop()Ljava/lang/Runnable;
    .locals 1

    .line 324
    new-instance v0, Lcom/google/firebase/database/connection/WebsocketConnection$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/connection/WebsocketConnection$2;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection;)V

    return-object v0
.end method

.method private onClosed()V
    .locals 4

    .line 342
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "closing itself"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->shutdown()V

    :cond_1
    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    .line 347
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 348
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method private resetKeepAlive()V
    .locals 5

    .line 311
    iget-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 314
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset keepAlive. Remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Reset keepAlive"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->nop()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private shutdown()V
    .locals 2

    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    .line 354
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->delegate:Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;

    iget-boolean v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->everConnected:Z

    invoke-interface {v0, v1}, Lcom/google/firebase/database/connection/WebsocketConnection$Delegate;->onDisconnect(Z)V

    return-void
.end method

.method private static splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    aput-object p0, p1, v1

    return-object p1

    .line 368
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int v2, v1, p1

    .line 370
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 371
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "websocket is being closed"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->isClosed:Z

    .line 219
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    invoke-interface {v1}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->close()V

    .line 220
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    .line 224
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public open()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->connect()V

    .line 197
    iget-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/database/connection/WebsocketConnection$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/connection/WebsocketConnection$1;-><init>(Lcom/google/firebase/database/connection/WebsocketConnection;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    .line 198
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->resetKeepAlive()V

    .line 232
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/database/util/JsonMapper;->serializeJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4000

    .line 233
    invoke-static {v0, v1}, Lcom/google/firebase/database/connection/WebsocketConnection;->splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 234
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 235
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->send(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 238
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->conn:Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lcom/google/firebase/database/connection/WebsocketConnection$WSClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    iget-object v1, p0, Lcom/google/firebase/database/connection/WebsocketConnection;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to serialize message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    invoke-direct {p0}, Lcom/google/firebase/database/connection/WebsocketConnection;->shutdown()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
