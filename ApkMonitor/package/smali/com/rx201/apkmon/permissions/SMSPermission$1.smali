.class Lcom/rx201/apkmon/permissions/SMSPermission$1;
.super Ljava/lang/Object;
.source "SMSPermission.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rx201/apkmon/permissions/SMSPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/rx201/apkmon/permissions/SMSPermission;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/rx201/apkmon/permissions/SMSPermission;
    .registers 4
    .parameter "in"

    .prologue
    .line 51
    new-instance v0, Lcom/rx201/apkmon/permissions/SMSPermission;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/rx201/apkmon/permissions/SMSPermission;-><init>(Landroid/os/Parcel;Lcom/rx201/apkmon/permissions/SMSPermission;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rx201/apkmon/permissions/SMSPermission$1;->createFromParcel(Landroid/os/Parcel;)Lcom/rx201/apkmon/permissions/SMSPermission;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/rx201/apkmon/permissions/SMSPermission;
    .registers 3
    .parameter "size"

    .prologue
    .line 55
    new-array v0, p1, [Lcom/rx201/apkmon/permissions/SMSPermission;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rx201/apkmon/permissions/SMSPermission$1;->newArray(I)[Lcom/rx201/apkmon/permissions/SMSPermission;

    move-result-object v0

    return-object v0
.end method
