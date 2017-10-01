X-GM-THRID: 6471841659603648512
X-Received: by 10.28.15.72 with SMTP id 69mr1299928wmp.3.1506864003697;
        Sun, 01 Oct 2017 06:20:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls1567277wmv.9.canary-gmail; Sun,
 01 Oct 2017 06:20:02 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBOAb03W3kiJbaLnS2bcxQS1+Z9nGAUTIZUfrzTOhIdG0ijV36wqxdh2r6Dp0R2EDZ3Hj/N
X-Received: by 10.28.22.4 with SMTP id 4mr1363495wmw.13.1506864002748;
        Sun, 01 Oct 2017 06:20:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506864002; cv=none;
        d=google.com; s=arc-20160816;
        b=KQuULFA6UfVjRjcC7BpqmwHI27A5AlGOVWqI1W5VW5FpZ32+jTWIFF3XdEXKrpmx7r
         JvCdq0qLd77fIW2V1Ct8cpj2ssLI3/xrY44VIztcVRa5ceC4cGnfBcIQMsTJnht417Zc
         oAqnDZwEUJkj7AvM0X3depaYL23df28GOjI2WpeOSrbM/2UPaDSo5KEaYrwt2Y0QrNZw
         zQ5t6U4hP5q5oeRmnGsWCYbAp10GMTvvgAc7nXgvB20nFXZKYAQNKzLmszhrx7fUJZil
         oLN12xTlNZN1tUG/lyBggktbv7TDsQoTAfCZN02rYZ6ze1sgcZTBzfEByI7QIkUJlg2i
         yUcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=8xz1cWcnxxbJQopKS8rawyVnKbJoX3j/MXAbXU67nCo=;
        b=dfjIIkAwFYV2t9E15pt3oS4GkKfe8UtPUReRuzo4CFzw79Oi1oxbLKwqLn+goQHdAC
         GMj2Tqart/fublsTlED7/wIXw3CiquYsh/OhQYskmprQM3qGGud5IZ4VuqnzKvCIzl8O
         /Cw9xXQtZmxya3oSc1CqXoQVRd78yTfzfaNUTjKwNtB+G0V5Yg7+e7i8oU02ZlT/TbEa
         mbKvqc4F6ALGDLPblu9psOgz+bSkRozEVFzAQiPKRBG9wNDbMP5nNIptaL0EmtVqVrSR
         jluEAoAKGmDJ0O5w5h7emNGjpyks+XyrUeLKJsYBpoI8oCIGxARBr+N5bItR+sTLlyB6
         2N9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 196si162164wmk.4.2017.10.01.06.20.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 06:20:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,464,1500933600"; 
   d="scan'208";a="239281651"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Oct 2017 15:20:01 +0200
Date: Sun, 1 Oct 2017 15:20:01 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>, 
    Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Use usleep_range()
 instead of msleep()
In-Reply-To: <20171001073056.GA7890@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1710011519390.2031@hadrien>
References: <20171001073056.GA7890@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 1 Oct 2017, Mihaela Muraru wrote:

> Since msleep() will often sleep 20 ms for any value given in the
> 1~20ms range, use usleep_range() for a precise wakeup.

Why did you choose these particular argument values?

julia

>
> Issue found by checkpatch.pl.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 631ff73..daf18e8 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
>  		if (status != VCHIQ_RETRY)
>  			break;
>
> -		msleep(1);
> +		usleep_range(1000, 2000);
>  	}
>
>  	return vchiq_status_to_vchi(status);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171001073056.GA7890%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

