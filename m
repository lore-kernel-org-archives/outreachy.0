X-GM-THRID: 6883926801253400576
X-Received: by 2002:a05:6a00:1742:b029:155:dcd2:9155 with SMTP id j2-20020a056a001742b0290155dcd29155mr11830345pfc.78.1602999542314;
        Sat, 17 Oct 2020 22:39:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:4486:: with SMTP id t6ls3363252pjg.0.canary-gmail;
 Sat, 17 Oct 2020 22:39:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4BwYDnxeDGYyUmTzoGN2R2F0xkDC7QMdWidcZGAST4+WewDUxI4bQbmSiw5R79YS2hEvx
X-Received: by 2002:a17:90a:6901:: with SMTP id r1mr12182025pjj.178.1602999540478;
        Sat, 17 Oct 2020 22:39:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602999540; cv=none;
        d=google.com; s=arc-20160816;
        b=X1qVJTo/jBVwDmUq+WxNlaOq/sgVYwLT9tOYbMrRsNWBkcIX3gPZrnbaMEPFthwtJN
         RPJlueHZmIhQmqy9yE3siptC4ljyKb2fvysc5JJn9PNXah6g4kvDCECih9yD9YsrgxNL
         u9olxPvkjyGXoKXYXS8X2oOY9WGre9InttJs9pVkXsn4Gx+DAFv6ZSNT3rzfCcRG0WtM
         t5Fu/GwDJ2gvhNeAA/6NUy02+VSfeM5Fgm+vR8QK5FC9v6VaDWNlEnnzIjHiJER1H7ub
         +mPIWB0lUtdFRFo4uxQhMAwuPxBb0M0cnUEynAAyXPtDOEGrRzBdOaDVKWoxNpezlPjE
         9brw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jdM+E63GDeR/PJk490eSYHgjAaCVoZmcNpiWEvxA2tc=;
        b=NCMWOfl9sVoDyxrBQMcZB+1dGQ+H4TaGtKH/mtmRQ8CKP3MKgEi/hoMaNqDD0oepcW
         qJuZ0dex70YXEt9db2N4/fGAzzkcfBEc/PzUiTjrPADmLji6eDp2i0a/5XI/USbw5Lbt
         G4f+zyly7w6+HcUYkNPPo++LSOOAprMqUeGBxyAHtMrqDRu/Z2VEZQf3GgmqQ4ENtBDk
         xwmqyx+zGMHLTbQUMGVjo+cMY51uyFA0Ze+LrhJKOyP0z9HUvfMR26MiFQTwUr+IWoXN
         kgLq3086v1yjlN9XMJZ5Uxep/4Cc//4R33hTorXUBmwKWiAG2/GiQbkkzMFi+jCwTz7J
         YoaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="CbGILr/J";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ce17si429561pjb.3.2020.10.17.22.39.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2020 22:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="CbGILr/J";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7D2062080D;
	Sun, 18 Oct 2020 05:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1602999540;
	bh=IuIBGb3uepvqKXtmEXd3FvIvCqWjRHidnOtvxbjQZ0w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CbGILr/Joe2ESCDVlZe28Bj1QpKEa8x0FSanQ2NKIhqmKjLiF7fHTToJa09yjt957
	 6X68X7fHNk/N9FfbMSLSe42sGHby0+gvn3Tlhx3cbTtHriDE5URZ6zGFfff8E3q+kA
	 gPcj0pHIvHlBID+wLlvwIrOwV5HCtoCVPERrlzKQ=
Date: Sun, 18 Oct 2020 07:38:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>,
	Sumera Priyadarsini <sylphrenadin@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][PATCH 0/3] staging: Replace
 snprintf() with scnprintf()
Message-ID: <20201018053857.GA591645@kroah.com>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
 <20201015192157.GC20115@casper.infradead.org>
 <20201018053243.GA98400@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201018053243.GA98400@ubuntu204>

On Sun, Oct 18, 2020 at 11:02:43AM +0530, Deepak R Varma wrote:
> On Thu, Oct 15, 2020 at 08:21:57PM +0100, Matthew Wilcox wrote:
> > On Fri, Oct 16, 2020 at 12:41:42AM +0530, Sumera Priyadarsini wrote:
> > > The show() methods in device attributes should return the number of
> > > bytes printed into the buffer which is the return value of scnprintf(). 
> > > snprintf() returns the potential number of bytes that could be written
> > > which may be greater than the actual length to be written.
> > 
> > There's a big patchset just gone into 5.10 yesterday which adds a new
> > sysfs_emit() for show methods.  You probably want to use that instead
> > of scnprintf().
> > 
> Hello Matthew,
> I am able to build my staging branch into 5.9.0-rc8 release. Can you
> please suggest how can I get 5.10?

Pull from Linus's tree right now, or pull from linux-next.

