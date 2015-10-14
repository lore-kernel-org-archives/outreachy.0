X-GM-THRID: 6205609650776178688
X-Received: by 10.112.132.10 with SMTP id oq10mr1267700lbb.1.1444857684088;
        Wed, 14 Oct 2015 14:21:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.40 with SMTP id f40ls89176lfi.59.gmail; Wed, 14 Oct 2015
 14:21:23 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr1265033lbb.15.1444857683320;
        Wed, 14 Oct 2015 14:21:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id bh7si6265wib.1.2015.10.14.14.21.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 14:21:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,682,1437429600"; 
   d="scan'208";a="150573902"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 23:21:22 +0200
Date: Wed, 14 Oct 2015 23:21:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: rtl8712: rtl871x_mp:
 Remove useless initialisation
In-Reply-To: <654a2272bc6169ee93a7c08a62bc855969d878ba.1444855933.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.02.1510142318200.1977@localhost6.localdomain6>
References: <cover.1444855933.git.amitoj1606@gmail.com> <654a2272bc6169ee93a7c08a62bc855969d878ba.1444855933.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 15 Oct 2015, Amitoj Kaur Chawla wrote:

> Remove intialisation of a variable that is immediately reassigned.
> 
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

In some cases there are many variables that have been simplified, but this 
rule doesn't reflect that, because in this rule the assignment has to come 
immediately after the declaration.  You could have made the following 
rule:

T x
- = C
;
... when != x
x = e;

But that could potentially give cases where the x = e is quite far away, 
which is probably not exactly what you want either.  So you could just say 
that you identified some further opportunities by hand, and cleaned them 
up too.

julia

> // </smpl>
> 
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
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

