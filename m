X-GM-THRID: 6668944264527872000
X-Received: by 2002:a1c:200e:: with SMTP id g14mr511826wmg.13.1552738703586;
        Sat, 16 Mar 2019 05:18:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e142:: with SMTP id y63ls1437443wmg.7.canary-gmail; Sat,
 16 Mar 2019 05:18:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqydp7dk9ABzU4ldObAnB7URkVIo8T/t/V1xTPGjFthjrkDjofa0vWKQ7imGaj0Ol1Scxx5K
X-Received: by 2002:a1c:a406:: with SMTP id n6mr500472wme.24.1552738702791;
        Sat, 16 Mar 2019 05:18:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552738702; cv=none;
        d=google.com; s=arc-20160816;
        b=LTM/LOgi9FnX+UaokSzmYIix3WJSOg2ukldPJLvi83Qzvc8HBvAy2bUBJlKeVWeU16
         XS6tb3r5hJHAxFA+tuFhw9g4UF55kZkS/BqU7kI6LteLE2jj8/V2U7+jXbV+te7tLsNQ
         yySVAE3ZVMl4fEI3eH5DBqxR7E4rsm6pfGUtaJwjhM4h1lyDMyvhq539cEM+jdTOrgnL
         iN69HbWisMfMyrkNKIHT3jWYFfvRTDGQ+KqlxeTtnSU76iP/f2k2imLMsOymv4mpNIuL
         Y9jXdWDblyMBS8mFD4PHyTDo9gNKJ5E+dxvGOZ4+h1VXEqVUWPu6rw7ctiqHWbTHeENS
         6y8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9nmFZjXNk4SxLkPTCuYKQB4NAj/j15HFX7l5O7ldIgA=;
        b=o7i6+GSgN0Uo+teicja9/znP0/dHTpZMGc6bBX+C+/kKFgAQyxBuF5urGtU+rrruxG
         AJdqI8PkYiEn0ummKOcdku3oJKH0nooAc+1LBa9XxAWdDUiw2GAk52ozitcI5bYdZY9Q
         2gOYO39pQYrPsUG2wU5u7o4S9jlimyZrQpXTpbqFBZpaLRTwPzOHz6c+Dwrfstxk2f1G
         pNq0d9L5FhdwNy0XVgin16DIvSbxcPbk9Gie75MDJfu+NOB3EL0qetva0nb7n1nBkpIP
         8qMbw+d6VBif6cnqouRBfHLMP7WJ7PwTfDjCoC9WNHibWWVLbzTl6P7mN8p7HCSOtv0S
         u3Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y84si297482wmd.0.2019.03.16.05.18.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:18:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="373992542"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 13:18:22 +0100
Date: Sat, 16 Mar 2019 13:18:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8723bs: hal: Remove
 comparision to NULL
In-Reply-To: <20190316102759.20272-4-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161317440.2487@hadrien>
References: <20190316102759.20272-1-himadri18.07@gmail.com> <20190316102759.20272-4-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Himadri Pandya wrote:

> Remove comparision to NULL. Suggested by Coccinelle.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/hal_btcoex.c | 8 ++++----
>  drivers/staging/rtl8723bs/hal/hal_com.c    | 8 ++++----
>  2 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> index 2b43f6d3c762..8eb28f97ebcc 100644
> --- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> +++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> @@ -75,7 +75,7 @@ static BTCDBGINFO GLBtcDbgInfo;
>
>  static void DBG_BT_INFO_INIT(PBTCDBGINFO pinfo, u8 *pbuf, u32 size)
>  {
> -	if (NULL == pinfo)
> +	if (!pinfo)
>  		return;
>
>  	memset(pinfo, 0, sizeof(BTCDBGINFO));
> @@ -95,7 +95,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
>
>  	pinfo = &GLBtcDbgInfo;
>
> -	if (NULL == pinfo->info)
> +	if (!pinfo->info)
>  		return;
>
>  	msglen = strlen(dbgmsg);
> @@ -1571,7 +1571,7 @@ void hal_btcoex_SetDBG(struct adapter *padapter, u32 *pDbgModule)
>  	u32 i;
>
>
> -	if (NULL == pDbgModule)
> +	if (!pDbgModule)
>  		return;
>
>  	for (i = 0; i < BTC_MSG_MAX; i++)
> @@ -1585,7 +1585,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
>  	u32 leftSize;
>
>
> -	if ((NULL == pStrBuf) || (0 == bufSize))
> +	if (!pStrBuf || (0 == bufSize))

It's another issue, so not for this patch, but the kernel prefers
constants on the right.

julia

>  		return 0;
>
>  	pstr = pStrBuf;
> diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
> index 7f8ec55b08f1..b97b53c34449 100644
> --- a/drivers/staging/rtl8723bs/hal/hal_com.c
> +++ b/drivers/staging/rtl8723bs/hal/hal_com.c
> @@ -18,7 +18,7 @@ u8 rtw_hal_data_init(struct adapter *padapter)
>  	if (is_primary_adapter(padapter)) {	/* if (padapter->isprimary) */
>  		padapter->hal_data_sz = sizeof(struct hal_com_data);
>  		padapter->HalData = vzalloc(padapter->hal_data_sz);
> -		if (padapter->HalData == NULL) {
> +		if (!padapter->HalData) {
>  			DBG_8192C("cannot alloc memory for HAL DATA\n");
>  			return _FAIL;
>  		}
> @@ -909,7 +909,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf)
>  	int i;
>  	u8 trigger;
>
> -	if (buf == NULL)
> +	if (!buf)
>  		goto exit;
>
>  	trigger = rtw_read8(adapter, REG_C2HEVT_CLEAR);
> @@ -982,7 +982,7 @@ void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *pst
>  	u8 i, rf_type, limit;
>  	u32 tx_ra_bitmap;
>
> -	if (psta == NULL)
> +	if (!psta)
>  		return;
>
>  	tx_ra_bitmap = 0;
> @@ -1407,7 +1407,7 @@ bool GetHexValueFromString(char *szStr, u32 *pu4bVal, u32 *pu4bMove)
>  	char *szScan = szStr;
>
>  	/*  Check input parameter. */
> -	if (szStr == NULL || pu4bVal == NULL || pu4bMove == NULL) {
> +	if (!szStr || !pu4bVal || !pu4bMove) {
>  		DBG_871X("GetHexValueFromString(): Invalid input arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
>  			 szStr, pu4bVal, pu4bMove);
>  		return false;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316102759.20272-4-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

