X-GM-THRID: 9605342035968
X-Received: by 10.182.135.230 with SMTP id pv6mr1837794obb.17.1427152882480;
        Mon, 23 Mar 2015 16:21:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.194 with SMTP id f185ls2190771ioe.82.gmail; Mon, 23
 Mar 2015 16:21:22 -0700 (PDT)
X-Received: by 10.42.49.136 with SMTP id w8mr22390629icf.2.1427152882188;
        Mon, 23 Mar 2015 16:21:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id t6si291348pbs.0.2015.03.23.16.21.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 51E3AA79;
	Mon, 23 Mar 2015 23:21:21 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:25:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: iio: use the BIT macro
 in adc
Message-ID: <20150323212503.GA17603@kroah.com>
References: <1427048268-6999-1-git-send-email-hamohammed.sa@gmail.com>
 <1427048894-7159-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427048894-7159-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 22, 2015 at 09:28:14PM +0300, Haneen Mohammed wrote:
> This patch replace bit shifting on 0,1,2, and 3 with the BIT(x) macro.
> Issue addressed by checkpatcg.pl.
> 
> This was done with the help of Coccinelle:
> 
> @r1@
> constant int g;
> @@
> 
> (
> 0<<g
> |
> 1<<g
> |
> 2<<g
> |
> 3<<g
> )
> 
> @script:python b@
> g2 <<r1.g;
> y;
> @@
> 
> coccinelle.y = int(g2) + 1
> 
> @c@
> constant int r1.g;
> identifier b.y;
> @@
> 
> (
> -(1 << g)
> +BIT(g)
> |
> -(0 << g)
> + 0
> |
> -(2 << g)
> +BIT(y)
> |
> -(3 << g)
> +(BIT(y)| BIT(g))
> )
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c    | 64 ++++++++++++++++++------------------
>  drivers/staging/iio/adc/ad7280a.c   | 58 ++++++++++++++++-----------------
>  drivers/staging/iio/adc/ad7780.c    | 18 +++++-----
>  drivers/staging/iio/adc/ad7816.c    |  2 +-
>  drivers/staging/iio/adc/mxs-lradc.c | 65 +++++++++++++++++++------------------
>  drivers/staging/iio/adc/spear_adc.c |  6 ++--
>  6 files changed, 107 insertions(+), 106 deletions(-)

This patch causes a bunch of compiler warnings to suddenly show up.  I
know it's not directly your fault, but I can't take this patch because
of it.  Feel free to break up your patch to not include the offending
file (hint, I'm not going to tell you because you should have caught
this yourself), or send a patch series that includes this one and then
fixes up those warnings.

thanks,

greg k-h

