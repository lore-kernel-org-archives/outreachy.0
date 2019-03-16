X-GM-THRID: 6669057124685840384
X-Received: by 2002:a1c:cfc8:: with SMTP id f191mr524266wmg.17.1552762123965;
        Sat, 16 Mar 2019 11:48:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:63d6:: with SMTP id x205ls1506648wmb.11.gmail; Sat, 16
 Mar 2019 11:48:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwU0TzwaIp00i4Kl0DxysA0QYlhe+R6fenUCiWJQnHyLKAWdcsekK7xS5+8Yf0cpXA+6kNC
X-Received: by 2002:a05:600c:2247:: with SMTP id a7mr570137wmm.18.1552762123123;
        Sat, 16 Mar 2019 11:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552762123; cv=none;
        d=google.com; s=arc-20160816;
        b=jP+NdmklAIAcT3c9Uzcf4feY2ZZKx6k/4M+iuEjK+0ix/+r8eMrSLqnjthIX3ngPE1
         Ne17aq1l343YrRcWdz7lVvdOJ59xK9qped3Ijco+eXiJFfri36Piwr4co9fww4vbzxnf
         I0n6ehPEmXFOBlib87ovAx+5Ay9zoTAxiq+nIg32kN6ZY0yWKU5Npyc6tGhGWsHIyCom
         NAf6eY+ryXwBNqc8ZQ6HY64FAFcXXcCdaX/wbK+1q+Fvm3A1jjoK2ya8DVfrXvZE4YFH
         VGAPaLL1TPMqwkoeedL2t5y8aCiK6gXqxfGOz1A90hMD062ZND/FgiE2MHUzoyt4Mahy
         KOyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=phrstWt4WnKIDviaJcv3lrfNIMveQxGNozEIJWNAc68=;
        b=Yv2LWyaIVINSyADMj+X+/HBjNKefybrv3XRRTF8fDB10SIKEPQFoSzmLG0WaYixu9I
         nKSriMC95PRv5kmuDTbjYKVgaSO27Q/z3C8uiBWu7F8ulrdHU7GHrX2JSrZJH0/hncCH
         JeNgV/GoAFdkd/7D8miBiUk8aGvEJgSQbRxwvLWg3e+P3JdcWquY5qMB/B7VxlvwNmGT
         KUcpPok+9yDR60Dc41DWxqeLePz7sWg+oHfAF2rnW3OCSC4yKBRJeEagJqIDIzBPk6xB
         Lr4Qg+A/L2M6kLSQFOJTgrYWFylE73gzCwVGU7/qlmJgh2yTuJl8XBU5JLypQ/Txi++v
         sqaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y84si327796wmd.0.2019.03.16.11.48.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:48:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="374089490"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 19:48:42 +0100
Date: Sat, 16 Mar 2019 19:48:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 9/9] staging: rtl8723bs: hal: Modify
 comparisons in hal_btcoex.c
In-Reply-To: <20190316174543.36254-10-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161948300.2487@hadrien>
References: <20190316174543.36254-1-himadri18.07@gmail.com> <20190316174543.36254-10-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Himadri Pandya wrote:

> - Remove comparison to NULL in file hal_btcoex.c. Suggested by
> Coccinelle.
> - Modify comparison to 0 in order to follow the kernel coding style of
> constant appears on the right side.

This one should also be split up.

julia

>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V2:
> 	- Change subject line
> 	- Include modification to comparison to 0
>
> Changes in V3:
> 	- Break changes into changes per file
> ---
>  drivers/staging/rtl8723bs/hal/hal_btcoex.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> index 2b43f6d3c762..6caddd7834a1 100644
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
> @@ -112,8 +112,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
>  /*  */
>  static u8 halbtcoutsrc_IsBtCoexistAvailable(PBTC_COEXIST pBtCoexist)
>  {
> -	if (!pBtCoexist->bBinded ||
> -		NULL == pBtCoexist->Adapter){
> +	if (!pBtCoexist->bBinded || !pBtCoexist->Adapter){
>  		return false;
>  	}
>  	return true;
> @@ -1571,7 +1570,7 @@ void hal_btcoex_SetDBG(struct adapter *padapter, u32 *pDbgModule)
>  	u32 i;
>
>
> -	if (NULL == pDbgModule)
> +	if (!pDbgModule)
>  		return;
>
>  	for (i = 0; i < BTC_MSG_MAX; i++)
> @@ -1585,7 +1584,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
>  	u32 leftSize;
>
>
> -	if ((NULL == pStrBuf) || (0 == bufSize))
> +	if (!pStrBuf || bufSize == 0)
>  		return 0;
>
>  	pstr = pStrBuf;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316174543.36254-10-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

