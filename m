X-GM-THRID: 6883926801253400576
X-Received: by 2002:a9d:2487:: with SMTP id z7mr10257439ota.133.1603087770561;
        Sun, 18 Oct 2020 23:09:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:310b:: with SMTP id b11ls2017327ots.10.gmail; Sun,
 18 Oct 2020 23:09:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy7O6vnJSekXhcdof0hSf382vp7D2n4ohzYytb35W4VkZOr0Yw4gtwlbuh58GH17hU61ovS
X-Received: by 2002:a9d:4d06:: with SMTP id n6mr11089318otf.104.1603087769339;
        Sun, 18 Oct 2020 23:09:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603087769; cv=none;
        d=google.com; s=arc-20160816;
        b=wjuRSzlYtNfsQbhUR7z6umUzx13/3aB4lS/otiIhBWhFzQH5TrRGXbuELOv1d9Qa52
         YViNICQRWuivtKKyY+JXQJRWb6NvmNbFtiGsLNJkyxZBthC8eWQJ92YKJmbQLFx6XrRm
         8tC9iilOnIvX7b+VSClY625il0IMC7cqFFqPwlG05aw7mZLi7fOSvsW3P8QVHx7S6peH
         YY1yvm5z8SxuEyKlDOXu0dXNKihYXbuHzfU+pzvXtb4Vwq+yJhySSlxpaVIMuExrN68F
         eeLuJYbyGp9KVXTiWxzFww7/RGsuQIpx8h5rt9EQwb8KGva9gocKJqsWNhXKItPWf8Tx
         +/lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6gUCUjY7Obe4nBuKv0tsxcFt4oqVaL7gKfNkQfS31d0=;
        b=N2tS1PCrS3+AVJIwhev+r0neTu7WFk4SZ7dUeMId+pF47SRJypy4HcmCQnO+ESRRdR
         s+TRgM9IEstzYY4TQ6SOj4TbaYYtgZYJpWVpbsqv1RD3UxPhiMzQ9SvVhGGWuTPxRCzR
         l8Lg60M4/0Db7A2ahBgyMDqkJkoKbmYeyZU65uHehfzlhvNwQ4SQL8IXTa4pLt5nJVH9
         9W8ibDX40sVZB5UdNBVPl6zHFbtqbHG0CgFN8IkEvOpKqnP/gK6sVr9ZvVZ5cbAzpgB6
         Td0KRiZzDr3c4H6h24a2pOARmkaKc/D5ITXxKSoLREAse30qlwmeB43L+bYiBvgDNk+J
         /CVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WJEfaYar;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i23si100482otk.5.2020.10.18.23.09.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2020 23:09:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WJEfaYar;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C042F22257;
	Mon, 19 Oct 2020 06:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603087768;
	bh=4sTsj6O02dCQNagy2agrI1QV7Op3GdvEcFajNq/wWrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WJEfaYarfGE5+FDXgl5VNtWA5BVicFjoo/OXO0eFJiMRYmpuekcEI85Ggh9FCmbRp
	 Iui8BvXqMKUm6HCMmhJSmKLBMrQFw7h5Mh9uoEfNgSrxeS6lmQoMwKoAk4dmAFZdJQ
	 oCimrqUztpdSYZarJCg9edJF0M5MqxKywqJSXPtA=
Date: Mon, 19 Oct 2020 08:09:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>,
	Sumera Priyadarsini <sylphrenadin@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][PATCH 0/3] staging: Replace
 snprintf() with scnprintf()
Message-ID: <20201019060925.GB691366@kroah.com>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
 <20201015192157.GC20115@casper.infradead.org>
 <20201018053243.GA98400@ubuntu204>
 <20201018053857.GA591645@kroah.com>
 <20201019060240.GA6306@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019060240.GA6306@ubuntu204>

On Mon, Oct 19, 2020 at 11:32:40AM +0530, Deepak R Varma wrote:
> On Sun, Oct 18, 2020 at 07:38:57AM +0200, Greg KH wrote:
> > On Sun, Oct 18, 2020 at 11:02:43AM +0530, Deepak R Varma wrote:
> > > On Thu, Oct 15, 2020 at 08:21:57PM +0100, Matthew Wilcox wrote:
> > > > On Fri, Oct 16, 2020 at 12:41:42AM +0530, Sumera Priyadarsini wrote:
> > > > > The show() methods in device attributes should return the number of
> > > > > bytes printed into the buffer which is the return value of scnprintf(). 
> > > > > snprintf() returns the potential number of bytes that could be written
> > > > > which may be greater than the actual length to be written.
> > > > 
> > > > There's a big patchset just gone into 5.10 yesterday which adds a new
> > > > sysfs_emit() for show methods.  You probably want to use that instead
> > > > of scnprintf().
> > > > 
> > > Hello Matthew,
> > > I am able to build my staging branch into 5.9.0-rc8 release. Can you
> > > please suggest how can I get 5.10?
> > 
> > Pull from Linus's tree right now, or pull from linux-next.
> 
> Thank you Greg. I assume you are fine with patches sent from that tree
> base.

For the time up to 5.10-rc1, no, you need to work off of my
staging-testing branch as there is no way for me to merge new stuff into
linux-next until 5.10-rc1 comes out, sorry.

The middle of the merge window is a rough time to try to get new work
done, maintainers are not allowed to really take it.  I'm trying to be
nice and stage stuff for the outreachy developers, so please, work off
of staging-testing for now.

thanks,

greg k-h

