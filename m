X-GM-THRID: 6661092310784147456
X-Received: by 2002:a1c:700d:: with SMTP id l13mr1104261wmc.14.1551105174951;
        Mon, 25 Feb 2019 06:32:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3581:: with SMTP id c123ls1647983wma.9.gmail; Mon, 25
 Feb 2019 06:32:54 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ib8MZXrWXN797xRDTLnRL+vs4CNs60pkznq/F/7c8E4/LHI4Dl9x8LDLoMMv3bnNer29+Vl
X-Received: by 2002:a1c:e3d6:: with SMTP id a205mr1098379wmh.19.1551105174097;
        Mon, 25 Feb 2019 06:32:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551105174; cv=none;
        d=google.com; s=arc-20160816;
        b=DGQwZUVvef8ErO1Cf9g7WKCAe2/pAtmQvDQyeP0DfBxuuy9/yvm/w2mNvoh3uvjb0Y
         EH9+fg0lvuoB1FAqx6SPUI14B/fxmfC53xKPULOlx8hy5L2s2eWMFUKqoYExYEKPC8A4
         ziydtfXMHM6jHOdPAq67OCGakRtwO5smtzy4WbISLS+x9q3EQ0FwI+u/9eciBnYPRHAR
         S8QeRU6rQ7fUoNVG9w8Vgj16xv6SHzhxvXWDNhixl9UgmYIZ7Hy8xmaYx0vjEqTteigp
         iiKI2rGuQwUUbROboI1p3W7I6jOajtwMh0u2364h2MZhEjKXQOzlvr9oqz2L0z9xelgI
         kCeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zIzk0BRE05B6lXU+emxNfp4YCL/cixZLwuCV/aD2jKY=;
        b=ehenihkEdPIt3I5m2ov+EvnW8OW7mcuFRH+ETzSnozj/4VaSQr+Fbg3Z9yc3dj8WtX
         t7oiFqoqAkw3zJZZf25aMrz1s1y5GetG58bNzjsGgwFjx3Dy8oqqedYtoCRH3hZm6eKH
         1Nz0wn0EqirPkgCBPHeRDamqC4H9EQixSyD7E5ClsBtxqL5p7stANk4mfOjh1S+KLF9j
         kDksi02FilGPGf8H9914PtGOJJdAo/tFHmAYYJRsDChm3AGwQ4BLVjwIr/lfmFx5C2tf
         qk0AC+VoTerNLmj5gh8L345yp6URV5jifiQpwtku0rloTsf926aZpzZ27A1ZA3fj82+U
         Elxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r15si423845wmc.4.2019.02.25.06.32.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:32:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,411,1544482800"; 
   d="scan'208";a="370810873"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2019 15:32:53 +0100
Date: Mon, 25 Feb 2019 15:32:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ks7010: Match alignments
 with open paranthesis
In-Reply-To: <20190225143052.8331-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.20.1902251532190.3474@hadrien>
References: <20190225143052.8331-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 25 Feb 2019, Bhanusree Pola wrote:

> Parameters of "netdev_dbg" are adjusted to match alignment with open
> paranthesis.
> Issue found using checkpatch.pl
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>
> v2: commit log modified to be imperative

Our messages probably crossed, but this one is not imperative either.  It
should be Adjust parameters...

julia

>
>  drivers/staging/ks7010/ks_hostif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index d938b0997a53..e48fc36b6ebd 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -730,7 +730,7 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
>  	priv->scan_ind_count++;
>  	if (priv->scan_ind_count < LOCAL_APLIST_MAX + 1) {
>  		netdev_dbg(priv->net_dev, " scan_ind_count=%d :: aplist.size=%d\n",
> -			priv->scan_ind_count, priv->aplist.size);
> +			   priv->scan_ind_count, priv->aplist.size);
>  		get_ap_information(priv, (struct ap_info *)(priv->rxp),
>  				   &priv->aplist.ap[priv->scan_ind_count - 1]);
>  		priv->aplist.size = priv->scan_ind_count;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225143052.8331-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

