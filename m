X-GM-THRID: 6803031575619436544
X-Received: by 2002:a1c:ba42:: with SMTP id k63mr357443wmf.71.1583956307280;
        Wed, 11 Mar 2020 12:51:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8d1:: with SMTP id f17ls1560716wrq.3.gmail; Wed, 11 Mar
 2020 12:51:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsQWLShe8RGBsXn6vzG5kXmNROrS712zP+LV7uUHafntEmR7OZohpYcZtiNx441kDt1T9rc
X-Received: by 2002:adf:a285:: with SMTP id s5mr6458652wra.118.1583956305642;
        Wed, 11 Mar 2020 12:51:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583956305; cv=none;
        d=google.com; s=arc-20160816;
        b=wOnQXwQXItirn1l8d+czKG05ZFSPVnZEcmw7TcbVo6F4MQ91BQ8M6b0T0Gh5iP4B5t
         Q8Stw5ELHo3NdOUwR5C3et0HUM06kNwu9zmndS4Up5wgGtkXCgMUn5w3spop/iZUs2i+
         EK5gVY9VdZbgNS4WpuDnV+oCh3OWeRWxGpd2V6sTL9+TuVg877dTEoTVRjqDF6fbjGwo
         nNu3KUR+78fJ4+M85pk0d4D8AvnDUxYtvafgRBG4PCjjEAw7+AveNqNu3MIjslXbGDzM
         9DJ9ZKjoeDOmqPuFCSLJLST+KVSSJ2CVCihgpifWTKaMhHO9PP52E96Z8xj7DAdhXdnH
         q/oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OjkQVwuCE9sYauK0Dt5wLts3csgMPmfXh82CNtyGkM0=;
        b=rBYN94kuJo1wnhwo2zs8vmv2ywAl73ERE7Hh+GihJHtn6hkRwUu4wkifs5gsjt7Jad
         TGa7o15wM2tPw52HoDe6AHG0dPbIOE0aKNw2JdBvjqoMGhf67zbSIA6MpjmkN6oxUWKv
         Z73XWVgg1y5mwLdN3GXYIPAQZWZkZlbpS2nEsJyueKJ9OFKP1PeWpPEFpAiAfQY89N0A
         COBkrADZOWgntPfpNa6hjjLUSmU96Tc2e8Uvt5SrheFYPaNyaNRfuWTO3icS8cH9XuIZ
         YakQrAtx5HxfhkGRWepxUQwXn4mhXLsFE4LRCxOon4lO5z3X5tA/Ys54xjyG1+KAib5/
         Kqlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o194si317377wme.2.2020.03.11.12.51.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 12:51:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,541,1574118000"; 
   d="scan'208";a="439901065"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 20:51:45 +0100
Date: Wed, 11 Mar 2020 20:51:45 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192u: r8192U_wx: use
 pr_warn() instead of printk()
In-Reply-To: <20200311191638.27974-1-lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003112051190.6093@hadrien>
References: <20200311191638.27974-1-lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Wed, 11 Mar 2020, Lourdes Pedrajas wrote:

> printk() is deprecated, use pr_warn() instead, which is a message printing
> function for network devices, defined in include/linux/netdevice.h.
> Issue found by checkpatch.
>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v2:
> - Correct the subject line from v1 and use the generic pr_warn() since
>   netdev_warn() expect a pointer to a net device.

The dev parameter of the enclosing function is not suitable?

julia

>
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> index 0118edb0b9ab..09ab68865934 100644
> --- a/drivers/staging/rtl8192u/r8192U_wx.c
> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
>  				hwkey);                 /* KeyContent */
>
>  		} else {
> -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> +			pr_warn("wrong type in WEP, not WEP40 and WEP104\n");
>  		}
>
>  	}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200311191638.27974-1-lu%40pplo.net.
>

