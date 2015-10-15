X-GM-THRID: 6205609650776178688
X-Received: by 10.180.10.135 with SMTP id i7mr1807129wib.2.1444890919858;
        Wed, 14 Oct 2015 23:35:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.133 with SMTP id o127ls117683lfo.38.gmail; Wed, 14 Oct
 2015 23:35:19 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr1702768lbb.10.1444890919008;
        Wed, 14 Oct 2015 23:35:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i8si430655wib.1.2015.10.14.23.35.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 23:35:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,684,1437429600"; 
   d="scan'208";a="150599469"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Oct 2015 08:35:02 +0200
Date: Thu, 15 Oct 2015 08:35:01 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] staging: rtl8712: rtl871x_mp:
 Remove useless initialisation
In-Reply-To: <654a2272bc6169ee93a7c08a62bc855969d878ba.1444855933.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.02.1510150834510.2011@localhost6.localdomain6>
References: <cover.1444855933.git.amitoj1606@gmail.com> <654a2272bc6169ee93a7c08a62bc855969d878ba.1444855933.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 15 Oct 2015, Amitoj Kaur Chawla wrote:

> Remove intialisation of a variable that is immediately reassigned. The
> problem was found using coccinelle semantic patch and further opportunities were
> identified by hand.

Better, thanks.

julia

> The semantic patch used to find this is:
> 
> // <smpl>
> @@
> type T;
> identifier x;
> constant C;
> expression e;
> @@
> 
> T x
> - = C
>  ;
> x = e;
> // </smpl>
> 
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Modify commit message
> 
>  drivers/staging/rtl8712/rtl871x_mp.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
> index 26201ea..00b80f7 100644
> --- a/drivers/staging/rtl8712/rtl871x_mp.c
> +++ b/drivers/staging/rtl8712/rtl871x_mp.c
> @@ -295,7 +295,7 @@ void r8712_SetChannel(struct _adapter *pAdapter)
>  
>  static void SetCCKTxPower(struct _adapter *pAdapter, u8 TxPower)
>  {
> -	u16 TxAGC = 0;
> +	u16 TxAGC;
>  
>  	TxAGC = TxPower;
>  	set_bb_reg(pAdapter, rTxAGC_CCK_Mcs32, bTxAGCRateCCK, TxAGC);
> @@ -726,7 +726,7 @@ static u32 GetPhyRxPktCounts(struct _adapter *pAdapter, u32 selbit)
>  
>  u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter)
>  {
> -	u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0;
> +	u32 OFDM_cnt, CCK_cnt, HT_cnt;
>  
>  	OFDM_cnt = GetPhyRxPktCounts(pAdapter, OFDM_MPDU_OK_BIT);
>  	CCK_cnt = GetPhyRxPktCounts(pAdapter, CCK_MPDU_OK_BIT);
> @@ -736,7 +736,7 @@ u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter)
>  
>  u32 r8712_GetPhyRxPktCRC32Error(struct _adapter *pAdapter)
>  {
> -	u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0;
> +	u32 OFDM_cnt, CCK_cnt, HT_cnt;
>  
>  	OFDM_cnt = GetPhyRxPktCounts(pAdapter, OFDM_MPDU_FAIL_BIT);
>  	CCK_cnt = GetPhyRxPktCounts(pAdapter, CCK_MPDU_FAIL_BIT);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/654a2272bc6169ee93a7c08a62bc855969d878ba.1444855933.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

