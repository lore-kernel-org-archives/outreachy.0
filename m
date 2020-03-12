X-GM-THRID: 6803023005726277632
X-Received: by 2002:a17:90a:1b6b:: with SMTP id q98mr2890266pjq.107.1584026497799;
        Thu, 12 Mar 2020 08:21:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls2777307plq.7.gmail; Thu, 12
 Mar 2020 08:21:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv5ZAc2D3r7QQaOLnpDO9oLTVaopxF+tnmzF1A8gSC2Rcmby5DmCNiGhBFoe+BtSV79pPWl
X-Received: by 2002:a17:902:8e8b:: with SMTP id bg11mr8538337plb.138.1584026496262;
        Thu, 12 Mar 2020 08:21:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584026496; cv=none;
        d=google.com; s=arc-20160816;
        b=tWnAgkJAQNJYVmgc08FlXWwkGT0XJbNo4+T0azeCZ1W5S6oC4IGw7087zNNQnzxIGL
         RMJ/KLmik8W5foeC5WRCy26SMxMpnTTxvoAS1ywnSYueDQ0dlq30485eNes7D2qZ+pha
         l27LaVu6oClUhYsUScuqHIZOL+JjFL/LSWVM/E1zawYgUFFDNsJAjAhr+JFgwiLHMT71
         1fwQ9JZGrh0QAyKh90kA7eHVNll+gQxQiS+3abKbrQvUfcfuqq8m10cbw40N//JoRMo3
         dcHCchFkqSTWSiIyAviXunQgoXihGoKVjvz7wYGFX/4DdNdFZV5gDlQE9VU6UZnUnJvI
         OAMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+8Vh1kXhede1PKvm2TfMvb6WyPVwlu6VEchfwc04n0I=;
        b=X2YoNrpJzAbDjvNA3oFQQ6Ixl/cFmCd7btL6QGqB9GAoq09Z3U+1yFJ55MUsR0g/PW
         4UQ9enQVmJEwatGDjCyQCwdO67F4+jeS+BZ6xgXvEtFm9eVDUS5DGgTOA9jdoh9/oZnj
         Xcaj9YznT8NT58B9g7H4+gn6LlSacpaAsalfPTdD28p3iH7wYwGgKNLxcKiK/49sB7mU
         HyoZxhTJixCBl2ReAqQpudsFJD+njLXy6zcSE44SmOUnhAy9NNuJRoG+elgMgqQ/tEzn
         34BoDs/Zwb/MnMAzO3bEmd4DBJYNa1YgDaq+7DjDFoBOY7qtXtW51ZODSOYbk6KFhmMK
         +NYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="I/09NIyJ";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x128si299594pgx.2.2020.03.12.08.21.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 08:21:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="I/09NIyJ";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7DE2E20674;
	Thu, 12 Mar 2020 15:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584026496;
	bh=EICqRODUG04n1+j07/uLT36GRFKSmaK91cHE+L4O4NM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I/09NIyJhJfAG1v74vip0CJOtibBs6g35Czc7EvJMiLceC+tThZ6jAYG7eXlMuDCV
	 XNuSVb3A+kEftiW0YBDLOAiCtTKCZEz6wxwqOAtJ6RpdAc7z7fH88nx+QF6YvE95ks
	 geT6gkwCDwOvccN2WTuB3o4lXMpB8EWj9G5anruc=
Date: Thu, 12 Mar 2020 16:21:33 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 5/5] staging: comedi: drivers: use unsigned int
Message-ID: <20200312152133.GB383349@kroah.com>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-6-kgupta@es.iitr.ac.in>
 <20200312081714.GD11746@kroah.com>
 <20200312145231.GA30896@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312145231.GA30896@kaaira-HP-Pavilion-Notebook>

On Thu, Mar 12, 2020 at 08:22:31PM +0530, Kaaira Gupta wrote:
> On Thu, Mar 12, 2020 at 09:17:14AM +0100, Greg Kroah-Hartman wrote:
> > On Thu, Mar 12, 2020 at 12:13:27AM +0530, Kaaira Gupta wrote:
> > > Change i's type to unsigned instead of signed. It's always positive.
> > > Reported by coccinelle.
> > > 
> > > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > > ---
> > >  drivers/staging/comedi/drivers/ni_mio_common.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> > > index 06ed4b1dd875..034cf8dafaf0 100644
> > > --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> > > +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> > > @@ -888,7 +888,7 @@ static void ni_sync_ai_dma(struct comedi_device *dev)
> > >  static int ni_ai_drain_dma(struct comedi_device *dev)
> > >  {
> > >  	struct ni_private *devpriv = dev->private;
> > > -	int i;
> > > +	unsigned int i;
> > 
> > Why is this needed?
> 
> Since it's always positive and I though that it's maximum value might get
> greater than 2^31, hence I changed it.

Then say so in the changelog text.

But first verify that this really can get that big, otherwise just leave
it alone.

thanks,

greg k-h

