X-GM-THRID: 6883926801253400576
X-Received: by 2002:a9f:264a:: with SMTP id 68mr1469680uag.0.1603090703931;
        Sun, 18 Oct 2020 23:58:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7005:: with SMTP id k5ls555501ual.2.gmail; Sun, 18 Oct
 2020 23:58:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx+TedzXFOGv2QO8bSEKJOu2FeUeWr/o4xKzyWroRiaTyMkWixRvAoUfRUYTrnZczinC73X
X-Received: by 2002:a9f:2212:: with SMTP id 18mr6165518uad.89.1603090702676;
        Sun, 18 Oct 2020 23:58:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603090702; cv=none;
        d=google.com; s=arc-20160816;
        b=koPntBfAz/1N8DFzorHf0myqC3i6vdedGJvE6L6SqN/xTjhoVdfCzP8sK61nOlZcl2
         N2DCskusde7gASdh4iGAAyO8QRys38RQIbK+oEzC+3oEsjVWt4vncf35zBrsuRaSNjkS
         sTOLU5LBDweJTlpvQsQfPBpx9+9eaHz52cftUAa4ntlNOCWweqdn/z92HknHakfUxIsT
         6Ofb3om9BjtOT9kTIZIstMlnCDbzU+rAZKfVbu9LUi+b7IYQEBjzstUHBjl7R9QafDPj
         q4AhCBtLQwdkZfRxYc0LjcwyvFBrJSjRyKu/10EjZVs+R5jvcbWhxD+Yq6YbOVumLb6p
         Yzkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1keHAV7mtEP9otaEQjjB6O1U+Sm8TKBXj5O3krZFjgo=;
        b=tn9wIJqgGp4LZjfjYak+rgYro4eTnu8fc2qmXHgU12AKkHTWVgRpomeeAZFf/zKfPM
         OdlBYRcXt4N3q/3AheOrup1SWWW62Us2SilAaY0uTee6IYhtKW7btGssVkYHUNiHsAWz
         zg5u3CVT0vUQnVRbvn9XS5+OxxAo2t86TKYlmZrDx3gDpAUKNU8HGq7JtE3onNYQ7Q3n
         ugdmDMqFAZ/gBDsKFGrFefTShtXt/60YD7ZBv50i/C0P2qAmd/gkWvidfOUStc+ox1Jl
         en6/6qB+NIDpKK5TawKM+Yy3skoLAgjCrJs32DXlBZx53krUbEHTO9mKAfoy5Sj1RqPS
         lT2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c+5jXCzN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j77si540383vkj.1.2020.10.18.23.58.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2020 23:58:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c+5jXCzN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CA93A20704;
	Mon, 19 Oct 2020 06:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603090701;
	bh=LX7zLuaeFpkPEythtz4+4MhSpvlpRDey17b0cjjDS0Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c+5jXCzNc9N6Fqra7g9Ov4CJ7p0KVw1E9pQL9nXLMPoJBaCMWKeLSaDic+AxxYnV0
	 7E1ANbClsHVrsuRNa2yq4DLx5vcG1N21sh909GgPp22/QTiKHmLrP3m4OCGmaElU1l
	 0IZ/Gr+ixWx4meN5aXQk50TP8HyTke8IunNhYhW0=
Date: Mon, 19 Oct 2020 08:59:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>,
	Sumera Priyadarsini <sylphrenadin@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][PATCH 0/3] staging: Replace
 snprintf() with scnprintf()
Message-ID: <20201019065905.GA3217420@kroah.com>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
 <20201015192157.GC20115@casper.infradead.org>
 <20201018053243.GA98400@ubuntu204>
 <20201018053857.GA591645@kroah.com>
 <20201019060240.GA6306@ubuntu204>
 <20201019060925.GB691366@kroah.com>
 <20201019062547.GA6451@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019062547.GA6451@ubuntu204>

On Mon, Oct 19, 2020 at 11:55:47AM +0530, Deepak R Varma wrote:
> On Mon, Oct 19, 2020 at 08:09:25AM +0200, Greg KH wrote:
> > On Mon, Oct 19, 2020 at 11:32:40AM +0530, Deepak R Varma wrote:
> > > On Sun, Oct 18, 2020 at 07:38:57AM +0200, Greg KH wrote:
> > > > On Sun, Oct 18, 2020 at 11:02:43AM +0530, Deepak R Varma wrote:
> > > > > On Thu, Oct 15, 2020 at 08:21:57PM +0100, Matthew Wilcox wrote:
> > > > > > On Fri, Oct 16, 2020 at 12:41:42AM +0530, Sumera Priyadarsini wrote:
> > > > > > > The show() methods in device attributes should return the number of
> > > > > > > bytes printed into the buffer which is the return value of scnprintf(). 
> > > > > > > snprintf() returns the potential number of bytes that could be written
> > > > > > > which may be greater than the actual length to be written.
> > > > > > 
> > > > > > There's a big patchset just gone into 5.10 yesterday which adds a new
> > > > > > sysfs_emit() for show methods.  You probably want to use that instead
> > > > > > of scnprintf().
> > > > > > 
> > > > > Hello Matthew,
> > > > > I am able to build my staging branch into 5.9.0-rc8 release. Can you
> > > > > please suggest how can I get 5.10?
> > > > 
> > > > Pull from Linus's tree right now, or pull from linux-next.
> > > 
> > > Thank you Greg. I assume you are fine with patches sent from that tree
> > > base.
> > 
> > For the time up to 5.10-rc1, no, you need to work off of my
> > staging-testing branch as there is no way for me to merge new stuff into
> > linux-next until 5.10-rc1 comes out, sorry.
> > 
> > The middle of the merge window is a rough time to try to get new work
> > done, maintainers are not allowed to really take it.  I'm trying to be
> > nice and stage stuff for the outreachy developers, so please, work off
> > of staging-testing for now.
> 
> Thank you Greg. I understand.
> In that case, the three patches I sent yesterday were from the linux-next tree. 
> Will you reject those or hold back?

I do not know, let me get around to reviewing them in the next few
days...

greg k-h

