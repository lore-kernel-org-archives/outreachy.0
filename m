X-GM-THRID: 3321174687744
X-Received: by 10.112.168.104 with SMTP id zv8mr2409826lbb.10.1424813065575;
        Tue, 24 Feb 2015 13:24:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls750488lab.39.gmail; Tue, 24 Feb
 2015 13:24:24 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr2451674laj.6.1424813064899;
        Tue, 24 Feb 2015 13:24:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si993214wif.0.2015.02.24.13.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 13:24:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,641,1418079600"; 
   d="scan'208";a="123239546"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2015 22:24:24 +0100
Date: Tue, 24 Feb 2015 22:24:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Simplify if
 condition.
In-Reply-To: <1424811248-8150-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1502242219480.2081@localhost6.localdomain6>
References: <1424811248-8150-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 24 Feb 2015, Ksenija Stanojevic wrote:

> Remove unnecessary TRUE statement. Fields bDynamicTxLowPower and
> bDynamicTxHighPower are of bool type so such change is correct.

I'm not sure that the compiler actually enforces that a bool variable is 
only ever assigned to 0 or 1.  The kernel contains the following in 
types.h:

typedef _Bool                   bool;

The following (non-kernel) C program compiles with gcc with no errors:

_Bool x;

int main () {
  x = 12;
}

To be on the safe side, you should look at each place where the field is 
initialized and check that the value is true or false.  If that is what 
you have already done, then you should expand on the commit message to 
make that more apparent.

julia

> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8190_rtl8256.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
> index 1868352..e000329 100644
> --- a/drivers/staging/rtl8192u/r8190_rtl8256.c
> +++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
> @@ -225,7 +225,7 @@ void PHY_SetRF8256CCKTxPower(struct net_device *dev, u8 powerlevel)
>  	struct r8192_priv *priv = ieee80211_priv(dev);
>  	TxAGC = powerlevel;
>  
> -	if (priv->bDynamicTxLowPower == TRUE) {
> +	if (priv->bDynamicTxLowPower) {
>  		if (priv->CustomerID == RT_CID_819x_Netcore)
>  			TxAGC = 0x22;
>  		else
> @@ -275,7 +275,7 @@ void PHY_SetRF8256OFDMTxPower(struct net_device *dev, u8 powerlevel)
>  			priv->Pwr_Track = writeVal_tmp;
>  		}
>  
> -		if (priv->bDynamicTxHighPower == TRUE) {
> +		if (priv->bDynamicTxHighPower) {
>  			/*Add by Jacken 2008/03/06
>  			 *Emily, 20080613. Set low tx power for both MCS and legacy OFDM
>  			 */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424811248-8150-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

