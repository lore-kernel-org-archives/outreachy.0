X-GM-THRID: 6669728292045586432
X-Received: by 2002:a25:4c85:: with SMTP id z127mr9427458yba.69.1552932032119;
        Mon, 18 Mar 2019 11:00:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2f90:: with SMTP id v138ls4195980ybv.10.gmail; Mon, 18
 Mar 2019 11:00:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxtluh9Fw0fIWbbM/JUnDC3KdXVX8oU3kcliMVnRZW+cebqTm5T6Chj7R26nptSW9Z6okxP
X-Received: by 2002:a25:6dd7:: with SMTP id i206mr5516407ybc.97.1552932030883;
        Mon, 18 Mar 2019 11:00:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552932030; cv=none;
        d=google.com; s=arc-20160816;
        b=I9xMV9g7CfaL+a/YPkmDpuYzrjIjmt7swHy60yOvQtneeFTAoFbqArf3YN/MM5uY7f
         Ia+XfiLjUEy7mIztvKvYLDrcdYyeeHtjN1OaNxePTrU3VS5DClQIsHbk7TyLDQpMx3z1
         EF0G1p8gzenn2M8daL2KxBfHhuB7RSfrmq6DziHoRj3q2XHHXYIliei+CjYIBX8BjR7I
         0fLYn9wos7KPO9/CBsYANawqN1yOk+ek0om6GE944hGOn/69J1GEAGC8Et/nyzGx1kqZ
         uXZGw/AZX3zTgbQcg+ul5JtgGfrOlXBIUiUMhXU7DImsnhGftf2HGaDTq31Rm1CXHbcC
         o0eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=WMuLl2Adur9nAOfKwPUS9qMk757D/HtMv57ZlJf4qsg=;
        b=jbfwD5juYvDy+kz2n395NKKPtHufe3MRrRgPjgIdkAifl0cvecBKwfh8pSA8hMb9zB
         ApFDc6LYp0FEd5zUoikr9YcofMKZzdnBTwzYmQ51nPkE8ydKtInCkP076FbOaoZZgbBY
         O8ajr7rYCfcapclGJoPL+YX87Nv5/S8AppTuO1eULenF9f5uUT0186PPI/A2TPnwwk96
         LSbOsE7JxG7giPQAtHpz8q3cjHlQUEuWN1jTQUMjmOKitHU1jxt4qWmQ6cBaYfb5PHdV
         MXUJ6FUkxTmjVIOvTTNMw13xxBkEaABPaf8oPG7Sw/WiytbXs7EezjYgZ2qQGZBLcO3c
         4JyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=TJuaTbB+;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=kvl39pUT;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com. [64.147.123.24])
        by gmr-mx.google.com with ESMTPS id k62si658948ybb.4.2019.03.18.11.00.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 11:00:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) client-ip=64.147.123.24;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=TJuaTbB+;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=kvl39pUT;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 85ECD45B5;
	Mon, 18 Mar 2019 14:00:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 18 Mar 2019 14:00:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=WMuLl2Adur9nAOfKwPUS9qMk757
	D/HtMv57ZlJf4qsg=; b=TJuaTbB++FqOmITq1EvwTDL4oEkEXUTdG8djytWKomb
	oQeOsR29TU8pQMkrnBp2n0WsAmiEUN6DeaU7ITofKOkgxgevAyMbWu/U9kqWkWFF
	ygPGIH9Bj18gcSPenEnl7QUkJwjwh02lwRrrL1HT44iUCrzEt0ipuOjFXc8RdoIK
	gU3aefmhhNxlTpbXXY3TNJPjWt74gqOCHsYlehKnI/dT802+1e4mvg80RFNHSo1m
	+bSskN9vDR/raS8pRdxiS9e+BPZ4YsQGk4Kl8Jj4m0pFJPRGvuoc8Q86PM3zThJn
	fkwh2YyDoyHSdGVjAT70GXXKp9+gWHcfyB9TPg15Idw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=WMuLl2
	Adur9nAOfKwPUS9qMk757D/HtMv57ZlJf4qsg=; b=kvl39pUT2AnquNDqNv/qCl
	oOGAwi9LhQo1+qPABZHjZAGfDEw2y1nWEqGVK1DDW7m8+gZrXmRJz+PbbSmJkcX1
	gWkCKYx+5ZEgYUUq4Y2xbnZMe7rlg++ncMCamuE5u2Icj9K8UBTMvFSaGew/EXwF
	V+qCo0/znHZNpIzPvE0JKmjJVwbUjU9ttw2U7UpjVFfvMEk9BD6Ne/NKz0vp5mgy
	ggjZWQVsyr1zZ6Xu73FAFe2gpIXAB2Z/78xH89JI23vl2XG5uFTMJ8tOMldCU8Sy
	vNFPknXI8eu06WNKtaxHz/fsyRMhk9k924AGf4JH20CpXRJxU/eeozc6pA8vly4w
	==
