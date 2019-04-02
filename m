X-GM-THRID: 6673132168254849024
X-Received: by 2002:a17:902:8546:: with SMTP id d6mr899719plo.58.1554182518865;
        Mon, 01 Apr 2019 22:21:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2b82:: with SMTP id r124ls33779pgr.1.gmail; Mon, 01 Apr
 2019 22:21:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqySaiqO6D053ja4War3hLfJ4Mvd3TeUDMYS38Zi70AuGlqxdLhnmTIWEon9WsF2y6fV1AII
X-Received: by 2002:a63:b74b:: with SMTP id w11mr1069598pgt.87.1554182518289;
        Mon, 01 Apr 2019 22:21:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554182518; cv=none;
        d=google.com; s=arc-20160816;
        b=Lgy8dml2bPvIWXsBHosnx5rnFAEF65+VVqYZJGJmXSnfpS8LfcyPNLC/fARR445sbS
         ZdFdSe8mkZFZkNkq21DKw/SDDN5SZGpdLpQXN4n2/Y6YWEVrEy+GqrN8PJKVPv4UASzM
         o8fdLMATuK1j514q1qUDuf2B3qQN8AN8LdnarMDudr6Q5XakLGW4CgIu9znSj26VGzta
         MDKQgDfa/9nYW+uwACNbfGRhIxgxviJ5mBFXxBsOB0vKDNJN4XUTnLDGJEU3c9ZGAI78
         agwC7QKkLiBBykV6HzwyEHKpjl5x97eT+/Wf9T+5iaNFKk5KBDA+MuPUcb8eG1fpaheD
         ZOgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cd2vChQu2HDfYGCFrU1psMePb1smzaY8gxE+CT9pg6o=;
        b=JKevdv2Epzwz4+FRJfGh2COsQUcxEaNm343SUw0+XiIAy5muUBTK7egM0uBi9AJBxp
         tB2dSySP6bDTtm28slet1UMV3QOsGLW1Pf9BCRUYjys0e/Db50S8quAm1BRd0vEtnyFD
         N9xzEe1ynr3T7vU+xX+l84F13kMsbCuf3UD0aMqMpCsvoQMvMJmbRf0hJR1WpniyjwhV
         WAY9QdozjglI42pmhfkrzx0dzwRaFoQzpso4Ib9gxmNo+LZEVRk6M4H3mxJ/3wwHbwsX
         0dJuhZPZgmHkdT1CpgGVYRg/AwN37WzkP6BgsSnlh0SfsSVh2CDrGzJjUCkBkHEXoKPT
         VVjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p+UDtBea;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j8si768914plk.3.2019.04.01.22.21.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:21:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=p+UDtBea;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 84BDA2075E;
	Tue,  2 Apr 2019 05:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554182518;
	bh=BgDKcLjQ+RC1Uv3eljwwpyRihFlDAatHDnkeyBXU28A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p+UDtBeaVUDC0olG86GIc1HgeYLs5L9aoEKsxijUcM2tSuEK7xMxPoAvktBlwggfd
	 NJbFUSoTVl3Lufq0fdlEJBeIXTy0m4BCQJpP8JO6ftrWpVQvziJn+uXvyNH54MQTv0
	 zTOchym1V8m/c+rYegd0+v/PeLLz7b0WfHTsQj2Y=
Date: Tue, 2 Apr 2019 07:21:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: media: davinci_vpfe: Convert ceil macro into
 an inline function
Message-ID: <20190402052151.GA11987@kroah.com>
References: <20190327180052.30298-1-madhumithabiw@gmail.com>
 <20190329160451.GA6197@kroah.com>
 <20190401223215.GA30112@madhuleo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401223215.GA30112@madhuleo>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Apr 01, 2019 at 05:32:16PM -0500, Madhumthia Prabakaran wrote:
> On Fri, Mar 29, 2019 at 05:04:51PM +0100, Greg KH wrote:
> > On Wed, Mar 27, 2019 at 01:00:52PM -0500, Madhumitha Prabakaran wrote:
> > > Convert macro into an inline function in order to maintain Linux kernel
> > > coding style based on which the inline function is preferable over the
> > > macro.
> > > 
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > 
> > > ---
> > > Changes in v2 -
> > > 
> > > - Corrected commit log spelling
> > > - Made the subject line unique from previous commit
> > > ---
> > >  drivers/staging/media/davinci_vpfe/dm365_ipipe.h   | 5 ++++-
> > >  drivers/staging/media/davinci_vpfe/dm365_resizer.c | 4 ++--
> > >  2 files changed, 6 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > > index 174334b53f96..32dce3c95304 100644
> > > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > > @@ -27,7 +27,10 @@
> > >  #include "davinci_vpfe_user.h"
> > >  #include "vpfe_video.h"
> > >  
> > > -#define CEIL(a, b)	(((a) + (b-1)) / (b))
> > > +inline unsigned int ceil(unsigned int a, unsigned int b)
> > > +{
> > > +	return ((a + (b - 1)) / b);
> > > +}
> > 
> > Please just convert the caller to use the in-kernel function for this
> > instead of having a second one in just this driver.
> 
> I'm not able to find in-kernel function for ceil. Though there is ceil
> function in math.h, which has return type of double, and i'm sure that  kernel
> cann't accept floating type. how can i resolve this issue?

The kernel does not have a math.h file, I do not think you are looking
in the kernel include directory.

Look at DIV_ROUND_UP(), that's what you want, right?

thanks,

greg k-h

