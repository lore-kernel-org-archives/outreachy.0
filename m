X-GM-THRID: 6204754090721804288
X-Received: by 10.112.63.165 with SMTP id h5mr6086809lbs.18.1444677991692;
        Mon, 12 Oct 2015 12:26:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.133 with SMTP id eu5ls878626wic.53.gmail; Mon, 12 Oct
 2015 12:26:31 -0700 (PDT)
X-Received: by 10.180.107.167 with SMTP id hd7mr3268356wib.6.1444677991322;
        Mon, 12 Oct 2015 12:26:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si579932wib.2.2015.10.12.12.26.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 12:26:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,674,1437429600"; 
   d="scan'208";a="182414114"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2015 21:26:30 +0200
Date: Mon, 12 Oct 2015 21:26:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] Staging: wilc1000: host_interface:
 Remove unused code
In-Reply-To: <89a5b09ad425b0a21649a5438e3311f92ade83a6.1444670615.git.shivanib134@gmail.com>
Message-ID: <alpine.DEB.2.02.1510122125520.2057@localhost6.localdomain6>
References: <cover.1444670615.git.shivanib134@gmail.com> <89a5b09ad425b0a21649a5438e3311f92ade83a6.1444670615.git.shivanib134@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:

> Remove declaration and initialization of variables that are not used
> anywhere in the code.
> Issue found using coccinelle.

You also removed the typedef.  That should be in the commit message.

julia

> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> Changes in v2:
>         Deleted one patch and added another. Improved the other ones.
> 
>  drivers/staging/wilc1000/host_interface.c | 15 ---------------
>  1 file changed, 15 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 6c41e62..e36c767 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -449,12 +449,6 @@ typedef struct _tstrBssTable {
>  	tstrJoinBssParam *tail;
>  } tstrBssTable;
>  
> -typedef enum {
> -	SCAN_TIMER = 0,
> -	CONNECT_TIMER	= 1,
> -	SCAN_CONNECT_TIMER_FORCE_32BIT = 0xFFFFFFFF
> -} tenuScanConnTimer;
> -
>  /*****************************************************************************/
>  /*																			 */
>  /*							Global Variabls	                                                                 */
> @@ -4853,7 +4847,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
>  {
>  	s32 s32Error = 0;
>  	struct host_if_msg msg;
> -	tenuScanConnTimer enuScanConnTimer;
>  
>  	if (pstrWFIDrv == NULL || pfConnectResult == NULL) {
>  		s32Error = -EFAULT;
> @@ -4861,11 +4854,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
>  		return s32Error;
>  	}
>  
> -	if (hWFIDrv == NULL) {
> -		PRINT_ER("Driver is null\n");
> -		return -EFAULT;
> -	}
> -
>  	if (pJoinParams == NULL) {
>  		PRINT_ER("Unable to Join - JoinParams is NULL\n");
>  		return -EFAULT;
> @@ -4916,7 +4904,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
>  		return -EFAULT;
>  	}
>  
> -	enuScanConnTimer = CONNECT_TIMER;
>  	pstrWFIDrv->hConnectTimer.data = (unsigned long)hWFIDrv;
>  	mod_timer(&pstrWFIDrv->hConnectTimer,
>  		  jiffies + msecs_to_jiffies(HOST_IF_CONNECT_TIMEOUT));
> @@ -5506,7 +5493,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
>  {
>  	s32 s32Error = 0;
>  	struct host_if_msg msg;
> -	tenuScanConnTimer enuScanConnTimer;
>  
>  	if (pstrWFIDrv == NULL || ScanResult == NULL) {
>  		PRINT_ER("pstrWFIDrv or ScanResult = NULL\n");
> @@ -5548,7 +5534,6 @@ s32 host_int_scan(tstrWILC_WFIDrv *hWFIDrv, u8 u8ScanSource,
>  		return -EINVAL;
>  	}
>  
> -	enuScanConnTimer = SCAN_TIMER;
>  	PRINT_D(HOSTINF_DBG, ">> Starting the SCAN timer\n");
>  	pstrWFIDrv->hScanTimer.data = (unsigned long)hWFIDrv;
>  	mod_timer(&pstrWFIDrv->hScanTimer,
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/89a5b09ad425b0a21649a5438e3311f92ade83a6.1444670615.git.shivanib134%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

