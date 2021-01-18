.class public Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$OnDestinationChangedListener;
    }
.end annotation


# static fields
.field private static final KEY_BACK_STACK_ARGS:Ljava/lang/String; = "android-support-nav:controller:backStackArgs"

.field private static final KEY_BACK_STACK_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackIds"

.field private static final KEY_BACK_STACK_UUIDS:Ljava/lang/String; = "android-support-nav:controller:backStackUUIDs"

.field static final KEY_DEEP_LINK_EXTRAS:Ljava/lang/String; = "android-support-nav:controller:deepLinkExtras"

.field static final KEY_DEEP_LINK_HANDLED:Ljava/lang/String; = "android-support-nav:controller:deepLinkHandled"

.field static final KEY_DEEP_LINK_IDS:Ljava/lang/String; = "android-support-nav:controller:deepLinkIds"

.field public static final KEY_DEEP_LINK_INTENT:Ljava/lang/String; = "android-support-nav:controller:deepLinkIntent"

.field private static final KEY_NAVIGATOR_STATE:Ljava/lang/String; = "android-support-nav:controller:navigatorState"

.field private static final KEY_NAVIGATOR_STATE_NAMES:Ljava/lang/String; = "android-support-nav:controller:navigatorState:names"

.field private static final TAG:Ljava/lang/String; = "NavController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mBackStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mBackStackArgsToRestore:[Landroid/os/Parcelable;

