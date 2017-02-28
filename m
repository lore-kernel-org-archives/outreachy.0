X-GM-THRID: 6392226115163783168
X-Received: by 10.46.9.206 with SMTP id 197mr478254ljj.12.1488306497165;
        Tue, 28 Feb 2017 10:28:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.83 with SMTP id o80ls40037lff.53.gmail; Tue, 28 Feb
 2017 10:28:16 -0800 (PST)
X-Received: by 10.25.0.141 with SMTP id 135mr432994lfa.5.1488306496582;
        Tue, 28 Feb 2017 10:28:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h198si270948wmg.1.2017.02.28.10.28.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:28:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,220,1484002800"; 
   d="scan'208";a="215057722"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 19:27:58 +0100
Date: Tue, 28 Feb 2017 19:27:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] Add comment for struct mutex
 definition.
In-Reply-To: <20170228182154.25401-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1702281926420.2171@hadrien>
References: <20170228182154.25401-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 28 Feb 2017, Tamara Diaconita wrote:

> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/media/cxd2099/cxd2099.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
> index c72c3f0..f88690b 100644
> --- a/drivers/staging/media/cxd2099/cxd2099.c
> +++ b/drivers/staging/media/cxd2099/cxd2099.c
> @@ -54,7 +54,7 @@ struct cxd {
>  	int    amem_read;
>
>  	int    cammode;
> -	struct mutex lock;
> +	struct mutex lock;/*lock for digital devices*/

Comments should have at least one space before, a space after the /* and a
space before the */.

More importantly, it would be good to justify the choice of text for the
comment in some way.  Digital devices does not seem very specific.

julia

>  };
>
>  static int i2c_write_reg(struct i2c_adapter *adapter, u8 adr,
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170228182154.25401-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

