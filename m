X-GM-THRID: 6662431164424257536
X-Received: by 2002:a67:8a0a:: with SMTP id m10mr2761543vsd.42.1551287118511;
        Wed, 27 Feb 2019 09:05:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:4247:: with SMTP id p68ls382922vka.3.gmail; Wed, 27 Feb
 2019 09:05:17 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbLH+c1BLP7cBXY3e6u+3yt9v/avohwv6o9RQHqaWJCHVOCJtczff5JE16KNKpuvb5SJn2L
X-Received: by 2002:a1f:bc4:: with SMTP id 187mr2284881vkl.1.1551287117880;
        Wed, 27 Feb 2019 09:05:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551287117; cv=none;
        d=google.com; s=arc-20160816;
        b=cjlkQNcmmJPms0MbHz+4VixSuBM65ytXgt/B99hQDWu4pdxgdwhgflcmfSSsQpEl0m
         Q0FLzQKvjloGiwLjASC1mfPBOY5sgkuxZUyWPsALwIeAQII92QO8O07WkwFkErLAZ8S7
         W8jfOwyGPzHMEFQmK7jOYF2j0EYUFffBISuowiuHqz1ClTioNyywIYEKw1jNIVRZimTl
         dwnKysjjCgR6btK0XkDt3O++PnsT/VfPem8PCj/QJoLHwH8wgugh0zcCnzABf0ze7GRT
         vT0Dm7/wgdOM446hq0S6a4vyWm+fm31lorXoHPjPIOkJV3u39LEmuJ9AA6HQ6bxBAm4y
         X6Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=F4ARNQ8/TGsTf5H5cRvT9+PMPxrNVIQ+8MqUP2KVYSA=;
        b=n1S7rBA8Rz4zPogGCIHC42Xnou/iESkRwNsZViGpkD23Euhdj6+gP3ckwiCxUPDjVN
         9qDyaqZr+tUox0COL7v0qf3WbMZpj7Ou5ZTAOKf5sSW+yrzjIjpYE+2zK4n2JaCh9XdX
         +kk7RRryUgr+eJuosG+QKebm/XaSrzQ6CWWjEf3dr5/LhI1nYs0RgJ8YOBITpSyf4uvM
         IYlsik/Np6DHX7sKxEuoHDbVkI05grs8IaGEhJUapKTIQ2CVOSQJx9T7nyOW2A+tePxK
         9aIisOSR/EVy6aOcNC++NGCaiLqwvPTSyIh2ASOBGIL1wnyo35DdcB9IoTdtq6xcKDkX
         IfGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X085qWpO;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q85si524295vke.5.2019.02.27.09.05.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 09:05:17 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X085qWpO;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A52020842;
	Wed, 27 Feb 2019 17:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551287116;
	bh=0DLww588NgQZACJNvva4ZDPWifFycbq06jDKk3BP95k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X085qWpOX0lSmWLgK+B/IPa5+V5uBqkFXE93JQAteFkac5JkjSBI193FRx3yiC1ic
	 VoXAJ2smBrog48Mth4cYqbwxJRX0ClXcQanbaH+U6qfkzEtlwOeUMVdfV+tPGXDGzS
	 zio4Pl0tpRiPZH6ueyWI5DA3t/Ahd9mHJsVEoQFY=
Date: Wed, 27 Feb 2019 18:05:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: vt6655: Modify comment style for SPDX
 License Identifier
Message-ID: <20190227170513.GA18050@kroah.com>
References: <20190226215531.5196-1-madhumithabiw@gmail.com>
 <20190227144836.GA32231@kroah.com>
 <20190227164328.GB22354@madhuleo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227164328.GB22354@madhuleo>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 27, 2019 at 10:43:29AM -0600, Madhumthia Prabakaran wrote:
> On Wed, Feb 27, 2019 at 03:48:36PM +0100, Greg KH wrote:
> > On Tue, Feb 26, 2019 at 03:55:31PM -0600, Madhumitha Prabakaran wrote:
> > > FIx the warning by changing comment style based on header file type as
> > > per License identifier syntax
> > > 
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > > Changes in v2
> > > - Modified subject line and commit log
> > > 
> > >  drivers/staging/vt6655/baseband.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> > > index f2b6a98de2c1..0cc2e07829c5 100644
> > > --- a/drivers/staging/vt6655/baseband.h
> > > +++ b/drivers/staging/vt6655/baseband.h
> > > @@ -1,4 +1,4 @@
> > > -* SPDX-License-Identifier: GPL-2.0+ */
> > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > 
> > This patch does not apply to my tree :(
> > 
> 
> 
> I didn't understand why it doesn't apply to your tree. 
> 

Neither do I :)

Please try rebasing your patch on the top of my staging-testing branch
and see if that produces a different patch or not.  If it does, please
resend.

thanks,

greg k-h

