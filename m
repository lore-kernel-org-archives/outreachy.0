X-GM-THRID: 6746031998697996288
X-Received: by 2002:a0c:ed50:: with SMTP id v16mr15639840qvq.30.1570795731687;
        Fri, 11 Oct 2019 05:08:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5493:: with SMTP id h19ls1431542qtq.15.gmail; Fri, 11
 Oct 2019 05:08:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyyZypWBEMJh+UQ/nx9fkm8Fo8MaV3KoEGcbM35Rmt2ZkEw6TZMXCkY5fDm1VxRdLEaQKXv
X-Received: by 2002:ac8:3512:: with SMTP id y18mr16694102qtb.106.1570795730616;
        Fri, 11 Oct 2019 05:08:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570795730; cv=none;
        d=google.com; s=arc-20160816;
        b=f+o9NBPLsGd+6eHFQO3y41sgcKRjw1ci9Tdc5cVtEsbgFerhMMp5MZrgWU94QfEy8T
         0O/gDFWMoWreuJVHYMeAKuT43VzrPSSLdWi72wjO4A8v22QBthj1XLjSuy8CAPBFRZDL
         JA8tYZ07pfIqEwyxnEF4Jbim4tlyEnyH9Vv5ItRdzBx2lSJsMjC260xUHHE79CV7HWQW
         /NCTsstOV8nPBs0inWKL+xXyXkhXj8mVhhyHpB/Alg7dsv8bH5MsQOuLjEpapbynv/ZH
         3wyObEgZc3smVDnhuLCAifpC0qRTi07OeQi4iXF6b77od0hdOvUqv/1ME/FFGZWu3TT/
         lYNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nTt5FSZgFnJ/hFgXs91AcZ3lJRWRrJMzXFjPvKbO5uE=;
        b=TPy8XfEaUb6COEWBOwAS93VwtnVxxXKvzuCH6Fr1yC8BYWkngsF7Iyc69Sbxy6Sail
         FdlXwoJjCd5k48BtFF4CjnoTvTtSf7qeDI54xDBQ7ZThsMP0o1UG9Ug9n4MMhAkQUTXy
         OlfaOrK5xNv7xXJVwYkXcF/0Qq2Tfnl0EC2WTDwbZNRvSjNPY8ybpEaxzFIRZHxqRKes
         eCpOesTBKNLTxKDkEQRTEcgnH9t4RVPQ+3PYoGxdivHW73hQNWpPE2JsUl2GwwxcAnFZ
         /EDLP4dCILa6QLEO6zmDkMtGMbZe3Z6dPsByWdA3wjop/uAIdu1ydGGVvaeMzgau7biy
         akAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=b3mw0mo4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t186si222811qkf.3.2019.10.11.05.08.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 05:08:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=b3mw0mo4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 009CE214E0;
	Fri, 11 Oct 2019 12:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570795729;
	bh=7CIPFLIoZZluL3rWipgb8S80+pXhDenVx59NnSIkLzI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b3mw0mo48g1XYqGl1KLzGYWhF9OmlOsXrOiw/4Jmr9Sp2dGvl5NeqmR2aPmdvCwCw
	 hMzGgTWLATc14Lqf0kZV91LuEJMGKIyW+++M3RQvXiWWKmAqfzm+B4O8QWjiQMv54h
	 lqvSe4tlHsdbHfVYwq/81oFSt+2VTM8o8QFLbMP4=
Date: Fri, 11 Oct 2019 14:08:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Wambui Karuga <wambui.karugax@gmail.com>, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Message-ID: <20191011120847.GB1143018@kroah.com>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
 <f4752d3a49e02193ed7b47a353e18e56d94b5a68.1570712632.git.wambui.karugax@gmail.com>
 <20191011105404.GA4774@kadam>
 <20191011120717.GA1143018@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011120717.GA1143018@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 11, 2019 at 02:07:17PM +0200, Greg KH wrote:
> On Fri, Oct 11, 2019 at 01:54:04PM +0300, Dan Carpenter wrote:
> > On Thu, Oct 10, 2019 at 04:15:29PM +0300, Wambui Karuga wrote:
> > >  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
> > > -	if (psetauthparm == NULL) {
> > > -		kfree(pcmd);
> > > +	if (!psetauthparm) {
> > > +		kfree((unsigned char *)pcmd);
> > 
> > This new cast is unnecessary and weird.
> 
> Ah, I missed that, good catch.  I'll go drop this patch now.

And that caused the second patch to get dropped as well.  I'll just drop
them all, can you redo the whole series please?

thanks,

greg k-h

