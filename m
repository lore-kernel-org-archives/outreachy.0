X-GM-THRID: 6204754090721804288
X-Received: by 10.112.151.9 with SMTP id um9mr5991020lbb.19.1444679277144;
        Mon, 12 Oct 2015 12:47:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.148.143 with SMTP id w137ls513200lfd.105.gmail; Mon, 12 Oct
 2015 12:47:56 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr5991008lbb.19.1444679276480;
        Mon, 12 Oct 2015 12:47:56 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id c7si561894wiy.3.2015.10.12.12.47.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 12:47:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id gb1so161665142wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 12:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=FRwXQ0oJ2YIeU1wi/7Jktb77JPE9YxpOidjsEIH0+Ng=;
        b=wngF/QLyaDmAqB/pSXKHA1wupVapeAoy5x3O36JP2IKVpYXfZrE+OIlm5fe6NC2OVD
         dSh+0NlpDf9+nZ2VcYrMMDstncSV7MjFIafrRDWCWw3rfNSi+dd9Cjd2HppYzWBeW36G
         STzSK65TmcaCHaZ0UJ0a3rM936ZNBwh8wH7gaHkAcC4Cl5qesqvNHNTMIUgNZjNDNe8V
         BNw/rXaWISKOPSKWNW4PXiGxCYbHMdxT351fCq8ZHWnu1ZdlS9jaE4CftiOTy/NGONEC
         oe4HiFbpjlJKGuSCJbhY+eRh3aJwcV+MtxXMvBJtCN/HCKt35329wskohFl1+RhYnAJR
         0ySg==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr36140603wja.87.1444679276336; Mon,
 12 Oct 2015 12:47:56 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Mon, 12 Oct 2015 12:47:56 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510122127160.2057@localhost6.localdomain6>
References: <cover.1444670615.git.shivanib134@gmail.com>
	<aa140d8daabc374f3cc6bfc12625164e47b37acb.1444670615.git.shivanib134@gmail.com>
	<alpine.DEB.2.02.1510122127160.2057@localhost6.localdomain6>
