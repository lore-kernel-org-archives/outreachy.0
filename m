X-GM-THRID: 6664067951305424896
X-Received: by 2002:a1f:1e4a:: with SMTP id e71mr3423951vke.2.1551863751054;
        Wed, 06 Mar 2019 01:15:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7f0e:: with SMTP id a14ls362880vsd.6.gmail; Wed, 06 Mar
 2019 01:15:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqzwHfN6SWDNekmniAfafv+Es+kPtWYlgWGlxNhhqZ3MACqS4+o7OoRzvNm5KAOdWFEDiv1c
X-Received: by 2002:a67:fa8e:: with SMTP id f14mr4277164vsq.28.1551863749215;
        Wed, 06 Mar 2019 01:15:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551863749; cv=none;
        d=google.com; s=arc-20160816;
        b=OjXN6h3BX50KXfrV1tpfnhLocJaf0kSGsdG4HS1TkOeLFq9FOxidGTs0Vmxho0DX2U
         1tq5zIci50RLox0IaIdNRwSvKuObkxQYE4Huxv6xK2ZZqx1A2mgsuNDnWqd41p/9Yd7e
         v+aOZbATjl5W5Rj3pdfNbzBUOLvGC3AOVOhM4SDSWVJxJ2HgUGHXGCDoVUh9nbfSqbMw
         wiw28oyL8E+rzBAvR2Poo4ti8fYKG3qj19sUusa7k35kxypKYNv8yI3W3Fg7AEQRZo+z
         Yg94h7yjIs3xKH5fsRacz5mNeWAeGDDy/Hu8mK11N4QNZQVoi1BbfFZxvFe70VJrS71w
         N7tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Fw3cF5xTV38zzMDf0ysg7RY/Qt3JDsUIGuPP32o+B8I=;
        b=QzLPoI/kxiEfmY63iY/9eJS+7Pz+PbNXWmz5bMre7cOQL+TbYpjvB80AbPcPbHkbKk
         zducIGOMTbQ6/EKH7jHc6/v14naerBV3W7U8Evf1rMkDfHxdhoqIWnEWposJcCf/SRRR
         3NEGIJh962q3OhGXd2fHfd9mlFK022AUZk+pdV/iVedOQr7RStYp9JZmaNRla2hh7UQp
         prHYoivGqfEjxxYLWJYroPXFzdKVmwP9Cu8IrW2d1QKPLZI6Q/R+NJM8UQlmDHLN9ONW
         LiDpTihX+o/XOYjTwtoFOv3+4wGQCFtWGyJ9QqOk0ZAtn3SHFc9Fm8KFusho+cPa1lpK
         Dgvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GCXIASdC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si49514vsp.2.2019.03.06.01.15.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:15:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GCXIASdC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B3C5A20840;
	Wed,  6 Mar 2019 09:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551863748;
	bh=oojCRBGmPBPl9ThBLjr3MnJkCBJx+W6Y1DWW8WhQvkY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GCXIASdC2NU4TVPpK2K6vRgc1tR9rimmKMh+dq82T3O1AbQCCAuvdLH6DRozx8IYf
	 gjquk8iuEWkJG6ZtJhZu3eechkgraGlicBUD3GNLVVzwkt4TgKd8jXOqTTQTXUIfjh
	 Hkn+MOYbSx2jKuxBfqwIIFKcH9KV8Vj/EU4k57iw=
Date: Wed, 6 Mar 2019 10:15:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Debleena Sen <idebleenasen@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v4] Staging: pi433: Fix line over 80 characters issue
Message-ID: <20190306091544.GE7927@kroah.com>
References: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com>
 <20190305074018.GA6158@kroah.com>
 <CACw+u4FnMCpiBiYPqaz3R054wm2q3Rx9q2R7S15_2+EPhJmkNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACw+u4FnMCpiBiYPqaz3R054wm2q3Rx9q2R7S15_2+EPhJmkNA@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 09:54:44PM +0530, Debleena Sen wrote:
> On Tue, Mar 5, 2019 at 1:10 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Sun, Mar 03, 2019 at 02:01:36AM -0800, Debleena Sen wrote:
> > > Break the line and match the indentation to remove the
> > > checkpatch.pl warning:
> > > WARNING: line over 80 characters
> > >
> > > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> > > ---
> > >  drivers/staging/pi433/rf69.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > What changed from the previous versions?  That information always goes
> > below the --- line please.
> >
> > Please fix up and resend.
> >
> > thanks,
> >
> > greg k-h
> >
> 
> I'm not able to find the commit.
> 
> I tried using "git reset --mixed e19b9ce" but it shows an error:
> 
> error: object e19b9ce794a8534f0ad19bfa1c60260fd74b9bb9 is a blob, not a
> commit
> fatal: could not parse object 'e19b9ce'
> 
> How can I recover it so that I can add the changes?

I have no idea what you are trying to do here, sorry.  Why are you
running 'git reset'?

confused,

greg k-h

