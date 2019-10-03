X-GM-THRID: 6743623075363815424
X-Received: by 2002:a5d:67cc:: with SMTP id n12mr7280688wrw.359.1570137017440;
        Thu, 03 Oct 2019 14:10:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e304:: with SMTP id b4ls2117534wrj.14.gmail; Thu, 03 Oct
 2019 14:10:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzCPS4Q7MEkVGplfdIxZxHsPl2uTTBfGyY8V46VKt0ZGLau/qosXPy46duL9WXOKvOdqCEW
X-Received: by 2002:a5d:4144:: with SMTP id c4mr8323038wrq.138.1570137016469;
        Thu, 03 Oct 2019 14:10:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570137016; cv=none;
        d=google.com; s=arc-20160816;
        b=SNNeApvgpeOkqpAzgdIGPi4O1MutseFdxROH0l0Rh2kBiqChmEtES0iFNFc4DNzOzM
         EgSAVg8GbquyPg4a49K2iWNL1CoS/dyLAatEH2zyf9hAK0FHuE7ij5gQaIfy40OCOK3G
         LfMDukp/RXoXvF58+ri+cQmiqMmy4cocUOnfeel9Mb7ueysUDi330IgDHgThBz7ScHqm
         W7cUbEqQzPO9SUdrDkRJGHcqlmYL2Y4/dkA9JI1Jhf4v4jXvTRnDMrtA7OXxA+yYvkNp
         AMKhnieHvuJ22aT433xYmdEVaSbOX7Tz3cZELxX7i9QiR4OiYiLNyT0bglluM6eeBZyO
         f2SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pNvTZonHLqNfU8NMOrmTRQaG7XfWYEKXcGy5rohQfkw=;
        b=khIhzyZGTkBjQhRHJcwfsDQb6/KHSUvUEmYoVTH2wF+p0SK4+s6hAgvjmESNNXv28O
         u3/aPrQS0q6CK5hqNYutnnULxBiUYeIKX2PcmwFsIGuNsRnsdQzr1ujL0OeuK8gzNhm7
         +rPjvC3VxVJLVy0o/UiZ+iRorsiTxsiFzPs8cmdqeT3RvXu3Ib4Bq44WVugdfPuP+che
         9fEiKGUx4o10Rw25nbkBvoBqj13jruS0LfdfpSveYIWl/xfO5ZLgg/6UfMpnl+N7HGD9
         MSEdIloCr/Pt58blI7wGY2lE0Vc712JtmMFEBRYYxe9vX+72/VF7qIXMlPH5N8Ty952u
         vD2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i21si783416wml.4.2019.10.03.14.10.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 14:10:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,253,1566856800"; 
   d="scan'208";a="404640141"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Oct 2019 23:10:15 +0200
Date: Thu, 3 Oct 2019 23:10:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nachammai Karuppiah <nachukannan@gmail.com>
cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Avoid NULL
 comparison
In-Reply-To: <1570122078-23942-1-git-send-email-nachukannan@gmail.com>
Message-ID: <alpine.DEB.2.21.1910032309220.3451@hadrien>
References: <1570122078-23942-1-git-send-email-nachukannan@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 3 Oct 2019, Nachammai Karuppiah wrote:

> Remove NULL comparison. Issue found using checkpatch.pl
>
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 17a4f2c..a2268d5 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -628,7 +628,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
>  		}
>  	}
>
> -	return (service != NULL) ? 0 : -1;
> +	return (service) ? 0 : -1;

You don't need the parentheses.

julia

>  }
>  EXPORT_SYMBOL(vchi_service_open);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570122078-23942-1-git-send-email-nachukannan%40gmail.com.
>

