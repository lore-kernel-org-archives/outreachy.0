X-GM-THRID: 6619603219062456320
X-Received: by 2002:a37:5805:: with SMTP id m5-v6mr12040756qkb.58.1541257619440;
        Sat, 03 Nov 2018 08:06:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:2a1c:: with SMTP id q28ls2271306qkh.11.gmail; Sat, 03
 Nov 2018 08:06:58 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dDCWH7HvbM3qtKccAfdRmbuu8at+IA9MRsp5IIwxHUIgjuVoR/2guu1kVzbZPcjY2EAxdR
X-Received: by 2002:a37:a315:: with SMTP id m21mr12464993qke.30.1541257618888;
        Sat, 03 Nov 2018 08:06:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541257618; cv=none;
        d=google.com; s=arc-20160816;
        b=yMVnXJ580JCLjFef3aWCqrRjs2Yh48CWT+uyRQQ/hJzoFHfkr78pD426sNt+PaQRd7
         7JEGRLtWnyTGlODXZr8qxLAD6nhv+YxdWvHes2nt4Q388fado+d7gppwm6rRGJMR37rr
         vwg63leBrrjCOGrPcvea+ya0tRoL+d3367FGYfkUVWi+1bvwMJh6PrNoN+pyfK0Gtc6D
         bKTM3C+Q8sPE+Mpo4INCle42myf7QRSsKBHTrG4Wqc1ivtWag4vXZvTInn87Io5/BWP9
         3dFbWs83Tc+yZw6Eu7cFk8UzUFm4P9iwdSJ+zS09+Z3/bh/m8U+oJQwZlasdL4Vbr3oc
         G3Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=j6AgE32cbuq9FiFxpj7dZvEhvEoLjJqDAYs5LsUOlEg=;
        b=nUUZhKneOP1a076UqbKBh7RMq9/6pU508LA8QMWcyi8Rj8hjVD3XBxjKXpK80kMmy9
         XRMOsCteszMgrQFgqSZsuayUX+dulXSfXK5qcEZt2zxaOlwiQJtMGwkO6+Vvg0ZOCekx
         oG1P4BfdXvg5/QYh54la3QM2cpGGtxqtlFjSiklmwRgGP1gkRI6NFyeXLDE+zTztdEUP
         nKpmqkxv7dvjQ5FkGtekKMkq5ws4wI64u6eZUtjLd1qvP4wqPk5/L1u5xsonVhM77LMc
         oA189jcjV5vyfdQ5zpL5T5LM7xybMV4Y0Z0e/5rFaKFaBNFhLVqQRrHTUvRR3i57Vwy3
         OFhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RVu/yeZp";
       spf=pass (google.com: domain of srs0=jw7c=no=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JW7c=NO=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=JW7c=NO=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 21si1219714qkr.2.2018.11.03.08.06.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 08:06:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=jw7c=no=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RVu/yeZp";
       spf=pass (google.com: domain of srs0=jw7c=no=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=JW7c=NO=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 441C12081D;
	Sat,  3 Nov 2018 15:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541257617;
	bh=9/OFxXRmjjfWZL9f1aXchnEreI83UuP6EapOxVRoQCA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RVu/yeZp3sRBkX2NtRUr1bGOwLEQ/9y5p1+HPnkksIgkUimf+13Dafg4Q9yQ3ybsQ
	 WVuto0GHWmI+Wihnsv/HwygOkwtEIiaG5d8BpD8559F/dMfy9lDTkjFtQ5HwLX0mLq
	 9qCSNygeclej+CKwIL4jv6AvmwR3KwFYVo5ib7rU=
Date: Sat, 3 Nov 2018 16:06:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Irenge Jules Bashizi <jbi.octave@gmail.com>, mchehab@kernel.org,
	outreachy-kernel@googlegroups.com, jules.octave@outlook.com
Subject: Re: [Outreachy kernel] [PATCH] staging:dm365_ipipe:Add SPDX License
 Identifier
Message-ID: <20181103150655.GA3486@kroah.com>
References: <20181103120109.780-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1811031516160.2416@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1811031516160.2416@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Nov 03, 2018 at 03:16:39PM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 3 Nov 2018, Irenge Jules Bashizi wrote:
> 
> > Add SPDX license Identifier to fix checkpatch malformed license warning
> >
> > Remove old style text describing the License
> >
> > Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> > ---
> >  .../staging/media/davinci_vpfe/dm365_ipipe.c  | 31 ++++++-------------
> >  1 file changed, 9 insertions(+), 22 deletions(-)
> >
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > index dcfeac818451..20bd6d652931 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > @@ -1,29 +1,16 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> >  /*
> > - * Copyright (C) 2012 Texas Instruments Inc
> 
> Is it correct to remove this?

Not at all, this should never be removed.

thanks,

greg k-h

