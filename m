X-GM-THRID: 6955860329873014784
X-Received: by 2002:a2e:a374:: with SMTP id i20mr17720800ljn.481.1619543501987;
        Tue, 27 Apr 2021 10:11:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:507:: with SMTP id o7ls6632487ljp.6.gmail; Tue, 27
 Apr 2021 10:11:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzBoEWRnwc93hbNROdByZ2iR43RXTb2jaxKKgZ+phq9L3CAxYQe9d42eO8EiAuypO0asXbb
X-Received: by 2002:a05:651c:44f:: with SMTP id g15mr16924997ljg.48.1619543499945;
        Tue, 27 Apr 2021 10:11:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619543499; cv=none;
        d=google.com; s=arc-20160816;
        b=qHFLd3OGvThkn2vhZ2JOkMI/kaDox2XDVX2rVkRnae3f3Wx7YwO+GBPPgvoy5bA8Md
         A482c6f+hiSjsvBr7Cpozu4Lo/rePQ1UoVj9xOOKAFZeiyia+efV403qNS3jKQyhde3Y
         mOyk8BszvC73PeRdQ5NehPcbyX7vT33MK+sCqNE7MRndABKQIRHODXRzkPXPVHYDOtex
         NMeMyWuV0lI0ax/KO41a2yExqgHF63uDmLogRrrRKennRU49EuFoBXWXJGh8bWZni2Ot
         LXuF3p1LWQrOapenTV6I5cAJ23we7cvHoPN8QyB1t6VC7eivEc99aCSRl+83EAExb/DE
         RwhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=PArroA5TXH+Mq5o7GJedVnO1OGiSCW5vID4Lk9pwxSo=;
        b=Ann65YRvaxiVqqvPt2aY7lIMhhrzYYH4Ftf5Fy6mELS2joR4n8Gj9GUy+rGzZNimIg
         ORg5cPlogsjRManR72aC1txk7eqD8kHrt4eK0HPlTiJfE74q2fFo+qmzz9/1NyhNwkZi
         XZpJRhdGwXBEvAY9O4e7ykJ/qNpEub20pvD8r91zCwqGrzgce5h/0yhSj7o1Yaa7Qz/K
         XcY8+FIyt+oQ9Dm6bJig4Xma2D1pql1lffAIFHe8sHhUKGimxfiYUxXhTSWDedy8X6ue
         vYguteCJs6lB+Qqzr8tGLn8KWEMJGdC9dJFzIuqlpjdER/FcdCWbhGbvfyX6xdkmLKPD
         /+hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b39si607723ljr.1.2021.04.27.10.11.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 10:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AHoaNoq3ErA02W9M/PRPGUAqjBFMkLtp033Aq?=
 =?us-ascii?q?2lEZdDV+dMuEm8ey2MkKzBOcskd0ZFgMkc2NUZPqfVry7phwiLN6AZ6DW03ctH?=
 =?us-ascii?q?KsPMVe6+LZogHIPw3b2qpj2bx7c654YeeAaGRSqcrh+gG3H5IB7bC8kJyAvuvV?=
 =?us-ascii?q?w3dzQQwCUcgJ0y5DBgmWCUFwTgVdbKBJd6a03NZNpDarZB0sAPiTO39tZYT+ju?=
 =?us-ascii?q?HQmImjSRALAANP0njtsRqYrI+/KRSe0xsEOgkj/Z4p+wH+/DDE2g=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,254,1613430000"; 
   d="scan'208";a="379837612"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Apr 2021 19:11:15 +0200
Date: Tue, 27 Apr 2021 19:11:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Tawah Peggy <tawahpeggy98@gmail.com>
cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging:greybus: Add () around
 gcam macro.
In-Reply-To: <20210427170945.GA23366@peggy-Lenovo-V130-15IKB>
Message-ID: <alpine.DEB.2.22.394.2104271910450.9668@hadrien>
References: <20210427170945.GA23366@peggy-Lenovo-V130-15IKB>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 27 Apr 2021, Tawah Peggy wrote:

> checkpatch.pl suggested to add parenthesis around the gcam macro
> variable.
>
> Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>
>
> ---
> changes in v2:
>   - Add parenthesis around other gcam macro in the same paragraph and
>     also remove previous parenthesis since it was added in the wrong
>     place

I think that what is below is your original patch.  Just the log message
has changed.

julia

>
>  drivers/staging/greybus/camera.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index cdbb42cd413b..324a26430f71 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
>
>  #define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
>  #define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> -#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
> +#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
>
>  static int gb_camera_operation_sync_flags(struct gb_connection *connection,
>  					  int type, unsigned int flags,
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210427170945.GA23366%40peggy-Lenovo-V130-15IKB.
>

