X-GM-THRID: 6803689046764683264
X-Received: by 2002:a17:90a:37ea:: with SMTP id v97mr10844148pjb.26.1584116108961;
        Fri, 13 Mar 2020 09:15:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls1333014pjo.2.canary-gmail;
 Fri, 13 Mar 2020 09:15:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuLoQWYdrP2IobSyJRRa9sXN0y9bgi2cIW9zAg0jXcBmKnbbRFZ+ix5EsRXsvHtgSJIlC/f
X-Received: by 2002:a17:90a:5d03:: with SMTP id s3mr11019143pji.31.1584116107102;
        Fri, 13 Mar 2020 09:15:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584116107; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4lxQ1HyKNNJC8CBxJaphqSfWjQNYRbR4xdHemri+2g095R67odyGMkpwbFqZTB80o
         Wcxf81TyYYVj55Npe6n0rtU7mXSVAUdSdGGXRnYNCpiKyFN2mXhRjo7xj4K8PlnZ6ro/
         p5vffTzu9IFm1RDL3O2q5w4aFV1iDP6rehCMQJgnhKx1VPfMUqMur5Bw/D4CR2omf1ym
         RTiP0sfbiZFFOZlXbD6cniAJ5omTjTZKThH5cKURTc1Ch62GQ11+spx9o10tIFonCTWv
         jgGIdO/XTE58+U+NJi/ldQizgob5zVeknIpPlnDk8Ejj6hdm8C2QKkudtDifMpXHpYuN
         u3cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8vF06DAPcnAL6R2Ppp6r11E0hn8EKts6Z1YHmZvm3Bs=;
        b=Yy5CeYX0xYU7k82t2c7lJ7vBZA1xRerGWnaml456HsUfZzL8SBZ6K+jvUKegZ065SM
         yFCgiv9wE24lNfGYwKx9cFRxk80b41kha2vNsqgGlVvRZJuqkqxfHwb2VlL9+ylD20Nc
         nwZFLhgmulT+MTXvXzzs/A7HX/ZF/dUMF2UjLJ0MXOl3eK9bVftXmV9oa4jD0DVz4nBn
         poa7CqXHlD5tf5IE8sw0dGfMFNG0+RdfkpJz/ZLkAZq4S8MU3bZbaCqM95r1VUT3+drq
         n1OCOtkO/crb28II/tcIB5lDVBqhKUiMOvxJFUQGtKRI56oWv7IsyqUGiwGR1DJsP3hp
         eh+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l1NprPCH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q66si474310pfq.3.2020.03.13.09.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 09:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l1NprPCH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5C646206B7;
	Fri, 13 Mar 2020 16:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584116106;
	bh=2HOFAuOgl5emJm3OOO2kyvkE74jiTw31wASXLdPtjMc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l1NprPCH9l/xXf6oQENyCYuF/4FLcfWOXAK/+WQvWtHv6hnBlfNl4WO9pS3c9pn0x
	 CyiKnW1Q3XNH/COhd3/4osb2iMgAkcPdW+sn5Hvy/3xphd6rvkjhHTrQ8Y7PHGhgrI
	 VieXJVzDC8PZvKUkcFqP6MbPdXOmJLXtgbhxMy0o=
Date: Fri, 13 Mar 2020 17:15:03 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Enrique Vargas <jevargas@seas.upenn.edu>
Cc: Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: media: imx: eliminate unused code
Message-ID: <20200313161503.GB2298954@kroah.com>
References: <20200313134953.GA11354@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200313134953.GA11354@evX1>

On Fri, Mar 13, 2020 at 07:49:53AM -0600, Enrique Vargas wrote:
> Eliminate code that is never used inside #ifdef 0 / #endif.  This eliminates WARNING found using checkpatch.
> 
> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> ---
>  drivers/staging/media/imx/imx-media-csi.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)

What changed from v1?

Always put that below the --- line.

Please fix up and send a v3.

thanks,

greg k-h

