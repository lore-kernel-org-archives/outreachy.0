X-GM-THRID: 6391449518367309824
X-Received: by 10.13.192.1 with SMTP id b1mr6882077ywd.54.1488229891691;
        Mon, 27 Feb 2017 13:11:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.196 with SMTP id x62ls14526543ota.32.gmail; Mon, 27 Feb
 2017 13:11:31 -0800 (PST)
X-Received: by 10.159.32.79 with SMTP id 73mr4887883uam.32.1488229891356;
        Mon, 27 Feb 2017 13:11:31 -0800 (PST)
Received: by 10.202.59.84 with SMTP id i81msoia;
        Mon, 27 Feb 2017 12:29:20 -0800 (PST)
X-Received: by 10.36.38.203 with SMTP id v194mr4622853itv.33.1488227360134;
        Mon, 27 Feb 2017 12:29:20 -0800 (PST)
Return-Path: <me@tobin.cc>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id r198si1661031ywe.4.2017.02.27.12.29.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 12:29:20 -0800 (PST)
Received-SPF: neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) client-ip=66.111.4.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc;
       dkim=pass header.i=@messagingengine.com;
       spf=neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id B4584208A0;
	Mon, 27 Feb 2017 15:29:19 -0500 (EST)
Received: from frontend1 ([10.202.2.160])
  by compute5.internal (MEProxy); Mon, 27 Feb 2017 15:29:19 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=tobin.cc; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=4dCDhAowa/UDpfp
	jRUFpyoFjoeI=; b=lUNjXcBDMy5P/1N5eJvSK8eaCMCsiwBHuYQecdR7OG5cxxP
	TNAqRSxOEx4dCZ1rHf4b2GyA6AAH/SHxuZW3bljjKwXjKE264jGdXO7RGhJ66HK4
	RmSwjUTh+5pXdxQttMnnFUzoc1o5cIfqurvnkXMzO53e1VCN4UxlZx3QFNJQ=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	smtpout; bh=4dCDhAowa/UDpfpjRUFpyoFjoeI=; b=L/yyHBP3T2hZ1f8he7b9
	dkNn3wuglL/sBfpG9IQD1wpfhJDlcLI8l1XQbNiV+UG5ZeVTP68PCA8vnx/dgFVy
	dxiEGTlBMNgo4TyFzin3Z2J2ZknYUPl4NcgO6P/+T0CWMcFO8QjU9SHvy0YyTgnT
	pqMTTnDyBHYWwBYe83xyxPw=
X-ME-Sender: <xms:H4y0WGAj1wjsCmA27O9N_on5cU7IKYHZMe69qNNKq-CKmNxMTL0Nyg>
X-Sasl-enc: CzP6aCnz/qsro6WvZwsE1bG6m+Z7XE7vgKhvfMAQt7nn 1488227359
Received: from eros (ppp121-44-89-147.bras1.syd7.internode.on.net [121.44.89.147])
	by mail.messagingengine.com (Postfix) with ESMTPA id 988B47E15C;
	Mon, 27 Feb 2017 15:29:17 -0500 (EST)
Date: Tue, 28 Feb 2017 07:29:15 +1100
From: "Tobin C. Harding" <me@tobin.cc>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>,
	devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: ks7010: remove code
 in comments.
Message-ID: <20170227202915.GA10862@eros>
References: <20170226160820.GA20046@arushi-HP-Pavilion-Notebook>
 <20170227144852.GA24465@kroah.com>
 <CA+XqjF-7SfgGkcHGhraz2R=8qV4Vgqiky+u+qSJNTMGr__JnTg@mail.gmail.com>
 <alpine.DEB.2.20.1702271606420.3032@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.20.1702271606420.3032@hadrien>
X-Mailer: Mutt 1.5.24 (2015-08-30)
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 27, 2017 at 04:07:27PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 27 Feb 2017, Arushi Singhal wrote:
> 
> >
> >
> > On Mon, Feb 27, 2017 at 8:18 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> >       On Sun, Feb 26, 2017 at 09:38:20PM +0530, Arushi Singhal wrote:
> >       > Commenting Code Is a Bad Idea.
> >       > Comments are their to explain the code and how the code
> >       achieves its
> >       > goal and as codes in the comments� does not explain what the
> >       code is
> >       > doing so there is no use of commenting them.
> >       > So in this patch codes in the comments are removed.
> >       >
> >       > Signed-off-by: Arushi Singhal
> >       <arushisinghal19971997@gmail.com>
> >       > ---
> >       >� changes in v2
> >       >� - subject lines is made short.
> >       >
> >       >� drivers/staging/ks7010/ks7010_sdio.c | 4 ----
> >       >� 1 file changed, 4 deletions(-)
> >
> >       This patch does not apply against my staging-testing branch :(
> >
> >
> > why?
> 
> You should figure this out yourself.  Pull Greg's tree again, and try to
> apply your patch.  It's deterministic, so you should have the same
> information that he has.

I have only just worked this out Arushi so I thought I'd share. You
may want to read up on remote tracking branches in git and set up a
branch tracking Greg's staging-testing branch. Then create (checkout
-b) your development branches from that branch.

Good luck,
Tobin.