Date: Tue, 13 Oct 2015 01:17:56 +0530
Message-ID: <CAKHNQQHm5y1AkTeew1Qj5WVQbUMESCZ=xoWwz2cjauyLAC9J2w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] Staging: wilc1000:
 host_interface: Remove useless cast
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 12:58 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove useless casts that occur throughout the code.
>> Issue detected using coccinelle.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>> Changes in v2:
>>         Deleted one patch and added another. Improved the other ones.
>>
>>  drivers/staging/wilc1000/host_interface.c | 82 +------------------------------
>>  1 file changed, 1 insertion(+), 81 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
>> index 5e4d620..6c41e62 100644
>> --- a/drivers/staging/wilc1000/host_interface.c
>> +++ b/drivers/staging/wilc1000/host_interface.c
>> @@ -573,7 +573,6 @@ static s32 Handle_SetChannel(tstrWILC_WFIDrv *drvHandler,
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>
> This is too much.  I think the varialbe is still used?  You should just
> remove the (tstrWILC_WFIDrv *).
>
> julia
>

I just realized what Arnd had to say. I'm so sorry. I'm correcting
this. Really very sorry. A big mistake.
Thank you

>>
>>       /*prepare configuration packet*/
>>       strWID.u16WIDid = (u16)WID_CURRENT_CHANNEL;
>> @@ -649,8 +648,6 @@ static s32 Handle_SetOperationMode(tstrWILC_WFIDrv *drvHandler,
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> -
>>
>>       /*prepare configuration packet*/
>>       strWID.u16WIDid = (u16)WID_SET_OPERATION_MODE;
>> @@ -692,7 +689,6 @@ s32 Handle_set_IPAddress(tstrWILC_WFIDrv *drvHandler, u8 *pu8IPAddr, u8 idx)
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       char firmwareIPAddress[4] = {0};
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       if (pu8IPAddr[0] < 192)
>>               pu8IPAddr[0] = 0;
>> @@ -738,7 +734,6 @@ s32 Handle_get_IPAddress(tstrWILC_WFIDrv *drvHandler, u8 *pu8IPAddr, u8 idx)
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       /*prepare configuration packet*/
>>       strWID.u16WIDid = (u16)WID_IP_ADDRESS;
>> @@ -787,7 +782,6 @@ static s32 Handle_SetMacAddress(tstrWILC_WFIDrv *drvHandler,
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>       u8 *mac_buf = kmalloc(ETH_ALEN, GFP_KERNEL);
>>
>>       if (mac_buf == NULL) {
>> @@ -865,8 +859,6 @@ static s32 Handle_CfgParam(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWIDList[32];
>>       u8 u8WidCnt = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> -
>>
>>       down(&(pstrWFIDrv->gtOsCfgValuesSem));
>>
>> @@ -1229,7 +1221,6 @@ static s32 Handle_Scan(tstrWILC_WFIDrv *drvHandler,
>>       u8 *pu8Buffer;
>>       u8 valuesize = 0;
>>       u8 *pu8HdnNtwrksWidVal = NULL;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Setting SCAN params\n");
>>       PRINT_D(HOSTINF_DBG, "Scanning: In [%d] state\n", pstrWFIDrv->enuHostIFstate);
>> @@ -1390,9 +1381,6 @@ static s32 Handle_ScanDone(tstrWILC_WFIDrv *drvHandler, tenuScanEvent enuEvent)
>>  {
>>       s32 s32Error = 0;
>>
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> -
>> -
>>       u8 u8abort_running_scan;
>>       tstrWID strWID;
>>
>> @@ -1446,7 +1434,6 @@ u8 u8ConnectedSSID[6] = {0};
>>  static s32 Handle_Connect(tstrWILC_WFIDrv *drvHandler,
>>                         struct connect_attr *pstrHostIFconnectAttr)
>>  {
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>>       s32 s32Error = 0;
>>       tstrWID strWIDList[8];
>>       u32 u32WidsCount = 0, dummyval = 0;
>> @@ -1871,7 +1858,6 @@ static s32 Handle_ConnectTimeout(tstrWILC_WFIDrv *drvHandler)
>>       tstrConnectInfo strConnectInfo;
>>       tstrWID strWID;
>>       u16 u16DummyReasonCode = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>>
>>       if (pstrWFIDrv == NULL) {
>>               PRINT_ER("Driver handler is NULL\n");
>> @@ -1985,10 +1971,6 @@ static s32 Handle_RcvdNtwrkInfo(tstrWILC_WFIDrv *drvHandler,
>>       tstrNetworkInfo *pstrNetworkInfo = NULL;
>>       void *pJoinParams = NULL;
>>
>> -     tstrWILC_WFIDrv *pstrWFIDrv  = (tstrWILC_WFIDrv *)drvHandler;
>> -
>> -
>> -
>>       bNewNtwrkFound = true;
>>       PRINT_INFO(HOSTINF_DBG, "Handling received network info\n");
>>
>> @@ -2106,7 +2088,6 @@ static s32 Handle_RcvdGnrlAsyncInfo(tstrWILC_WFIDrv *drvHandler,
>>       tstrConnectInfo strConnectInfo;
>>       tstrDisconnectNotifInfo strDisconnectNotifInfo;
>>       s32 s32Err = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>>
>>       if (!pstrWFIDrv) {
>>               PRINT_ER("Driver handler is NULL\n");
>> @@ -2415,8 +2396,6 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
>>       u8 *pu8keybuf;
>>       s8 s8idxarray[1];
>>       s8 ret = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> -
>>
>>       switch (pstrHostIFkeyAttr->enuKeyType) {
>>
>> @@ -2775,8 +2754,6 @@ static void Handle_Disconnect(tstrWILC_WFIDrv *drvHandler)
>>
>>       s32 s32Error = 0;
>>       u16 u16DummyReasonCode = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> -
>>
>>       strWID.u16WIDid = (u16)WID_DISCONNECT;
>>       strWID.enuWIDtype = WID_CHAR;
>> @@ -2900,8 +2877,6 @@ static s32 Handle_GetChnl(tstrWILC_WFIDrv *drvHandler)
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     /* tstrWILC_WFIDrv * pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv; */
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_CURRENT_CHANNEL;
>>       strWID.enuWIDtype = WID_CHAR;
>> @@ -2940,7 +2915,6 @@ static void Handle_GetRssi(tstrWILC_WFIDrv *drvHandler)
>>  {
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_RSSI;
>>       strWID.enuWIDtype = WID_CHAR;
>> @@ -2967,7 +2941,6 @@ static void Handle_GetLinkspeed(tstrWILC_WFIDrv *drvHandler)
>>  {
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       gs8lnkspd = 0;
>>
>> @@ -3054,8 +3027,6 @@ static s32 Handle_Get_InActiveTime(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       u8 *stamac;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> -
>>
>>       strWID.u16WIDid = (u16)WID_SET_STA_MAC_INACTIVE_TIME;
>>       strWID.enuWIDtype = WID_STR;
>> @@ -3120,7 +3091,6 @@ static void Handle_AddBeacon(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Adding BEACON\n");
>>
>> @@ -3188,7 +3158,6 @@ static void Handle_DelBeacon(tstrWILC_WFIDrv *drvHandler)
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_DEL_BEACON;
>>       strWID.enuWIDtype = WID_CHAR;
>> @@ -3281,7 +3250,6 @@ static void Handle_AddStation(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Handling add station\n");
>>       strWID.u16WIDid = (u16)WID_ADD_STA;
>> @@ -3322,7 +3290,7 @@ static void Handle_DelAllSta(tstrWILC_WFIDrv *drvHandler,
>>
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +
>>       u8 i;
>>       u8 au8Zero_Buff[6] = {0};
>>
>> @@ -3377,7 +3345,6 @@ static void Handle_DelStation(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_REMOVE_STA;
>>       strWID.enuWIDtype = WID_BIN;
>> @@ -3419,7 +3386,6 @@ static void Handle_EditStation(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_EDIT_STA;
>>       strWID.enuWIDtype = WID_BIN;
>> @@ -3459,7 +3425,6 @@ static int Handle_RemainOnChan(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       u8 u8remain_on_chan_flag;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>>
>>       /*If it's a pendig remain-on-channel, don't overwrite gWFiDrvHandle values (since incoming msg is garbbage)*/
>>       if (!pstrWFIDrv->u8RemainOnChan_pendingreq) {
>> @@ -3546,7 +3511,6 @@ static int Handle_RegisterFrame(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Handling frame register Flag : %d FrameType: %d\n", pstrHostIfRegisterFrame->bReg, pstrHostIfRegisterFrame->u16FrameType);
>>
>> @@ -3595,7 +3559,6 @@ static u32 Handle_ListenStateExpired(tstrWILC_WFIDrv *drvHandler,
>>       u8 u8remain_on_chan_flag;
>>       tstrWID strWID;
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "CANCEL REMAIN ON CHAN\n");
>>
>> @@ -3681,7 +3644,6 @@ static void Handle_PowerManagement(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       s8 s8PowerMode;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_POWER_MANAGEMENT;
>>
>> @@ -3769,7 +3731,6 @@ static s32 Handle_AddBASession(tstrWILC_WFIDrv *drvHandler,
>>       tstrWID strWID;
>>       int AddbaTimeout = 100;
>>       char *ptr = NULL;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Opening Block Ack session with\nBSSID = %.2x:%.2x:%.2x\nTID=%d\nBufferSize == %d\nSessionTimeOut = %d\n",
>>               strHostIfBASessionInfo->au8Bssid[0],
>> @@ -3857,7 +3818,6 @@ static s32 Handle_DelAllRxBASessions(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       char *ptr = NULL;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>>
>>       PRINT_D(GENERIC_DBG, "Delete Block Ack session with\nBSSID = %.2x:%.2x:%.2x\nTID=%d\n",
>>               strHostIfBASessionInfo->au8Bssid[0],
>> @@ -4235,7 +4195,6 @@ int host_int_remove_wep_key(tstrWILC_WFIDrv *wfi_drv, u8 index)
>>  s32 host_int_set_WEPDefaultKeyID(tstrWILC_WFIDrv *hWFIDrv, u8 u8Index)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>
>> @@ -4290,7 +4249,6 @@ s32 host_int_add_wep_key_bss_sta(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8WepKey,
>>  {
>>
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -4352,7 +4310,6 @@ s32 host_int_add_wep_key_bss_ap(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8WepKey, u
>>  {
>>
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       u8 i;
>>
>> @@ -4425,7 +4382,6 @@ s32 host_int_add_ptk(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8Ptk, u8 u8PtkKeylen,
>>                            const u8 *mac_addr, const u8 *pu8RxMic, const u8 *pu8TxMic, u8 mode, u8 u8Ciphermode, u8 u8Idx)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       u8 u8KeyLen = u8PtkKeylen;
>>       u32 i;
>> @@ -4521,7 +4477,6 @@ s32 host_int_add_rx_gtk(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8RxGtk, u8 u8GtkKe
>>                               const u8 *pu8RxMic, const u8 *pu8TxMic, u8 mode, u8 u8Ciphermode)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       u8 u8KeyLen = u8GtkKeylen;
>>
>> @@ -4622,7 +4577,6 @@ s32 host_int_add_rx_gtk(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8RxGtk, u8 u8GtkKe
>>  s32 host_int_set_pmkid_info(tstrWILC_WFIDrv *hWFIDrv, struct host_if_pmkid_attr *pu8PmkidInfoArray)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       u32 i;
>>
>> @@ -4898,7 +4852,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
>>                                 void *pJoinParams)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       tenuScanConnTimer enuScanConnTimer;
>>
>> @@ -5028,7 +4981,6 @@ s32 host_int_disconnect(tstrWILC_WFIDrv *hWFIDrv, u16 u16ReasonCode)
>>  {
>>       s32 s32Error = 0;
>>       struct host_if_msg msg;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>
>>       if (pstrWFIDrv == NULL) {
>>               PRINT_ER("Driver is null\n");
>> @@ -5135,7 +5087,6 @@ s32 host_int_get_assoc_res_info(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8AssocRespInfo,
>>  {
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>
>>       if (pstrWFIDrv == NULL) {
>>               PRINT_ER("Driver is null\n");
>> @@ -5317,7 +5268,6 @@ int host_int_set_operation_mode(tstrWILC_WFIDrv *wfi_drv, u32 mode)
>>  s32 host_int_get_host_chnl_num(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8ChNo)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -5359,7 +5309,6 @@ s32 host_int_get_host_chnl_num(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8ChNo)
>>  s32 host_int_get_inactive_time(tstrWILC_WFIDrv *hWFIDrv, const u8 *mac, u32 *pu32InactiveTime)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -5403,8 +5352,6 @@ s32 host_int_test_get_int_wid(tstrWILC_WFIDrv *hWFIDrv, u32 *pu32TestMemAddr)
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> -
>>
>>       if (pstrWFIDrv == NULL) {
>>               PRINT_ER("driver is null\n");
>> @@ -5448,8 +5395,6 @@ s32 host_int_get_rssi(tstrWILC_WFIDrv *hWFIDrv, s8 *ps8Rssi)
>>  {
>>       s32 s32Error = 0;
>>       struct host_if_msg msg;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> -
>>
>>       /* prepare the Get RSSI Message */
>>       memset(&msg, 0, sizeof(struct host_if_msg));
>> @@ -5484,10 +5429,6 @@ s32 host_int_get_link_speed(tstrWILC_WFIDrv *hWFIDrv, s8 *ps8lnkspd)
>>       struct host_if_msg msg;
>>       s32 s32Error = 0;
>>
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> -
>> -
>> -
>>       /* prepare the Get LINKSPEED Message */
>>       memset(&msg, 0, sizeof(struct host_if_msg));
>>
>> @@ -5564,7 +5505,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
>>                         struct hidden_network *pstrHiddenNetwork)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       tenuScanConnTimer enuScanConnTimer;
>>
>> @@ -5632,7 +5572,6 @@ s32 hif_set_cfg(tstrWILC_WFIDrv *hWFIDrv, struct cfg_param_val *pstrCfgParamVal)
>>  {
>>
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>
>>       struct host_if_msg msg;
>>
>> @@ -5670,7 +5609,6 @@ s32 hif_set_cfg(tstrWILC_WFIDrv *hWFIDrv, struct cfg_param_val *pstrCfgParamVal)
>>  s32 hif_get_cfg(tstrWILC_WFIDrv *hWFIDrv, u16 u16WID, u16 *pu16WID_Value)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>
>>       down(&(pstrWFIDrv->gtOsCfgValuesSem));
>>
>> @@ -5967,8 +5905,6 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
>>       int ret;
>>
>>       /*obtain driver handle*/
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> -
>>       if (pstrWFIDrv == NULL) {
>>               PRINT_ER("pstrWFIDrv = NULL\n");
>>               return 0;
>> @@ -6229,7 +6165,6 @@ void host_int_ScanCompleteReceived(u8 *pu8Buffer, u32 u32Length)
>>  s32 host_int_remain_on_channel(tstrWILC_WFIDrv *hWFIDrv, u32 u32SessionID, u32 u32duration, u16 chan, wilc_remain_on_chan_expired RemainOnChanExpired, wilc_remain_on_chan_ready RemainOnChanReady, void *pvUserArg)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -6274,7 +6209,6 @@ s32 host_int_remain_on_channel(tstrWILC_WFIDrv *hWFIDrv, u32 u32SessionID, u32 u
>>  s32 host_int_ListenStateExpired(tstrWILC_WFIDrv *hWFIDrv, u32 u32SessionID)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -6309,7 +6243,6 @@ s32 host_int_ListenStateExpired(tstrWILC_WFIDrv *hWFIDrv, u32 u32SessionID)
>>  s32 host_int_frame_register(tstrWILC_WFIDrv *hWFIDrv, u16 u16FrameType, bool bReg)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -6366,7 +6299,6 @@ s32 host_int_add_beacon(tstrWILC_WFIDrv *hWFIDrv, u32 u32Interval,
>>                               u32 u32TailLen, u8 *pu8Tail)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       struct beacon_attr *pstrSetBeaconParam = &msg.body.beacon_info;
>>
>> @@ -6435,7 +6367,6 @@ ERRORHANDLER:
>>  s32 host_int_del_beacon(tstrWILC_WFIDrv *hWFIDrv)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -6469,7 +6400,6 @@ s32 host_int_add_station(tstrWILC_WFIDrv *hWFIDrv,
>>                        struct add_sta_param *pstrStaParams)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       struct add_sta_param *pstrAddStationMsg = &msg.body.add_sta_info;
>>
>> @@ -6518,7 +6448,6 @@ s32 host_int_add_station(tstrWILC_WFIDrv *hWFIDrv,
>>  s32 host_int_del_station(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8MacAddr)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       struct del_sta *pstrDelStationMsg = &msg.body.del_sta_info;
>>
>> @@ -6559,7 +6488,6 @@ s32 host_int_del_station(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8MacAddr)
>>  s32 host_int_del_allstation(tstrWILC_WFIDrv *hWFIDrv, u8 pu8MacAddr[][ETH_ALEN])
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       struct del_all_sta *pstrDelAllStationMsg = &msg.body.del_all_sta_info;
>>       u8 au8Zero_Buff[ETH_ALEN] = {0};
>> @@ -6620,7 +6548,6 @@ s32 host_int_edit_station(tstrWILC_WFIDrv *hWFIDrv,
>>                         struct add_sta_param *pstrStaParams)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       struct add_sta_param *pstrAddStationMsg = &msg.body.add_sta_info;
>>
>> @@ -6659,7 +6586,6 @@ s32 host_int_edit_station(tstrWILC_WFIDrv *hWFIDrv,
>>  s32 host_int_set_power_mgmt(tstrWILC_WFIDrv *hWFIDrv, bool bIsEnabled, u32 u32Timeout)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       struct power_mgmt_param *pstrPowerMgmtParam = &msg.body.pwr_mgmt_info;
>>
>> @@ -6692,8 +6618,6 @@ s32 host_int_set_power_mgmt(tstrWILC_WFIDrv *hWFIDrv, bool bIsEnabled, u32 u32Ti
>>  s32 host_int_setup_multicast_filter(tstrWILC_WFIDrv *hWFIDrv, bool bIsEnabled, u32 u32count)
>>  {
>>       s32 s32Error = 0;
>> -
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       struct set_multicast *pstrMulticastFilterParam = &msg.body.multicast_info;
>>
>> @@ -6942,7 +6866,6 @@ void host_int_freeJoinParams(void *pJoinParams)
>>  s32 host_int_delBASession(tstrWILC_WFIDrv *hWFIDrv, char *pBSSID, char TID)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       struct ba_session_info *pBASessionInfo = &msg.body.session_info;
>>
>> @@ -6972,7 +6895,6 @@ s32 host_int_delBASession(tstrWILC_WFIDrv *hWFIDrv, char *pBSSID, char TID)
>>  s32 host_int_del_All_Rx_BASession(tstrWILC_WFIDrv *hWFIDrv, char *pBSSID, char TID)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>       struct ba_session_info *pBASessionInfo = &msg.body.session_info;
>>
>> @@ -7010,7 +6932,6 @@ s32 host_int_del_All_Rx_BASession(tstrWILC_WFIDrv *hWFIDrv, char *pBSSID, char T
>>  s32 host_int_setup_ipaddress(tstrWILC_WFIDrv *hWFIDrv, u8 *u16ipadd, u8 idx)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       /* TODO: Enable This feature on softap firmware */
>> @@ -7050,7 +6971,6 @@ s32 host_int_setup_ipaddress(tstrWILC_WFIDrv *hWFIDrv, u8 *u16ipadd, u8 idx)
>>  s32 host_int_get_ipaddress(tstrWILC_WFIDrv *hWFIDrv, u8 *u16ipadd, u8 idx)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/aa140d8daabc374f3cc6bfc12625164e47b37acb.1444670615.git.shivanib134%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

