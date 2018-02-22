X-GM-THRID: 6525083396428791808
X-Received: by 10.25.31.66 with SMTP id f63mr392118lff.42.1519283739814;
        Wed, 21 Feb 2018 23:15:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.203 with SMTP id f194ls352403lfg.2.gmail; Wed, 21 Feb
 2018 23:15:38 -0800 (PST)
X-Google-Smtp-Source: AH8x227Tan3DTQ2pws2o/6mH/oV7TXndhQLAIa2za3i9Aqb5GCzN0G8TDm7IHuqnzlfO3XyF7NhF
X-Received: by 10.25.158.145 with SMTP id h139mr396249lfe.30.1519283738579;
        Wed, 21 Feb 2018 23:15:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519283738; cv=none;
        d=google.com; s=arc-20160816;
        b=heVT/604rhzKmGghOcWXptnuRg5ohpbpni7fE0v5HoRMun0qbkx0GlFAIaSRf+YGlS
         gyKSgP+h3Q2zMKJLtuXVLw3zXRE+QlBBNbcSG+7+a3bLuEz1Go2nrxdf5/dmTWLbMx8p
         K45cRxDkWbErgJDtPTLj4SKzQOChBbRfQLgfjiEj2Rb6rSehGdiK3DY7DN3u/BF+QNRQ
         S1fwc4N3qefpGBF3chqfcVKqh0yoYHtHca1wchvJRPRafEDDe6+DF7mgGuYfJKtwNhDc
         YyiPdn4Ocr150YtZrcwUGHugNIuJolndJyCX3qyI0Q6C/5sv23cO3AurGqE33AsXjrAd
         fU7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=B8WpQi/w9j18vg0pmXz7it9xQFmWtb1p2XSVACb8SOU=;
        b=ZyYOiU0JRYhl0g4lS0h1GT+SPWHp+KBMKryM66SwHwil0xyS9klNG+L+SLnvWTo+lh
         TqZHMSZ/jcWGPr05q92xL2mjxm8qRydAkvqM+CrLjM8mq3tNAfZ++DzXJsNECpvqDnPg
         zwYXb04G5X8fHGkd8FyPaWakG/KuPdjcgEkGzUjt4KAapvtvVrJfyzhIp/N1ZJ8Md7u2
         Ke1AmR+cGQK53tiy+tf9Ify35Nn2NrrADwHP/1pwdy11XpDrykdWKpF8C+tqIQJ9he2C
         p1bcbQ+N2m2ql+GUKDULZ9+owv168MlwJt/nX6gnvO4bMM4v+nbeIyTaHoI8m61I+tuE
         ROAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b10si410679lfe.4.2018.02.21.23.15.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 23:15:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,377,1515452400"; 
   d="scan'208";a="255704411"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2018 08:15:37 +0100
Date: Thu, 22 Feb 2018 08:15:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: speakup: remove space
 after a cast
In-Reply-To: <1519248823-3468-4-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802220812510.2281@hadrien>
References: <1519248823-3468-1-git-send-email-santhameena13@gmail.com> <1519248823-3468-4-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 21 Feb 2018, Santha Meena Ramamoorthy wrote:

> Remove blank space after a cast to conform to Linux kernel coding style.
> Problem found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
> Change since v3:
>  - Nothing has changed.

Actually, this is v3, so change since v3 doesn't make sense.  It should be
change in v3 or change since v2.  And actually the change that you have
made is to add an indication that there was no change since the first
version, ie the change is the comment about there being no code change.

Please send a new version and state clearly the situation.  Here for
example your v4 will have made the change description more clear since v3,
but there has been no change in the code modification since v1.

thanks,
julia

>
>  drivers/staging/speakup/speakup_dtlk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
> index f109b51..dbebed0 100644
> --- a/drivers/staging/speakup/speakup_dtlk.c
> +++ b/drivers/staging/speakup/speakup_dtlk.c
> @@ -266,7 +266,7 @@ static char synth_read_tts(void)
>  	outb_p(ch, speakup_info.port_tts);
>  	while (synth_readable())
>  		cpu_relax();
> -	return (char) ch;
> +	return (char)ch;
>  }
>
>  /* interrogate the DoubleTalk PC and return its settings */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519248823-3468-4-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