.field private mBackStackIdsToRestore:[I

.field private mBackStackUUIDsToRestore:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeepLinkHandled:Z

.field private mEnableOnBackPressedCallback:Z

.field private mGraph:Landroidx/navigation/NavGraph;

.field private mInflater:Landroidx/navigation/NavInflater;

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

.field private mNavigatorStateToRestore:Landroid/os/Bundle;

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private final mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/navigation/NavController$OnDestinationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Landroidx/navigation/NavControllerViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 98
    new-instance v0, Landroidx/navigation/NavigatorProvider;

    invoke-direct {v0}, Landroidx/navigation/NavigatorProvider;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    new-instance v0, Landroidx/navigation/NavController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/navigation/NavController$1;-><init>(Landroidx/navigation/NavController;Z)V

    iput-object v0, p0, Landroidx/navigation/NavController;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Landroidx/navigation/NavController;->mEnableOnBackPressedCallback:Z

    .line 149
    iput-object p1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 150
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 151
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    goto :goto_1

    .line 155
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 157
    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v0, Landroidx/navigation/NavGraphNavigator;

    iget-object v1, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-direct {v0, v1}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 158
    iget-object p1, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v0, Landroidx/navigation/ActivityNavigator;

    iget-object v1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    return-void
.end method

.method private dispatchOnDestinationChanged()Z
    .locals 6

    .line 363
    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 364
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 365
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 371
    iget-object v2, p0, Landroidx/navigation/NavController;->mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 372
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 373
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 372
    invoke-interface {v3, p0, v4, v5}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;
    .locals 4

    .line 631
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    const/4 v1, 0x0

    .line 632
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 633
    aget v2, p1, v1

    if-nez v1, :cond_0

    .line 634
    iget-object v3, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    .line 636
    iget-object p1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 638
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 640
    check-cast v3, Landroidx/navigation/NavGraph;

    .line 643
    :goto_2
    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_2

    .line 644
    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/navigation/NavGraph;

    goto :goto_2

    :cond_2
    move-object v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDestinationCountOnBackStack()I
    .locals 3

    .line 345
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 346
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 851
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 852
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    move-result v0

    .line 853
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v1

    .line 852
    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 856
    :goto_0
    iget-object v1, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 857
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v2

    .line 856
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v1

    .line 858
    invoke-virtual {p1, p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 859
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/navigation/Navigator;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 862
    instance-of p3, p1, Landroidx/navigation/FloatingWindow;

    if-nez p3, :cond_1

    .line 867
    :goto_1
    iget-object p3, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 868
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p3

    instance-of p3, p3, Landroidx/navigation/FloatingWindow;

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 870
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/navigation/NavDestination;->getId()I

    move-result p3

    const/4 p4, 0x1

    .line 869
    invoke-virtual {p0, p3, p4}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 875
    :cond_1
    iget-object p3, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 876
    iget-object p3, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    new-instance p4, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    iget-object v2, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-direct {p4, v1, p2, v2}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavControllerViewModel;)V

    invoke-interface {p3, p4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_2
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    move-object p4, p1

    :cond_3
    :goto_2
    if-eqz p4, :cond_4

    .line 882
    invoke-virtual {p4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    if-nez v1, :cond_4

    .line 883
    invoke-virtual {p4}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 885
    new-instance v1, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-direct {v1, p4, p2, v2}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavControllerViewModel;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    .line 889
    :cond_4
    iget-object p4, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {p4, p3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 891
    new-instance p3, Landroidx/navigation/NavBackStackEntry;

    .line 892
    invoke-virtual {p1, p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p4, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-direct {p3, p1, p2, p4}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavControllerViewModel;)V

    .line 893
    iget-object p2, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {p2, p3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_5
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    if-nez v0, :cond_6

    if-eqz p1, :cond_7

    .line 897
    :cond_6
    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    :cond_7
    return-void
.end method

.method private onGraphCreated(Landroid/os/Bundle;)V
    .locals 9

    .line 464
    iget-object v0, p0, Landroidx/navigation/NavController;->mNavigatorStateToRestore:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "android-support-nav:controller:navigatorState:names"

    .line 465
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 469
    iget-object v2, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v2, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v2

    .line 470
    iget-object v3, p0, Landroidx/navigation/NavController;->mNavigatorStateToRestore:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v2, v1}, Landroidx/navigation/Navigator;->onRestoreState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStackUUIDsToRestore:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 478
    :goto_1
    iget-object v3, p0, Landroidx/navigation/NavController;->mBackStackUUIDsToRestore:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 479
    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 480
    iget-object v4, p0, Landroidx/navigation/NavController;->mBackStackIdsToRestore:[I

    aget v4, v4, v0

    .line 481
    iget-object v5, p0, Landroidx/navigation/NavController;->mBackStackArgsToRestore:[Landroid/os/Parcelable;

    aget-object v5, v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 482
    invoke-virtual {p0, v4}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_2

    .line 488
    iget-object v4, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 490
    :cond_2
    iget-object v4, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    new-instance v7, Landroidx/navigation/NavBackStackEntry;

    iget-object v8, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-direct {v7, v3, v6, v5, v8}, Landroidx/navigation/NavBackStackEntry;-><init>(Ljava/util/UUID;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavControllerViewModel;)V

    invoke-interface {v4, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 484
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown destination during restore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 485
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 492
    :cond_4
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 493
    iput-object v2, p0, Landroidx/navigation/NavController;->mBackStackUUIDsToRestore:[Ljava/lang/String;

    .line 494
    iput-object v2, p0, Landroidx/navigation/NavController;->mBackStackIdsToRestore:[I

    .line 495
    iput-object v2, p0, Landroidx/navigation/NavController;->mBackStackArgsToRestore:[Landroid/os/Parcelable;

    .line 497
    :cond_5
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 498
    iget-boolean v0, p0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 499
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->handleDeepLink(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_7

    .line 503
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    invoke-direct {p0, v0, p1, v2, v2}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    :cond_7
    return-void
.end method

.method private updateOnBackPressedCallbackEnabled()V
    .locals 3

    .line 1041
    iget-object v0, p0, Landroidx/navigation/NavController;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    iget-boolean v1, p0, Landroidx/navigation/NavController;->mEnableOnBackPressedCallback:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1042
    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1041
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 2

    .line 191
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 193
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 194
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 193
    invoke-interface {p1, p0, v1, v0}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 196
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createDeepLink()Landroidx/navigation/NavDeepLinkBuilder;
    .locals 1

    .line 938
    new-instance v0, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    return-object v0
.end method

.method enableOnBackPressed(Z)V
    .locals 0

    .line 1036
    iput-boolean p1, p0, Landroidx/navigation/NavController;->mEnableOnBackPressedCallback:Z

    .line 1037
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method findDestination(I)Landroidx/navigation/NavDestination;
    .locals 2

    .line 681
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 684
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 685
    iget-object p1, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    return-object p1

    .line 687
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 689
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 690
    :goto_0
    instance-of v1, v0, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_1

    .line 692
    :cond_3
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 693
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 672
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 675
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method public getGraph()Landroidx/navigation/NavGraph;
    .locals 2

    .line 661
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    return-object v0

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before calling getGraph()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNavInflater()Landroidx/navigation/NavInflater;
    .locals 3

    .line 387
    iget-object v0, p0, Landroidx/navigation/NavController;->mInflater:Landroidx/navigation/NavInflater;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Landroidx/navigation/NavInflater;

    iget-object v1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavInflater;-><init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->mInflater:Landroidx/navigation/NavInflater;

    .line 390
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mInflater:Landroidx/navigation/NavInflater;

    return-object v0
.end method

.method public getNavigatorProvider()Landroidx/navigation/NavigatorProvider;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-object v0
.end method

.method public getViewModelStoreOwner(I)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 5

    .line 1067
    iget-object v0, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1072
    iget-object v1, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1073
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1074
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 1075
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 1076
    instance-of v4, v3, Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 1082
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No NavGraph with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is on the NavController\'s back stack"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setViewModelStore() before calling getViewModelStoreOwner()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleDeepLink(Landroid/content/Intent;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 532
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "android-support-nav:controller:deepLinkIds"

    .line 533
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 534
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_2

    const-string v5, "android-support-nav:controller:deepLinkExtras"

    .line 535
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 537
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 539
    array-length v1, v3

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 540
    iget-object v1, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroid/net/Uri;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 542
    invoke-virtual {v1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->buildDeepLinkIds()[I

    move-result-object v3

    .line 543
    invoke-virtual {v1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    if-eqz v3, :cond_13

    .line 546
    array-length v1, v3

    if-nez v1, :cond_6

    goto/16 :goto_7

    .line 550
    :cond_6
    invoke-direct {p0, v3}, Landroidx/navigation/NavController;->findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find destination "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NavController"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    .line 556
    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 557
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v5, 0x10000000

    and-int/2addr v5, v1

    const/4 v6, 0x1

    if-eqz v5, :cond_9

    const v7, 0x8000

    and-int/2addr v1, v7

    if-nez v1, :cond_9

    .line 563
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 564
    iget-object v1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 565
    invoke-static {v1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v1

    .line 566
    invoke-virtual {v1, p1}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p1

    .line 567
    invoke-virtual {p1}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 568
    iget-object p1, p0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_8

    .line 569
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 571
    iget-object p1, p0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_8
    return v6

    :cond_9
    const-string p1, "unknown destination during deep link: "

    if-eqz v5, :cond_d

    .line 577
    iget-object v1, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 578
    iget-object v1, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getId()I

    move-result v1

    invoke-virtual {p0, v1, v6}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    :cond_a
    const/4 v1, 0x0

    .line 581
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_c

    add-int/lit8 v5, v1, 0x1

    .line 582
    aget v1, v3, v1

    .line 583
    invoke-virtual {p0, v1}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 588
    new-instance v1, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v1}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 589
    invoke-virtual {v1, v0}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v1

    .line 588
    invoke-direct {p0, v7, v4, v1, v2}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    move v1, v5

    goto :goto_2

    .line 585
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 586
    invoke-static {p1, v1}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return v6

    .line 594
    :cond_d
    iget-object v1, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    const/4 v5, 0x0

    .line 595
    :goto_3
    array-length v7, v3

    if-ge v5, v7, :cond_12

    .line 596
    aget v7, v3, v5

    if-nez v5, :cond_e

    .line 597
    iget-object v8, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    goto :goto_4

    :cond_e
    invoke-virtual {v1, v7}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_11

    .line 602
    array-length v7, v3

    sub-int/2addr v7, v6

    if-eq v5, v7, :cond_10

    .line 604
    check-cast v8, Landroidx/navigation/NavGraph;

    .line 607
    :goto_5
    invoke-virtual {v8}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v1

    invoke-virtual {v8, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_f

    .line 608
    invoke-virtual {v8}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v1

    invoke-virtual {v8, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/navigation/NavGraph;

    goto :goto_5

    :cond_f
    move-object v1, v8

    goto :goto_6

    .line 612
    :cond_10
    invoke-virtual {v8, v4}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    new-instance v9, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v9}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    iget-object v10, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    .line 613
    invoke-virtual {v10}, Landroidx/navigation/NavGraph;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v6}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    move-result-object v9

    .line 614
    invoke-virtual {v9, v0}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v9

    .line 612
    invoke-direct {p0, v8, v7, v9, v2}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 599
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 600
    invoke-static {p1, v7}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_12
    iput-boolean v6, p0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    return v6

    :cond_13
    :goto_7
    return v0
.end method

.method public navigate(I)V
    .locals 1

    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    return-void
.end method

.method public navigate(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 730
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 4

    .line 746
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    .line 748
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_a

    .line 753
    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination;->getAction(I)Landroidx/navigation/NavAction;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    .line 757
    invoke-virtual {v0}, Landroidx/navigation/NavAction;->getNavOptions()Landroidx/navigation/NavOptions;

    move-result-object p3

    .line 759
    :cond_1
    invoke-virtual {v0}, Landroidx/navigation/NavAction;->getDestinationId()I

    move-result v2

    .line 760
    invoke-virtual {v0}, Landroidx/navigation/NavAction;->getDefaultArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 762
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 763
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    move v2, p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    if-nez v1, :cond_4

    .line 769
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 771
    :cond_4
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    if-nez v2, :cond_6

    if-eqz p3, :cond_6

    .line 774
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_6

    .line 775
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    move-result p1

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    return-void

    :cond_6
    if-eqz v2, :cond_9

    .line 784
    invoke-virtual {p0, v2}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object p2

    if-nez p2, :cond_8

    .line 786
    iget-object p2, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-static {p2, v2}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 787
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigation destination "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " referenced from action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    .line 789
    invoke-static {v0, p1}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string p1, ""

    :goto_2
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is unknown to this NavController"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 793
    :cond_8
    invoke-direct {p0, p2, v1, p3, p4}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    .line 780
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 750
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no current navigation node"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public navigate(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 806
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 820
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 1

    .line 836
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroid/net/Uri;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object p1

    .line 839
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 840
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    .line 842
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "navigation destination with deepLink "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is unknown to this NavController"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public navigate(Landroidx/navigation/NavDirections;)V
    .locals 1

    .line 907
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/NavOptions;)V
    .locals 1

    .line 917
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/Navigator$Extras;)V
    .locals 2

    .line 928
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public navigateUp()Z
    .locals 4

    .line 313
    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 316
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v2

    .line 318
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 321
    new-instance v2, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v2, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    .line 322
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/navigation/NavDeepLinkBuilder;->setDestination(I)Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 325
    iget-object v0, p0, Landroidx/navigation/NavController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return v1

    .line 330
    :cond_1
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v2

    .line 331
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    .line 336
    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    move-result v0

    return v0
.end method

.method public popBackStack()Z
    .locals 2

    .line 219
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    move-result v0

    return v0
.end method

.method public popBackStack(IZ)Z
    .locals 0

    .line 237
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method popBackStackInternal(IZ)Z
    .locals 7

    .line 254
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 258
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v2, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 261
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 262
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 263
    iget-object v5, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 264
    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-virtual {v5, v6}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v5

    if-nez p2, :cond_2

    .line 265
    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    if-eq v6, p1, :cond_3

    .line 266
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_3
    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_5

    .line 276
    iget-object p2, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 277
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring popBackStack to destination "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it was not found on the current back stack"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 282
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/Navigator;

    .line 283
    invoke-virtual {p2}, Landroidx/navigation/Navigator;->popBackStack()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 284
    iget-object p2, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 285
    iget-object v0, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz v0, :cond_6

    .line 286
    iget-object p2, p2, Landroidx/navigation/NavBackStackEntry;->mId:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Landroidx/navigation/NavControllerViewModel;->clear(Ljava/util/UUID;)V

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 294
    :cond_7
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    return v1
.end method

.method public removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/navigation/NavController;->mOnDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    .line 1013
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->mNavigatorStateToRestore:Landroid/os/Bundle;

    const-string v0, "android-support-nav:controller:backStackUUIDs"

    .line 1014
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->mBackStackUUIDsToRestore:[Ljava/lang/String;

    const-string v0, "android-support-nav:controller:backStackIds"

    .line 1015
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->mBackStackIdsToRestore:[I

    const-string v0, "android-support-nav:controller:backStackArgs"

    .line 1016
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->mBackStackArgsToRestore:[Landroid/os/Parcelable;

    const-string v0, "android-support-nav:controller:deepLinkHandled"

    .line 1017
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 8

    .line 954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 955
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 957
    iget-object v2, p0, Landroidx/navigation/NavController;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v2}, Landroidx/navigation/NavigatorProvider;->getNavigators()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 958
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 959
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/Navigator;

    invoke-virtual {v3}, Landroidx/navigation/Navigator;->onSaveState()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 961
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 965
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 966
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android-support-nav:controller:navigatorState:names"

    .line 967
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    .line 968
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 970
    :goto_1
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez v2, :cond_3

    .line 972
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 974
    :cond_3
    iget-object v0, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 975
    iget-object v1, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 976
    iget-object v3, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Parcelable;

    const/4 v4, 0x0

    .line 978
    iget-object v5, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 979
    iget-object v7, v6, Landroidx/navigation/NavBackStackEntry;->mId:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 980
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v7

    aput v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    .line 981
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v3, v4

    move v4, v7

    goto :goto_2

    :cond_4
    const-string v4, "android-support-nav:controller:backStackUUIDs"

    .line 983
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "android-support-nav:controller:backStackIds"

    .line 984
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android-support-nav:controller:backStackArgs"

    .line 985
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 987
    :cond_5
    iget-boolean v0, p0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    if-eqz v0, :cond_7

    if-nez v2, :cond_6

    .line 989
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 991
    :cond_6
    iget-boolean v0, p0, Landroidx/navigation/NavController;->mDeepLinkHandled:Z

    const-string v1, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    return-object v2
.end method

.method public setGraph(I)V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->setGraph(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setGraph(ILandroid/os/Bundle;)V
    .locals 1

    .line 425
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;)V
    .locals 1

    const/4 v0, 0x0

    .line 440
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 2

    .line 455
    iget-object v0, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    .line 459
    :cond_0
    iput-object p1, p0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    .line 460
    invoke-direct {p0, p2}, Landroidx/navigation/NavController;->onGraphCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 2

    .line 1025
    iget-object v0, p0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Landroidx/navigation/NavController;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 1032
    iget-object v0, p0, Landroidx/navigation/NavController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Landroidx/navigation/NavController;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void

    .line 1026
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V
    .locals 2

    .line 1046
    invoke-static {p1}, Landroidx/navigation/NavControllerViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    .line 1049
    iget-object p1, p0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 1050
    iget-object v1, p0, Landroidx/navigation/NavController;->mViewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v0, v1}, Landroidx/navigation/NavBackStackEntry;->setNavControllerViewModel(Landroidx/navigation/NavControllerViewModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method