X-ME-Sender: <xms:vNyPXLEJ7Ne-99MOmes0ddW9MA4YDaFWSng_kcS5xL2EPCKPzD-bmA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddriedugddutdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuffhomhgrihhnpehkvghrnhgvlh
    drohhrghenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhr
    ohhmpehgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:vNyPXOPlpm1DvIT_0FMxDwnGBeiuMZdJLdkHPuBHikrTGEljPliipQ>
    <xmx:vNyPXPnzpQUmlkXh0aWqhnH1IiedUL_s7k5FAnkGiis0hEEdwXU2BQ>
    <xmx:vNyPXKNcu5Gq9nR8u6oJRKrPs5R89zaj4rjUkmrQ_EVQkbPMANKddg>
    <xmx:vdyPXLXxQ2IbtstBpY6_6Aa2YNq78jPpfha6G0pHKMaJpczXatK0_A>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5E45710324;
	Mon, 18 Mar 2019 14:00:28 -0400 (EDT)
Date: Mon, 18 Mar 2019 19:00:27 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: gasket: replace symbolic
 permissions
Message-ID: <20190318180027.GA7136@kroah.com>
References: <1552917114-7936-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <20190318175135.GA23850@kroah.com>
 <CANTOzWG+ybnDB-7_mEDNJ8RZjToo+_FYsu4xNyr+TmExMb5DTA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANTOzWG+ybnDB-7_mEDNJ8RZjToo+_FYsu4xNyr+TmExMb5DTA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 11:23:50PM +0530, Payal Kshirsagar wrote:
> On Mon, 18 Mar 2019 at 23:21, Greg KH <greg@kroah.com> wrote:
> 
> > On Mon, Mar 18, 2019 at 07:21:54PM +0530, Payal Kshirsagar wrote:
> > > Symbolic permissions 'S_IRUGO' are replaced by octal permissions '0444'
> > > in file
> > > drivers/staging/gasket/gasket_sysfs.h at line no 43 and 78.
> > >
> > > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > > ---
> > >  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/gasket/gasket_sysfs.h
> > b/drivers/staging/gasket/gasket_sysfs.h
> > > index 151e8ed..60590ea 100644
> > > --- a/drivers/staging/gasket/gasket_sysfs.h
> > > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > > @@ -40,7 +40,7 @@
> > >   */
> > >  #define GASKET_END_OF_ATTR_ARRAY
> >        \
> > >       {
> >     \
> > > -             .attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL,
> > NULL),   \
> > > +             .attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),
> >  \
> > >               .data.attr_type = 0,
> >      \
> > >       }
> > >
> > > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
> > >
> > >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)
> >        \
> > >       {
> >     \
> > > -             .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),
> >     \
> > > +             .attr = __ATTR(_name, 0444, _show_function, NULL),
> >   \
> > >               .data.attr_type = _attr_type
> >      \
> > >       }
> > >
> >
> > This patch does not apply at all, as others have made changes in this
> > portion of the kernel.  Be sure you are working against the latest
> > staging tree, it is staging.git on git.kernel.org and use the
> > staging-testing branch.
> >
> > thanks,
> >
> > greg k-h
> >
> 
> How do I update my staging tree ?

There are lots of tutorials for how to update your local branches based
on an "upstream" tree/branch.  I suggest following them, and if you have
any specific questions, please let us know.

thanks,

greg k-h

