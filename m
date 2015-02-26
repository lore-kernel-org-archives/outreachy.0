X-GM-THRID: 3789968900096
X-Received: by 10.180.182.201 with SMTP id eg9mr1459756wic.3.1424967331202;
        Thu, 26 Feb 2015 08:15:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.6 with SMTP id m6ls708367wiy.54.canary; Thu, 26 Feb
 2015 08:15:30 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr1430119wjb.4.1424967330759;
        Thu, 26 Feb 2015 08:15:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r6si157115wix.0.2015.02.26.08.15.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 08:15:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,653,1418079600"; 
   d="scan'208";a="123540087"
Received: from unknown (HELO [10.159.0.228]) ([213.174.98.20])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2015 17:15:11 +0100
Date: Thu, 26 Feb 2015 17:15:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: iio: Remove space before
 tabs
In-Reply-To: <1424965153-8759-1-git-send-email-hamohammed.sa@gmail.com>
Message-ID: <alpine.DEB.2.10.1502261714390.2776@hadrien>
References: <1424965153-8759-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Haneen Mohammed wrote:

> This patch removes space before tabs addressing checkpatch.pl warning.
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/iio/accel/mma8452.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/iio/accel/mma8452.c b/drivers/iio/accel/mma8452.c
> index 221c9d2..fcfa0a6 100644
> --- a/drivers/iio/accel/mma8452.c
> +++ b/drivers/iio/accel/mma8452.c
> @@ -116,7 +116,7 @@ static const int mma8452_samp_freq[8][2] = {
>   * Hardware has fullscale of -2G, -4G, -8G corresponding to raw value -2048
>   * The userspace interface uses m/s^2 and we declare micro units
>   * So scale factor is given by:
> - * 	g * N * 1000000 / 2048 for N = 2, 4, 8 and g=9.80665
> + * g * N * 1000000 / 2048 for N = 2, 4, 8 and g=9.80665

It's a comment.  The original text was more readable.

julia

>   */
>  static const int mma8452_scales[3][2] = {
>  	{0, 9577}, {0, 19154}, {0, 38307}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424965153-8759-1-git-send-email-hamohammed.sa%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

