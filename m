X-GM-THRID: 6665413421410811904
X-Received: by 2002:a9d:735a:: with SMTP id l26mr7639028otk.51.1551990030687;
        Thu, 07 Mar 2019 12:20:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:62c:: with SMTP id 41ls2300640otn.2.gmail; Thu, 07 Mar
 2019 12:20:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqzNcdQuP6AZws0zwMyRDDtIhe605L5Hx0k7zxFDcnVlhw0FmWpPApy5KKYSoKuuCHu+LrlZ
X-Received: by 2002:a05:6830:1109:: with SMTP id w9mr7620157otq.56.1551990029889;
        Thu, 07 Mar 2019 12:20:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551990029; cv=none;
        d=google.com; s=arc-20160816;
        b=g+BouvzWyaIzEwhAcD1r7lmz5tWhofSvnbzN7fc5jTVyht1p0y8T4GqlpxZWRAV897
         +wa2MzUJBc/Mu/yvtpmd/53tl/muwH693lvLbfhyeG612JtnNTUzggDHOi8O8mzY6yVw
         wFYN/psssRYTf317Fm2w1OVupjQEfw0MAw5zlIjxUzWioOo5XzqOjvP8ErXpdLOGcI7g
         en59aUU6BioXp0d1a9JoqZC8tQLlsAEnG7xIHcaFBlaOR4yxCLD4YlXto5a4/ltZlMQ7
         RVb1G+pEEnew+KtXZ5kGcLuYo0shvh2QHoR2TNas205w/jD9aLulQZfz5jg+kCebjjbQ
         BJFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bX/pHcr7SqxZYvE5dSAjRqZ1FgnbXzyzyonbVxkzkWY=;
        b=PS513Fa3W+rJ0S2edYIWh765wj8ae/jPVr2xnaBZn0zYcl2t+CrXDI2mK3B5hoaXYi
         V068cFfjXhGq0VjSMrxodksNJMaFuMSY8xCHWB77uzGqk5jZxP8mdo+0IsFQswVbfjYF
         I6IpxM5GCM3jKRD8hfghyDPs91fAXbTaUWMt6jWoaVblUpORZOZwjcgczR5jIwM0fHrL
         4ce8Co+Jkl+xOvWvhXlmcNAbLD/KGgpDRY2oh4nz+5qsKgjlDUCUt+zc7OYPpOXSckqm
         9dfV+kLWh00k6GnTXY6DyFuJdrh2jSx6T76Ja7BW22nR+Px5/r8UEwr5VW8dSEAM05A8
         kAVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1L51FJbH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a188si330555oih.4.2019.03.07.12.20.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:20:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1L51FJbH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 84CCE20840;
	Thu,  7 Mar 2019 20:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551990029;
	bh=dS222mfyS71lJIEwQlP7lleifmL0T1d9HylW5zHWVwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1L51FJbHw+/Cl8VKQ857f+TKNQm2xMkyB4HhZMUGwsp8mz8W2IVM6xwgCG3Z1PW5Y
	 4utTYiuzQ204nfB9I8lfSzvmiLFcwFf4CxWzxPGiEIuJckGhj42hGJ8VVSNPTB52Q0
	 rFmZ83aUMx+BUJa/XibIoOPOg35Ld1iqRUl5L1q4=
Date: Thu, 7 Mar 2019 21:20:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: fwserial: Convert macro
 into an inline function
Message-ID: <20190307202026.GA5287@kroah.com>
References: <20190306224809.12524-1-madhumithabiw@gmail.com>
 <20190307200347.GB27056@kroah.com>
 <alpine.DEB.2.21.1903072107520.2558@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903072107520.2558@hadrien>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Mar 07, 2019 at 09:08:53PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 7 Mar 2019, Greg KH wrote:
> 
> > On Wed, Mar 06, 2019 at 04:48:09PM -0600, Madhumitha Prabakaran wrote:
> > > Convert macro into an inline function to make codebase better
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/fwserial/fwserial.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
> > > index a1b90ea7fcb8..aec0f19597a9 100644
> > > --- a/drivers/staging/fwserial/fwserial.c
> > > +++ b/drivers/staging/fwserial/fwserial.c
> > > @@ -19,7 +19,10 @@
> > >
> > >  #include "fwserial.h"
> > >
> > > -#define be32_to_u64(hi, lo)  ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo))
> > > +inline u64 be32_to_u64(__be32 hi, __be32 lo)
> > > +{
> > > +	return ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo));
> > > +}
> >
> > For some reason I thought the kernel had a function that already did
> > this, but it doesn't, which is really odd.  Anyway, that's something
> > that could be done in the future, as this is done all over the place in
> > different drivers.
> 
> Actually, as far as I can see, only two occurrences, in
> drivers/target/sbp/sbp_target.c and
> drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c
> 
> Perhaps there are some other variants that are more popular.

The file include/linux/io-64-nonatomic-hi-lo.h open-codes this 4
different times, as does include/linux/ml5/device.h and then there is
HILO_GEN() which tries to do the right thing for this type of macro, but
it's specific to a single driver.

Odds are it is also open-coded in many other drivers as well :(

thanks,

greg k-h

