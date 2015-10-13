X-GM-THRID: 6205025075895205888
X-Received: by 10.194.156.193 with SMTP id wg1mr6642916wjb.3.1444722665277;
        Tue, 13 Oct 2015 00:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.68 with SMTP id gs4ls991840wib.20.gmail; Tue, 13 Oct
 2015 00:51:04 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr3877164wic.4.1444722664876;
        Tue, 13 Oct 2015 00:51:04 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id m4si90408wib.0.2015.10.13.00.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 00:51:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id gb1so77466511wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 00:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6Wub0zoCeS7BhZy31XwNWj/q3eSCJsq8dyT1qVv8MMc=;
        b=JGA+S4qL3LzO+mMIW+IdojLmjQ/Qe36VHvAyXa6Txyq8MndkpK4z52Ss1r/p0aR9hl
         PatSAWe5hRLck4a2vay2keY53gW6xJh7eV4g2espEJD0lQ5P/Q+X0EK99psuKrc6qo5/
         cJOBaWAJq95ofFeJcSr2KM6JiNifv2oZbEdu0lR5wRovLW7itHYODI966vPIxagZRGuG
         sOXB1BVjXSLWK8S2KMTcUYLZuweU2e8R72gpYmxm3I9YI6SxPZAFucHReHDgNwZ7jmS/
         W+PCsh5VuMyFTJkf/dCnte40vW8VE6oMRCCW8KcewBmGcIkI9YZfajd7nFkrWXGUB/FF
         cpcA==
MIME-Version: 1.0
X-Received: by 10.180.87.74 with SMTP id v10mr17799522wiz.66.1444722664486;
 Tue, 13 Oct 2015 00:51:04 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 13 Oct 2015 00:51:04 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510130948490.2391@hadrien>
References: <cover.1444719312.git.shivanib134@gmail.com>
	<86896ad39d920f95d880473a703961f0d69bc75a.1444719312.git.shivanib134@gmail.com>
	<alpine.DEB.2.10.1510130948490.2391@hadrien>
Date: Tue, 13 Oct 2015 13:21:04 +0530
Message-ID: <CAKHNQQFwtKm+32O6QdGd8jPfRahzNUTgREefmOfBzgwbN7_o1g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] Staging: wilc1000:
 host_interface: Remove unnecessary cast
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 1:19 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 13 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove irrelevant cast throughout the code.
>> Semantic patch used:
>>
>> @@
>> type T;
>> T e;
>> identifier x;
>> @@
>>
>> * T x = (T)e;
>
> It looks better now.  You can get Coccinelle to make the change for you
> with
>
> T x =
> - (T)
>   e;
>
> julia
>

Thanks, Julia. :)

