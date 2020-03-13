X-GM-THRID: 6803797198848917504
X-Received: by 2002:adf:ea4d:: with SMTP id j13mr6043439wrn.287.1584133639718;
        Fri, 13 Mar 2020 14:07:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls5547452wrq.10.gmail; Fri, 13
 Mar 2020 14:07:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvenjmCCvKdnSytQ+KZUTgK4LBNXpq51ce2tbLx+cfworwm2BXJL7f7TV9bwMUCL2Z0Mkn2
X-Received: by 2002:a5d:608e:: with SMTP id w14mr20839274wrt.201.1584133638296;
        Fri, 13 Mar 2020 14:07:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584133638; cv=none;
        d=google.com; s=arc-20160816;
        b=N2KIxVJrurmk4lJ24RYPeFsYJs9LdSBKxATZ2xvtMRQdEEBsB6HlUy+cfNM0J1v55V
         7OJGsqr/Dor+oCNrYtQbEm7aDNPWX862Wfe8ygXD+Gokx1w5qic/WHwxmY+NQE3GqWkX
         6lbrg41+JyBW6LmQfmVnrITXuMm8fu6Dg1McvVqUlrRtjVb4yOX53WuIjK/RfqpoR6IF
         4grMy3kEJUqggYkl/yO/woGGpIdKcMnONKrfSGEHrapITDxdGhtKwE2ssO8aT/tCyQW1
         /J+5VnBD8IlJ29zR1TllxeVw1e8e8+l7Wzh+f4N0N9ZjZe95zkDv03S+oCwq7PwqsL4I
         Av4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YbFmVzXr0/xp1EThh/qNX53MSrEARPZcwIjDPbzzGXk=;
        b=FgtAgbdk+5wy90tllR5YnKDgETkRo7vunoS3z1fZHEmTPGl+6r6o9Kd3IUCLN8dTrK
         b7U9rED+Nxg0wdl+CJMJtfhSkUnrpAsSLIotQy6xaljoYL58TqbgzA9qlvmND8Ia9aty
         Y+ErbdYsZXpN2TV2pKpdI4cjyEi6CFo28ckgDAEijhVLBBl/bjNKhIjalMgYO8A3U6Ds
         fKDtxAjw9pwdajXv3Gn2FqDTh6pqmKYL8RyYTIJ2nP43KmdKrlkCEidj7O+3WfQGtRFS
         j6h43mG2lpzIetJ7Yd+l1rw2qLz8831zf0no2ijrghjoJ4Ika5YMix6owPgJ9dkOAAzl
         bQPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f1si335930wme.1.2020.03.13.14.07.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:07:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,550,1574118000"; 
   d="scan'208";a="342326781"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 22:06:46 +0100
Date: Fri, 13 Mar 2020 22:06:46 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: media: hanto: remove
 parentheses
In-Reply-To: <20200313204739.32676-5-kgupta@es.iitr.ac.in>
Message-ID: <alpine.DEB.2.21.2003132206050.2355@hadrien>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in> <20200313204739.32676-5-kgupta@es.iitr.ac.in>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Mar 2020, Kaaira Gupta wrote:

> Remove unnecessary parentheses in file hantro_postproc.c. Check reported
> by coccinelle.
>
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/media/hantro/hantro_postproc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index 28a85d301d7f..d99238f4753c 100644
> --- a/drivers/staging/media/hantro/hantro_postproc.c
> +++ b/drivers/staging/media/hantro/hantro_postproc.c
> @@ -15,14 +15,14 @@
>  #define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
>  { \
>  	hantro_reg_write((vpu), \
> -			 &((vpu)->variant->postproc_regs->reg_name), \
> +			 &(vpu)->variant->postproc_regs->reg_name, \
>  			 (val)); \
>  }
>
>  #define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
>  { \
>  	hantro_reg_write_s((vpu), \
> -			   &((vpu)->variant->postproc_regs->reg_name), \
> +			   &(vpu)->variant->postproc_regs->reg_name, \
>  			   (val)); \
>  }

I don't think that vpu and val need parentheses either, ie the occurrence
of vpu that is the first argument to hantro_reg_write_s.

julia

>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200313204739.32676-5-kgupta%40es.iitr.ac.in.
>

