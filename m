X-GM-THRID: 6254956747855757312
X-Received: by 10.25.29.211 with SMTP id d202mr5136707lfd.7.1456346685559;
        Wed, 24 Feb 2016 12:44:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.161.73 with SMTP id k70ls668941lfe.22.gmail; Wed, 24 Feb
 2016 12:44:44 -0800 (PST)
X-Received: by 10.25.210.201 with SMTP id j192mr5152227lfg.6.1456346683839;
        Wed, 24 Feb 2016 12:44:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si256309wmy.2.2016.02.24.12.44.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 12:44:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,494,1449529200"; 
   d="scan'208";a="165877533"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 21:44:43 +0100
Date: Wed, 24 Feb 2016 21:44:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/8] staging: rtl8188eu: core: Remove
 useless return variables
In-Reply-To: <20160224202720.GA22977@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1602242144060.2072@localhost6.localdomain6>
References: <20160224202720.GA22977@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:

> This patch removes unnecessary return variables and compresses the
> return logic.
> The coccinelle script that finds and fixes this issue is:
> 
> @@ type T; identifier i,f; constant C; @@
> - T i;
> ...when != i
> when strict
> ( return -C;
> |
> - i =
> + return
> f(...);
> - return i;
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> index ce655b6..d002f4a 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
> @@ -488,11 +488,9 @@ exit:
> 
>  struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter)
>  {
> -	struct sta_info		*psta;
>  	struct sta_priv		*pstapriv = &padapter->stapriv;
>  	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
> -	 psta = rtw_get_stainfo(pstapriv, bc_addr);
> -	return psta;
> +	 return rtw_get_stainfo(pstapriv, bc_addr);

There is an extra space before the return.  Checkpatch should have 
complained.

julia

>  }
> 
>  u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
> --
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160224202720.GA22977%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
> 

