X-GM-THRID: 6610740255626625024
X-Received: by 2002:a2e:988f:: with SMTP id b15-v6mr27368ljj.14.1539247985373;
        Thu, 11 Oct 2018 01:53:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:128e:: with SMTP id 14-v6ls331106lfs.9.gmail; Thu, 11
 Oct 2018 01:53:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61sZ72D/NqOxfKWoHfepxpEeJ81qeCknAWqjCVHrA+D6f1wyyUgVaBmSku6RMfoLmECIa4m
X-Received: by 2002:a19:7010:: with SMTP id h16-v6mr27213lfc.12.1539247984214;
        Thu, 11 Oct 2018 01:53:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1539247984; cv=pass;
        d=google.com; s=arc-20160816;
        b=jsHPpje2y4VOjBOnFiv0/1rIIe6v7x/OpWKHKCkLl7fg5lT/nSYpfzK3D471fIPNdY
         0/fMCtel8rZUwPe4yo5A2obYPZFQCrMHdOxRcw3zI1v50W6RFMR1JSVdiZTmcGjxFeSV
         ApgEVn5Bu3VFvcrW6caPbvSdS84p5g1viyOlNd+RmVljDF+s9cKqGSDLSmkg/0H1wQwx
         ePuG/LfjTecmCUQlHrDolQYqYfV4RvUWvrXRnAp6I+7tliUniH13vee4bku21XRStYsI
         ok/sSD93smYNkwKyXlKe89GMGW2yqGWTWAmzp79N3w+WvdgSiWnrpwtckFj9sNLmCGsj
         lhbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6quynyc4fxZwEKqIGmmhiu1oezEr4YG7nw2Y7W74090=;
        b=v1wwr3enk9JQQYSa7BRSKYA56V2F5tDf2WEWbU548xxVt78s1SeTi6RguCs+piVv9e
         ByrGjfsi3B0qKszE9We9u4+Sr9ai0tKNFBcD+aEVVFAr4ny8MQbbDhJrwFC8YEmw258J
         GwOwbDbBwuUzJiSYqN3D5TcVE3B6gWjbzLCbsbS3lFsqj8uYo93nfX9i1NqU+3GugIpN
         LtvrKPvipSd08e5htj/Yym2/1oPMJuSrjgXBPlhNyi9wcYy3uWO9G9aiy3iIzXv+qWjs
         ZXyaPbdEBpO3bXyc7g5jLs08B6l7YioDpPttL6CDJWNKFhpxFdM9jB3J08pYN2YCKT18
         DKYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fLQLHe4q;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id h20-v6si311776ljj.5.2018.10.11.01.53.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 01:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=fLQLHe4q;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1539247973; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=irdStZI53Q9XJi0Lu8Wh8+Mw4ZMe68EjElPYkKLoPFBAfWP2odDj0U1hFmcR9vLL4Q1pepEZA6DtCXtgrL2fdXyEmo1PqSnJ7U6ECJUJ5SpXHuG3dqIneoQkma5R8qXuVYfb6H6izK1YxKN7dwk7U01uFp6Mbz66ysXxVlsLIko=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1539247973; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=6quynyc4fxZwEKqIGmmhiu1oezEr4YG7nw2Y7W74090=; 
	b=Jx84do2ZhcMTK4UZh4MHlmOsXAPL66eglMohk1ebSn0TbnmOd+CMZo5zXC8/KYIxrpRECir4dRuOaXVBc3lBHbE8enP0cfxWATbBMXfCot8d/YMuAMwhoXh3gIyUqHe/5JY1lGbaJM5cOLqwasBJ9SbAmp37TDxNl6mKzHe39jY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1539247973;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1500; bh=6quynyc4fxZwEKqIGmmhiu1oezEr4YG7nw2Y7W74090=;
	b=fLQLHe4qiKTsPimDPHrrjNm8vRJouZtr+9/OnLDEAwumqtwv22/RkTrbOTYi3dRX
	CQpTzu4YAH4USDpNTbberHU1uaEiCwgA8OdPZKBND+txx4bvjk6mGzk90tOz1a4iNgy
	mJU86VhmRxXkanmlGx0tbniNUxcny0ODbShH67xU=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 153924797164393.42079549309244; Thu, 11 Oct 2018 10:52:51 +0200 (CEST)
Date: Thu, 11 Oct 2018 09:52:49 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: Re: [PATCH 3/3] staging: wilc1000: Change struct members from bool
 to u8
Message-ID: <20181011085249.GA5222@kvasir.local>
References: <cover.1539182155.git.code@wizofe.uk>
 <e409baf10c6cc043344f1a63712d661611953973.1539182155.git.code@wizofe.uk>
 <20181010183210.GA24096@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181010183210.GA24096@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Wed, Oct 10, 2018 at 08:32:10PM +0200, Greg KH wrote:
> On Wed, Oct 10, 2018 at 03:48:21PM +0100, Ioannis Valasakis wrote:
> > Recent versions of checkpatch have a new warning based on a documented
> > preference of Linus to not use bool in structures due to wasted space and
> > the size of bool is implementation dependent.  For more information, see
> > the email thread at https://lkml.org/lkml/2017/11/21/384.
> > 
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> >  drivers/staging/wilc1000/coreconfigurator.h   |  4 ++--
> >  drivers/staging/wilc1000/host_interface.h     |  8 ++++----
> >  drivers/staging/wilc1000/wilc_wfi_netdevice.h | 10 +++++-----
> >  3 files changed, 11 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> > index b62acb447383..dbea5144395e 100644
> > --- a/drivers/staging/wilc1000/coreconfigurator.h
> > +++ b/drivers/staging/wilc1000/coreconfigurator.h
> > @@ -30,7 +30,7 @@
> >  #define MAKE_WORD32(lsw, msw) ((((u32)(msw) << 16) & 0xFFFF0000) | (lsw))
> >  
> >  struct rssi_history_buffer {
> > -	bool full;
> > +	u8 full;
> 
> No, this reduces the information about the field.  There's no wasted
> space here at all, the end result is the same.  The issue is, as
> Himanshu points out, when using bool instead of a bitfield.
> 
> So this patch isn't needed, sorry.
> 
> greg k-h

Noted. Learning something every day. Thanks greg.

ioannis


