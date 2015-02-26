X-GM-THRID: 3789968900096
X-Received: by 10.112.224.12 with SMTP id qy12mr539592lbc.10.1424982959677;
        Thu, 26 Feb 2015 12:35:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.229 with SMTP id l5ls194489wib.32.gmail; Thu, 26 Feb
 2015 12:35:59 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr1605703wiv.0.1424982959367;
        Thu, 26 Feb 2015 12:35:59 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id ew5si200553wid.1.2015.02.26.12.35.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:35:59 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id a1so14620726wgh.5
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 12:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=XHvBLRzxgSsXIWVpN/DdG+V62Lf16TJJBovFDe2Fibs=;
        b=XiFDXLJyZxzsOxRcDE5gO0Us8gGBIJgy+oXlifN7L27gIBu4b5ExOC05ASLSPxdm5R
         dwOcETDNaduje552TIDtVfaGioibOZJSZZO39ZsMWtdaekUj0mJ/R1RMMzC+YnY21eMU
         8l5aKAxFfDaIt/hDRBjv5+7xeuVqpJiZMsXQeMfEstmqctwznQRD+7oN15zqs2ph9oZG
         sGj48oy9cQmmv9XmcmI9hjxUMq5U92h8b0a9YpMWrucLXKnsFHda3p3duve5BFZUMiBO
         vnoimMg45WLS559HqMaEhCbLPx1Kef8DofRUSjqych7Yh3uJP64lG0yvsXR08AcLr0Z+
         UmSw==
X-Received: by 10.194.157.68 with SMTP id wk4mr20605128wjb.123.1424982959258;
        Thu, 26 Feb 2015 12:35:59 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.55.43])
        by mx.google.com with ESMTPSA id gi3sm4378436wic.15.2015.02.26.12.35.57
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 12:35:58 -0800 (PST)
Date: Thu, 26 Feb 2015 23:35:55 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: iio: Remove space before
 tabs
Message-ID: <20150226203555.GA3584@example.com>
References: <1424965153-8759-1-git-send-email-hamohammed.sa@gmail.com>
 <alpine.DEB.2.10.1502261714390.2776@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502261714390.2776@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Feb 26, 2015 at 05:15:00PM +0100, Julia Lawall wrote:
> On Thu, 26 Feb 2015, Haneen Mohammed wrote:
> 
> > This patch removes space before tabs addressing checkpatch.pl warning.
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> >  drivers/iio/accel/mma8452.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/iio/accel/mma8452.c b/drivers/iio/accel/mma8452.c
> > index 221c9d2..fcfa0a6 100644
> > --- a/drivers/iio/accel/mma8452.c
> > +++ b/drivers/iio/accel/mma8452.c
> > @@ -116,7 +116,7 @@ static const int mma8452_samp_freq[8][2] = {
> >   * Hardware has fullscale of -2G, -4G, -8G corresponding to raw value -2048
> >   * The userspace interface uses m/s^2 and we declare micro units
> >   * So scale factor is given by:
> > - * 	g * N * 1000000 / 2048 for N = 2, 4, 8 and g=9.80665
> > + * g * N * 1000000 / 2048 for N = 2, 4, 8 and g=9.80665
> 
> It's a comment.  The original text was more readable.
> 
> julia
> 

yes, I shouldn't have followed checkpatch script blindly! thanks.

> >   */
> >  static const int mma8452_scales[3][2] = {
> >  	{0, 9577}, {0, 19154}, {0, 38307}
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424965153-8759-1-git-send-email-hamohammed.sa%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

