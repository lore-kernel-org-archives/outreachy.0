X-GM-THRID: 6670186659922837504
X-Received: by 2002:a2e:909a:: with SMTP id l26mr1541142ljg.1.1553025384501;
        Tue, 19 Mar 2019 12:56:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls920920lji.14.gmail; Tue, 19 Mar
 2019 12:56:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwy3raWrpa670l22TjrEvW1ygv23DfCZ9XCG6yeEZg/cbENCDXMo3axF93XCsHnL2ehRa/n
X-Received: by 2002:a2e:9ad3:: with SMTP id p19mr1433291ljj.18.1553025383636;
        Tue, 19 Mar 2019 12:56:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025383; cv=none;
        d=google.com; s=arc-20160816;
        b=ykbbaRgIGLurGQRX/cY7zhxCaaPqr1m1+jtvB0NVjsC7QZkYBTCf37rHkjkNz+2IYX
         RMDLb62spMZnu82Do/GujpOfTjWTQQZLpW8t6Hwa++k4aVZG2clZt4B6b6FzwbZ0V6C+
         U5ziqkeXCfNdRWaFkrqlnHEXXih7LA6R4MzXtqT+ZoIvJCI27Dx96sAbo8L1VKvbaRzg
         xyxUHBseqxWz/IkahsASZnphNi50eR9tVIkqThVF/kPz8jYSyCv9zkCBtG4SlviYzDYY
         /9HGv5nuCNynC1VsYFU9CMKk50ZOSKyRzc9X0AjqnhqZ10YU+b5XpwfCUpshsaAFQ5yD
         NNhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=bFnAYQPK2VRpa6tyqSyd6Qfdc9JPlC6ere8IfoIpf4U=;
        b=yvJNPIxUek3AhdASI7+R373s22GEyfD5IW2B7Dwm+Addo/r6Ryp7/LhIBZYTVjj9NI
         T0mDd71UvXnVeSQBiB6uW3cR9OYXvEE+FBDOQGsLuF70pABprk6JyDEgXwiYR54PWKXW
         +PsS69gIVxTLIasSnTA2yxjEskhWwoFwUDqtRyfRvQgsASjeDAbHFxmOCBhDki4KFlmL
         Fl9JzMlkLrdbxRAYTskFmqwi+bHIQ+yRbbxAN4Ak9iP5Dg4xhuIobkFD4N8WM8cUVU8J
         4YOVQF3iUcgDEGPML6wSy3a4i/60jWf7kykskq8rvuq0u7k7KBEy2ONCmNVpZMBxEyNe
         XpKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m16si461423lfl.0.2019.03.19.12.56.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:56:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300008327"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 20:56:22 +0100
Date: Tue, 19 Mar 2019 20:56:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    ioana.ciornei@nxp.com, ruxandra.radulescu@nxp.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fsl-dpaa2: ethsw: Remove
 return variable
In-Reply-To: <20190319192231.8422-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192055550.2460@hadrien>
References: <20190319192231.8422-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove return variable and return return value directly. Issue found by
> Coccinelle using ret.cocci.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


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

