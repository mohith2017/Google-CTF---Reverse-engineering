.class final Landroidx/navigation/NavBackStackEntry;
.super Ljava/lang/Object;
.source "NavBackStackEntry.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mDestination:Landroidx/navigation/NavDestination;

.field final mId:Ljava/util/UUID;

.field private mNavControllerViewModel:Landroidx/navigation/NavControllerViewModel;


# direct methods
.method constructor <init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavControllerViewModel;)V
    .locals 1

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/navigation/NavBackStackEntry;-><init>(Ljava/util/UUID;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavControllerViewModel;)V

    return-void
.end method

.method constructor <init>(Ljava/util/UUID;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavControllerViewModel;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->mId:Ljava/util/UUID;

    .line 48
    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry;->mDestination:Landroidx/navigation/NavDestination;

    .line 49
    iput-object p3, p0, Landroidx/navigation/NavBackStackEntry;->mArgs:Landroid/os/Bundle;

    .line 50
    iput-object p4, p0, Landroidx/navigation/NavBackStackEntry;->mNavControllerViewModel:Landroidx/navigation/NavControllerViewModel;

    return-void
.end method


# virtual methods
.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mDestination:Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 2

    .line 78
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->mNavControllerViewModel:Landroidx/navigation/NavControllerViewModel;

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroidx/navigation/NavControllerViewModel;->getViewModelStore(Ljava/util/UUID;)Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method setNavControllerViewModel(Landroidx/navigation/NavControllerViewModel;)V
    .locals 0

    .line 72
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->mNavControllerViewModel:Landroidx/navigation/NavControllerViewModel;

    return-void
.end method