>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>> Changes in v3:
>>         -Fix errors in v2 and improve commit message by adding
>>         semantic patches used by coccinelle.
>>
>>  drivers/staging/wilc1000/host_interface.c | 132 ++++++++++++++----------------
>>  1 file changed, 63 insertions(+), 69 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
>> index bfdc756..416e7b6 100644
>> --- a/drivers/staging/wilc1000/host_interface.c
>> +++ b/drivers/staging/wilc1000/host_interface.c
>> @@ -567,7 +567,7 @@ static s32 Handle_SetChannel(tstrWILC_WFIDrv *drvHandler,
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       /*prepare configuration packet*/
>>       strWID.u16WIDid = (u16)WID_CURRENT_CHANNEL;
>> @@ -643,8 +643,7 @@ static s32 Handle_SetOperationMode(tstrWILC_WFIDrv *drvHandler,
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> -
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       /*prepare configuration packet*/
>>       strWID.u16WIDid = (u16)WID_SET_OPERATION_MODE;
>> @@ -686,7 +685,7 @@ s32 Handle_set_IPAddress(tstrWILC_WFIDrv *drvHandler, u8 *pu8IPAddr, u8 idx)
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       char firmwareIPAddress[4] = {0};
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       if (pu8IPAddr[0] < 192)
>>               pu8IPAddr[0] = 0;
>> @@ -732,7 +731,7 @@ s32 Handle_get_IPAddress(tstrWILC_WFIDrv *drvHandler, u8 *pu8IPAddr, u8 idx)
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       /*prepare configuration packet*/
>>       strWID.u16WIDid = (u16)WID_IP_ADDRESS;
>> @@ -781,7 +780,7 @@ static s32 Handle_SetMacAddress(tstrWILC_WFIDrv *drvHandler,
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>       u8 *mac_buf = kmalloc(ETH_ALEN, GFP_KERNEL);
>>
>>       if (mac_buf == NULL) {
>> @@ -859,7 +858,7 @@ static s32 Handle_CfgParam(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWIDList[32];
>>       u8 u8WidCnt = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>
>>       down(&(pstrWFIDrv->gtOsCfgValuesSem));
>> @@ -1223,7 +1222,7 @@ static s32 Handle_Scan(tstrWILC_WFIDrv *drvHandler,
>>       u8 *pu8Buffer;
>>       u8 valuesize = 0;
>>       u8 *pu8HdnNtwrksWidVal = NULL;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Setting SCAN params\n");
>>       PRINT_D(HOSTINF_DBG, "Scanning: In [%d] state\n", pstrWFIDrv->enuHostIFstate);
>> @@ -1384,8 +1383,7 @@ static s32 Handle_ScanDone(tstrWILC_WFIDrv *drvHandler, tenuScanEvent enuEvent)
>>  {
>>       s32 s32Error = 0;
>>
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> -
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       u8 u8abort_running_scan;
>>       tstrWID strWID;
>> @@ -1440,7 +1438,7 @@ u8 u8ConnectedSSID[6] = {0};
>>  static s32 Handle_Connect(tstrWILC_WFIDrv *drvHandler,
>>                         struct connect_attr *pstrHostIFconnectAttr)
>>  {
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>       s32 s32Error = 0;
>>       tstrWID strWIDList[8];
>>       u32 u32WidsCount = 0, dummyval = 0;
>> @@ -1865,7 +1863,7 @@ static s32 Handle_ConnectTimeout(tstrWILC_WFIDrv *drvHandler)
>>       tstrConnectInfo strConnectInfo;
>>       tstrWID strWID;
>>       u16 u16DummyReasonCode = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       if (pstrWFIDrv == NULL) {
>>               PRINT_ER("Driver handler is NULL\n");
>> @@ -1979,9 +1977,7 @@ static s32 Handle_RcvdNtwrkInfo(tstrWILC_WFIDrv *drvHandler,
>>       tstrNetworkInfo *pstrNetworkInfo = NULL;
>>       void *pJoinParams = NULL;
>>
>> -     tstrWILC_WFIDrv *pstrWFIDrv  = (tstrWILC_WFIDrv *)drvHandler;
>> -
>> -
>> +     tstrWILC_WFIDrv *pstrWFIDrv  = drvHandler;
>>
>>       bNewNtwrkFound = true;
>>       PRINT_INFO(HOSTINF_DBG, "Handling received network info\n");
>> @@ -2100,7 +2096,7 @@ static s32 Handle_RcvdGnrlAsyncInfo(tstrWILC_WFIDrv *drvHandler,
>>       tstrConnectInfo strConnectInfo;
>>       tstrDisconnectNotifInfo strDisconnectNotifInfo;
>>       s32 s32Err = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       if (!pstrWFIDrv) {
>>               PRINT_ER("Driver handler is NULL\n");
>> @@ -2409,7 +2405,7 @@ static int Handle_Key(tstrWILC_WFIDrv *drvHandler,
>>       u8 *pu8keybuf;
>>       s8 s8idxarray[1];
>>       s8 ret = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>
>>       switch (pstrHostIFkeyAttr->enuKeyType) {
>> @@ -2769,8 +2765,7 @@ static void Handle_Disconnect(tstrWILC_WFIDrv *drvHandler)
>>
>>       s32 s32Error = 0;
>>       u16 u16DummyReasonCode = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> -
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_DISCONNECT;
>>       strWID.enuWIDtype = WID_CHAR;
>> @@ -2894,8 +2889,7 @@ static s32 Handle_GetChnl(tstrWILC_WFIDrv *drvHandler)
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     /* tstrWILC_WFIDrv * pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv; */
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_CURRENT_CHANNEL;
>>       strWID.enuWIDtype = WID_CHAR;
>> @@ -2934,7 +2928,7 @@ static void Handle_GetRssi(tstrWILC_WFIDrv *drvHandler)
>>  {
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_RSSI;
>>       strWID.enuWIDtype = WID_CHAR;
>> @@ -2961,7 +2955,7 @@ static void Handle_GetLinkspeed(tstrWILC_WFIDrv *drvHandler)
>>  {
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       gs8lnkspd = 0;
>>
>> @@ -3048,7 +3042,7 @@ static s32 Handle_Get_InActiveTime(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       u8 *stamac;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>
>>       strWID.u16WIDid = (u16)WID_SET_STA_MAC_INACTIVE_TIME;
>> @@ -3114,7 +3108,7 @@ static void Handle_AddBeacon(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Adding BEACON\n");
>>
>> @@ -3182,7 +3176,7 @@ static void Handle_DelBeacon(tstrWILC_WFIDrv *drvHandler)
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_DEL_BEACON;
>>       strWID.enuWIDtype = WID_CHAR;
>> @@ -3275,7 +3269,7 @@ static void Handle_AddStation(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Handling add station\n");
>>       strWID.u16WIDid = (u16)WID_ADD_STA;
>> @@ -3316,7 +3310,7 @@ static void Handle_DelAllSta(tstrWILC_WFIDrv *drvHandler,
>>
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>       u8 i;
>>       u8 au8Zero_Buff[6] = {0};
>>
>> @@ -3371,7 +3365,7 @@ static void Handle_DelStation(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_REMOVE_STA;
>>       strWID.enuWIDtype = WID_BIN;
>> @@ -3413,7 +3407,7 @@ static void Handle_EditStation(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_EDIT_STA;
>>       strWID.enuWIDtype = WID_BIN;
>> @@ -3453,7 +3447,7 @@ static int Handle_RemainOnChan(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       u8 u8remain_on_chan_flag;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       /*If it's a pendig remain-on-channel, don't overwrite gWFiDrvHandle values (since incoming msg is garbbage)*/
>>       if (!pstrWFIDrv->u8RemainOnChan_pendingreq) {
>> @@ -3540,7 +3534,7 @@ static int Handle_RegisterFrame(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       u8 *pu8CurrByte;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Handling frame register Flag : %d FrameType: %d\n", pstrHostIfRegisterFrame->bReg, pstrHostIfRegisterFrame->u16FrameType);
>>
>> @@ -3589,7 +3583,7 @@ static u32 Handle_ListenStateExpired(tstrWILC_WFIDrv *drvHandler,
>>       u8 u8remain_on_chan_flag;
>>       tstrWID strWID;
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *) drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "CANCEL REMAIN ON CHAN\n");
>>
>> @@ -3675,7 +3669,7 @@ static void Handle_PowerManagement(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       s8 s8PowerMode;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       strWID.u16WIDid = (u16)WID_POWER_MANAGEMENT;
>>
>> @@ -3763,7 +3757,7 @@ static s32 Handle_AddBASession(tstrWILC_WFIDrv *drvHandler,
>>       tstrWID strWID;
>>       int AddbaTimeout = 100;
>>       char *ptr = NULL;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       PRINT_D(HOSTINF_DBG, "Opening Block Ack session with\nBSSID = %.2x:%.2x:%.2x\nTID=%d\nBufferSize == %d\nSessionTimeOut = %d\n",
>>               strHostIfBASessionInfo->au8Bssid[0],
>> @@ -3851,7 +3845,7 @@ static s32 Handle_DelAllRxBASessions(tstrWILC_WFIDrv *drvHandler,
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>>       char *ptr = NULL;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = drvHandler;
>>
>>       PRINT_D(GENERIC_DBG, "Delete Block Ack session with\nBSSID = %.2x:%.2x:%.2x\nTID=%d\n",
>>               strHostIfBASessionInfo->au8Bssid[0],
>> @@ -4229,7 +4223,7 @@ int host_int_remove_wep_key(tstrWILC_WFIDrv *wfi_drv, u8 index)
>>  s32 host_int_set_WEPDefaultKeyID(tstrWILC_WFIDrv *hWFIDrv, u8 u8Index)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>
>> @@ -4284,7 +4278,7 @@ s32 host_int_add_wep_key_bss_sta(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8WepKey,
>>  {
>>
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -4346,7 +4340,7 @@ s32 host_int_add_wep_key_bss_ap(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8WepKey, u
>>  {
>>
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       u8 i;
>>
>> @@ -4419,7 +4413,7 @@ s32 host_int_add_ptk(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8Ptk, u8 u8PtkKeylen,
>>                            const u8 *mac_addr, const u8 *pu8RxMic, const u8 *pu8TxMic, u8 mode, u8 u8Ciphermode, u8 u8Idx)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       u8 u8KeyLen = u8PtkKeylen;
>>       u32 i;
>> @@ -4515,7 +4509,7 @@ s32 host_int_add_rx_gtk(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8RxGtk, u8 u8GtkKe
>>                               const u8 *pu8RxMic, const u8 *pu8TxMic, u8 mode, u8 u8Ciphermode)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       u8 u8KeyLen = u8GtkKeylen;
>>
>> @@ -4616,7 +4610,7 @@ s32 host_int_add_rx_gtk(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8RxGtk, u8 u8GtkKe
>>  s32 host_int_set_pmkid_info(tstrWILC_WFIDrv *hWFIDrv, struct host_if_pmkid_attr *pu8PmkidInfoArray)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       u32 i;
>>
>> @@ -4892,7 +4886,7 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
>>                                 void *pJoinParams)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL || pfConnectResult == NULL) {
>> @@ -5020,7 +5014,7 @@ s32 host_int_disconnect(tstrWILC_WFIDrv *hWFIDrv, u16 u16ReasonCode)
>>  {
>>       s32 s32Error = 0;
>>       struct host_if_msg msg;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>
>>       if (pstrWFIDrv == NULL) {
>>               PRINT_ER("Driver is null\n");
>> @@ -5127,7 +5121,7 @@ s32 host_int_get_assoc_res_info(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8AssocRespInfo,
>>  {
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>
>>       if (pstrWFIDrv == NULL) {
>>               PRINT_ER("Driver is null\n");
>> @@ -5309,7 +5303,7 @@ int host_int_set_operation_mode(tstrWILC_WFIDrv *wfi_drv, u32 mode)
>>  s32 host_int_get_host_chnl_num(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8ChNo)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -5351,7 +5345,7 @@ s32 host_int_get_host_chnl_num(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8ChNo)
>>  s32 host_int_get_inactive_time(tstrWILC_WFIDrv *hWFIDrv, const u8 *mac, u32 *pu32InactiveTime)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -5395,7 +5389,7 @@ s32 host_int_test_get_int_wid(tstrWILC_WFIDrv *hWFIDrv, u32 *pu32TestMemAddr)
>>
>>       s32 s32Error = 0;
>>       tstrWID strWID;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -5440,7 +5434,7 @@ s32 host_int_get_rssi(tstrWILC_WFIDrv *hWFIDrv, s8 *ps8Rssi)
>>  {
>>       s32 s32Error = 0;
>>       struct host_if_msg msg;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>
>>
>>       /* prepare the Get RSSI Message */
>> @@ -5476,7 +5470,7 @@ s32 host_int_get_link_speed(tstrWILC_WFIDrv *hWFIDrv, s8 *ps8lnkspd)
>>       struct host_if_msg msg;
>>       s32 s32Error = 0;
>>
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>
>>
>>
>> @@ -5556,7 +5550,7 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
>>                         struct hidden_network *pstrHiddenNetwork)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL || ScanResult == NULL) {
>> @@ -5622,7 +5616,7 @@ s32 hif_set_cfg(tstrWILC_WFIDrv *hWFIDrv, struct cfg_param_val *pstrCfgParamVal)
>>  {
>>
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>
>>       struct host_if_msg msg;
>>
>> @@ -5660,7 +5654,7 @@ s32 hif_set_cfg(tstrWILC_WFIDrv *hWFIDrv, struct cfg_param_val *pstrCfgParamVal)
>>  s32 hif_get_cfg(tstrWILC_WFIDrv *hWFIDrv, u16 u16WID, u16 *pu16WID_Value)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>
>>       down(&(pstrWFIDrv->gtOsCfgValuesSem));
>>
>> @@ -5957,7 +5951,7 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
>>       int ret;
>>
>>       /*obtain driver handle*/
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>
>>       if (pstrWFIDrv == NULL) {
>>               PRINT_ER("pstrWFIDrv = NULL\n");
>> @@ -6218,7 +6212,7 @@ void host_int_ScanCompleteReceived(u8 *pu8Buffer, u32 u32Length)
>>  s32 host_int_remain_on_channel(tstrWILC_WFIDrv *hWFIDrv, u32 u32SessionID, u32 u32duration, u16 chan, wilc_remain_on_chan_expired RemainOnChanExpired, wilc_remain_on_chan_ready RemainOnChanReady, void *pvUserArg)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -6263,7 +6257,7 @@ s32 host_int_remain_on_channel(tstrWILC_WFIDrv *hWFIDrv, u32 u32SessionID, u32 u
>>  s32 host_int_ListenStateExpired(tstrWILC_WFIDrv *hWFIDrv, u32 u32SessionID)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -6298,7 +6292,7 @@ s32 host_int_ListenStateExpired(tstrWILC_WFIDrv *hWFIDrv, u32 u32SessionID)
>>  s32 host_int_frame_register(tstrWILC_WFIDrv *hWFIDrv, u16 u16FrameType, bool bReg)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -6355,7 +6349,7 @@ s32 host_int_add_beacon(tstrWILC_WFIDrv *hWFIDrv, u32 u32Interval,
>>                               u32 u32TailLen, u8 *pu8Tail)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       struct beacon_attr *pstrSetBeaconParam = &msg.body.beacon_info;
>>
>> @@ -6424,7 +6418,7 @@ ERRORHANDLER:
>>  s32 host_int_del_beacon(tstrWILC_WFIDrv *hWFIDrv)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       if (pstrWFIDrv == NULL) {
>> @@ -6458,7 +6452,7 @@ s32 host_int_add_station(tstrWILC_WFIDrv *hWFIDrv,
>>                        struct add_sta_param *pstrStaParams)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       struct add_sta_param *pstrAddStationMsg = &msg.body.add_sta_info;
>>
>> @@ -6507,7 +6501,7 @@ s32 host_int_add_station(tstrWILC_WFIDrv *hWFIDrv,
>>  s32 host_int_del_station(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8MacAddr)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       struct del_sta *pstrDelStationMsg = &msg.body.del_sta_info;
>>
>> @@ -6548,7 +6542,7 @@ s32 host_int_del_station(tstrWILC_WFIDrv *hWFIDrv, const u8 *pu8MacAddr)
>>  s32 host_int_del_allstation(tstrWILC_WFIDrv *hWFIDrv, u8 pu8MacAddr[][ETH_ALEN])
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       struct del_all_sta *pstrDelAllStationMsg = &msg.body.del_all_sta_info;
>>       u8 au8Zero_Buff[ETH_ALEN] = {0};
>> @@ -6609,7 +6603,7 @@ s32 host_int_edit_station(tstrWILC_WFIDrv *hWFIDrv,
>>                         struct add_sta_param *pstrStaParams)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       struct add_sta_param *pstrAddStationMsg = &msg.body.add_sta_info;
>>
>> @@ -6648,7 +6642,7 @@ s32 host_int_edit_station(tstrWILC_WFIDrv *hWFIDrv,
>>  s32 host_int_set_power_mgmt(tstrWILC_WFIDrv *hWFIDrv, bool bIsEnabled, u32 u32Timeout)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       struct power_mgmt_param *pstrPowerMgmtParam = &msg.body.pwr_mgmt_info;
>>
>> @@ -6682,7 +6676,7 @@ s32 host_int_setup_multicast_filter(tstrWILC_WFIDrv *hWFIDrv, bool bIsEnabled, u
>>  {
>>       s32 s32Error = 0;
>>
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       struct set_multicast *pstrMulticastFilterParam = &msg.body.multicast_info;
>>
>> @@ -6931,7 +6925,7 @@ void host_int_freeJoinParams(void *pJoinParams)
>>  s32 host_int_delBASession(tstrWILC_WFIDrv *hWFIDrv, char *pBSSID, char TID)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       struct ba_session_info *pBASessionInfo = &msg.body.session_info;
>>
>> @@ -6961,7 +6955,7 @@ s32 host_int_delBASession(tstrWILC_WFIDrv *hWFIDrv, char *pBSSID, char TID)
>>  s32 host_int_del_All_Rx_BASession(tstrWILC_WFIDrv *hWFIDrv, char *pBSSID, char TID)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>       struct ba_session_info *pBASessionInfo = &msg.body.session_info;
>>
>> @@ -6999,7 +6993,7 @@ s32 host_int_del_All_Rx_BASession(tstrWILC_WFIDrv *hWFIDrv, char *pBSSID, char T
>>  s32 host_int_setup_ipaddress(tstrWILC_WFIDrv *hWFIDrv, u8 *u16ipadd, u8 idx)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
>>       struct host_if_msg msg;
>>
>>       /* TODO: Enable This feature on softap firmware */
>> @@ -7039,7 +7033,7 @@ s32 host_int_setup_ipaddress(tstrWILC_WFIDrv *hWFIDrv, u8 *u16ipadd, u8 idx)
>>  s32 host_int_get_ipaddress(tstrWILC_WFIDrv *hWFIDrv, u8 *u16ipadd, u8 idx)
>>  {
>>       s32 s32Error = 0;
>> -     tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
>> +     tstrWILC_WFIDrv *pstrWFIDrv = hWFIDrv;
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/86896ad39d920f95d880473a703961f0d69bc75a.1444719312.git.shivanib134%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

