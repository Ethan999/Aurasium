.class Lcom/rx201/apkmon/GetDeviceIDHandler;
.super Lcom/rx201/apkmon/TransactionHandler;
.source "APIHook.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/rx201/apkmon/TransactionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public HandleAfterTransact(Landroid/os/Parcel;)[B
    .registers 7
    .parameter "parcel"

    .prologue
    const/4 v2, 0x0

    .line 292
    new-instance v3, Lcom/rx201/apkmon/permissions/PrivacyPermission;

    sget-object v4, Lcom/rx201/apkmon/permissions/PrivacyPermission$PRIVACY_TYPE;->IMEI:Lcom/rx201/apkmon/permissions/PrivacyPermission$PRIVACY_TYPE;

    invoke-direct {v3, v4}, Lcom/rx201/apkmon/permissions/PrivacyPermission;-><init>(Lcom/rx201/apkmon/permissions/PrivacyPermission$PRIVACY_TYPE;)V

    invoke-static {v3}, Lcom/rx201/apkmon/Utility;->PolicyCheck(Lcom/rx201/apkmon/permissions/AurasiumPermission;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 295
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readException()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_22

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 301
    .local v1, newp:Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const-string v2, "000000000000000"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 305
    .end local v1           #newp:Landroid/os/Parcel;
    :cond_21
    :goto_21
    return-object v2

    .line 296
    :catch_22
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    goto :goto_21
.end method