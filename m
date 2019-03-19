X-GM-THRID: 6670186659922837504
X-Received: by 2002:a7b:c18d:: with SMTP id y13mr491485wmi.2.1553025553567;
        Tue, 19 Mar 2019 12:59:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e142:: with SMTP id y63ls12993wmg.7.canary-gmail; Tue,
 19 Mar 2019 12:59:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxG+rMdiOdA6lFoYlpuM5Oi/DG3Vl02XmaAa+EbQ/fDwviHVV1isPNQO4hMEnCvFm4v2Hkn
X-Received: by 2002:a1c:f214:: with SMTP id s20mr452968wmc.20.1553025552845;
        Tue, 19 Mar 2019 12:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025552; cv=none;
        d=google.com; s=arc-20160816;
        b=pNOX8g/nPA1UC2sNRepHRyhZJMoROv3wTY3yjpqWcBhOhzPpf+XpKNEkSABQ0xSqSI
         pmMSdpwQqT1XO7B0F4nv6z65jCT+CmqkqyIz53qtykMOx3OrY0NzF5eCqcGSL0C3yB4y
         idbD7Yi/K1KlNuPnnXgrlR55dqBFTLvD3zQKAbQvMJvtWhyHQQyuc4r9u087v6ImEbp8
         giqrteOSVLG6iDPAz+qDTI5CzgR5KLW9EdA5k0jld5oiLqeNmHcGsiVDgWMFkvrjBr21
         ePukPilZ1naNuBhK6ivEQhSBZl6S8DlGur/m/g7LicnL0R/kdQkAJu0AEiZ0QmWod7Z0
         UazA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :to:from:date;
        bh=0iaXsFc7Zb//f65+HgdUT4CKlQYsWIbpeXF6NFynjOk=;
        b=UswhHrGtzW9UQ7XX5LM8TskW613DxMzZUdSFikS/Uttvwgs0QvJ6tM3AYFnP0S2bcH
         FKM+j8uyP/0MaPap9jngTDPciSykGmWkKKeoZS7icpc2bg5ISSBMEJzB5Y8jsZC8vx7w
         RFk4Fd0KLWt05ShuUGQ2fx9nrf0wVXl/bD4G5eANKPlWoCYzU3DKzr1eWaDJ5SJgylrq
         kcQ/mDmCkln53IB3KxgajHvjdZ44EsmYskfXe/H2iClM1Al3b3aK5ne1BOVjYmotnJi1
         sv6I9xcD7m2cIhvbNqTBFg9ESTNFEm0rLG8M7otx73Gqj/LunujJ/eQ4qNzbjfdjAz2A
         MjKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y142si89793wmd.0.2019.03.19.12.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:59:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300008608"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 20:59:09 +0100
Date: Tue, 19 Mar 2019 20:59:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: 'Nishka Dasgupta' via outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fsl-dpaa2: ethsw: Remove
 return variable
In-Reply-To: <20190319192231.8422-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192057190.2460@hadrien>
References: <20190319192231.8422-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

I think this patch was sent to too many people.  You should include the
following arguments when you run checkpatch, to just get the maintainers:

--nokeywords --nogit --nogit-fallback --norolestats --nol

julia

On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove return variable and return return value directly. Issue found by
> Coccinelle using ret.cocci.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> index ad577beeb052..e3c3e427309a 100644
> --- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> +++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> @@ -1350,9 +1350,7 @@ static int ethsw_port_init(struct ethsw_port_priv *port_priv, u16 port)
>  		return err;
>  	}
>
> -	err = ethsw_port_fdb_add_mc(port_priv, def_mcast);
> -
> -	return err;
> +	return ethsw_port_fdb_add_mc(port_priv, def_mcast);
>  }
>
>  static void ethsw_unregister_notifier(struct device *dev)
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190319192231.8422-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

