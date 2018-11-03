X-GM-THRID: 6619601914535346176
X-Received: by 2002:a7b:c018:: with SMTP id c24-v6mr119970wmb.7.1541254429049;
        Sat, 03 Nov 2018 07:13:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:da01:: with SMTP id r1-v6ls802073wmg.24.gmail; Sat, 03
 Nov 2018 07:13:48 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dpmlmr0DWxxRH4f0VYE7xcmYcm9MYOJGZNoPIn9RCZzJ5POwHNMyEiIiKyxBw/KqBgK1T1
X-Received: by 2002:a7b:c018:: with SMTP id c24-v6mr119966wmb.7.1541254428063;
        Sat, 03 Nov 2018 07:13:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541254428; cv=none;
        d=google.com; s=arc-20160816;
        b=owJV+3faHLSI7Z5bbNVYiadafCxVlvByzHGVHmXbtZlcxrM/vs4NXyiXQwir/wnFme
         3rq+vdyj3TSbAOs7Zzw00PoUhv8DD29axSpGT+rA8IWh1H/WrYAb/7qoNkP68BeyrTFb
         lWRjuNBKqfUl0RFVj2Lwp/XPxoWffGeFjsp/qnJTzmwt4g8KqPRL1mt1srEwamoIo1s3
         8k+saW2zE6ikHuFjoxX+KeISBZ31pWLrdPYgUHReqCuVcH3Qcs0+908wHQyex3E+jezW
         fR1TeiOFyAKfB5NvMPHL7zOXNSiy92vaAqjYfxiErv6ZtbqVtJBg0rqJbD5HLLuVVsSF
         v7/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=gUmSdelHuyqaIzH4x6ni/eK0OIv/t1fFbsYuhjljS7U=;
        b=bQIAXEYcayOobqqJDGf2wc7lO8mF5MrtMWDa23e27KZUObOnqoRyZAQPRh2NV22bSr
         F3TR4hVfPCBqNXZ72rXov6nuasBdxGIHIiFQtCVolNOzppe/IgyqlXHERqU+KxlJEzLl
         0g95ZBqeH1Cm3a2HvDyHZMSGhRhNoKYzTmFBh07LuPielcsggOtwJJHxgwDbCSGx1ItI
         3vKho2PcaTHrHunj2+hbznijHZpOmbbIHR992RD1gWAZNVwPWVxc87F7w6y20OHHQZnN
         od1o3Z6Mob0ZzjcwQK39SPVTV1QeCohU4a1I69voMimm4+EXF0WYg1M7+9L07EHxd6pW
         aP0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v6-v6si1173288wrn.0.2018.11.03.07.13.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 07:13:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,460,1534802400"; 
   d="scan'208";a="353984750"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 15:13:47 +0100
Date: Sat, 3 Nov 2018 15:13:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v4 2/5] staging: greybus: shorten
 comparison to NULL
In-Reply-To: <f4c8e02349e53545f542f02e453bf18f340ed897.1541246060.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1811031513180.2416@hadrien>
References: <cover.1541246060.git.code@wizofe.uk> <f4c8e02349e53545f542f02e453bf18f340ed897.1541246060.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Nov 2018, Ioannis Valasakis wrote:

> Shorten pointer NULL check by simple truth test
> Reported by checkpatch.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
> index 6b1f3a27fa9d..d6b0d49130c0 100644
> --- a/drivers/staging/greybus/core.c
> +++ b/drivers/staging/greybus/core.c
> @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
>  static const struct greybus_bundle_id *
>  greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
>  {
> -	if (id == NULL)
> +	if (!id)

This seems to have the right start and end now.

>  		return NULL;
>
>  	for (; id->vendor || id->product || id->class || id->driver_info;
> --
> 2.19.1
>
>
> --
> ta
> ioannis

You don't need to put anything down here.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f4c8e02349e53545f542f02e453bf18f340ed897.1541246060.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

