X-GM-THRID: 3900162703360
X-Received: by 10.112.138.202 with SMTP id qs10mr1531977lbb.24.1424980979877;
        Thu, 26 Feb 2015 12:02:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.42 with SMTP id y10ls84401lag.71.gmail; Thu, 26 Feb
 2015 12:02:59 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr1566540laj.6.1424980979398;
        Thu, 26 Feb 2015 12:02:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si195373wid.1.2015.02.26.12.02.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 12:02:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,654,1418079600"; 
   d="scan'208";a="123566469"
Received: from ppp-188-174-123-88.dynamic.mnet-online.de (HELO [192.168.1.53]) ([188.174.123.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2015 21:02:58 +0100
Date: Thu, 26 Feb 2015 21:02:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Simplify if
 statements
In-Reply-To: <1424977815-7967-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.10.1502262101260.3032@hadrien>
References: <1424977815-7967-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Ksenija Stanojevic wrote:

> This patch simplifies if conditions that contain bool variable,
> using Coccinelle script:
> @@
> bool x;
> symbol true;
> @@
> - x == true
> + x

Good job on finding the symbol keyword :)

Of course you should also make rules for == false, != true and != false.

julia

> Signed-off-by:Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 02707d8..2efcb20 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -2822,7 +2822,7 @@ static bool rtl8192_adapter_start(struct net_device *dev)
>  		}
>  		dm_initialize_txpower_tracking(dev);
>
> -		if (priv->bDcut == true) {
> +		if (priv->bDcut) {
>  			u32 i, TempCCk;
>  			u32 tmpRegA = rtl8192_QueryBBReg(dev, rOFDM0_XATxIQImbalance, bMaskDWord);
>  			for (i = 0; i < TxBBGainTableLength; i++) {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424977815-7967-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

