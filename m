X-GM-THRID: 6389561220722065408
X-Received: by 10.28.29.216 with SMTP id d207mr1184641wmd.2.1487686029122;
        Tue, 21 Feb 2017 06:07:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls759300ljb.12.gmail; Tue, 21 Feb
 2017 06:07:08 -0800 (PST)
X-Received: by 10.25.151.69 with SMTP id z66mr2613260lfd.12.1487686028182;
        Tue, 21 Feb 2017 06:07:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p185si1146140wme.1.2017.02.21.06.07.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 06:07:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,189,1484002800"; 
   d="scan'208";a="261468244"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 15:06:20 +0100
Date: Tue, 21 Feb 2017 15:06:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: ks7010: Unnecessary
 parentheses are removed and also improved coding style.
In-Reply-To: <20170221140046.GA15208@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702211502290.3121@hadrien>
References: <20170221140046.GA15208@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 21 Feb 2017, Arushi Singhal wrote:

> Unnecessary parentheses are removed as reported by checkpatch.pl
> to make coder nicer and to improve readability.
> Also coding style is improved.For example:-
> It's often nicer to read if &(foo[0]) is converted to foo like:
>      memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
>      memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> Changes in v2:
>   - Make the commit message more clearer.
>   - And correct the error on line number 116
>     in file drivers/staging/ks7010/ks_hostif.c
>      changes:-
>      ap = priv->current_ap;
>      is changed to
>      ap = &priv->current_ap;

Is this a fix on top of the kernel that Greg has?  Or is it a fix on top
of a patch that you have sent previously?  It should be the former, not
the latter.  If you need to correct something, you send a patch that does
the whole thing, not just the correction.

Among other things, the commit message in this patch has nothing to do
with the change that is actually performed.

Also, the v2 informations says that you are making the commit message
clearer, but it looks the same as the original one (to my recollection).

Finally, the subject line says that this is patch 1/2.  So if you need to
send any correction on it, you need to resend the whole series, not just
the patch that changes.  Greg will only apply a complete series at once.

julia

> ---
>  drivers/staging/ks7010/ks_hostif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index ba283ab741a7..b643a37fb943 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -113,7 +113,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
>  	int rc = 0;
>
>  	DPRINTK(3, "\n");
> -	ap = priv->current_ap;
> +	ap = &priv->current_ap;
>
>  	if ((priv->connect_status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS) {
>  		memset(ap, 0, sizeof(struct local_ap_t));
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170221140046.GA15208%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

