X-GM-THRID: 6616381756005154816
X-Received: by 2002:a37:9786:: with SMTP id z128-v6mr7523899qkd.39.1540677576519;
        Sat, 27 Oct 2018 14:59:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b51c:: with SMTP id d28ls1811526qve.7.gmail; Sat, 27 Oct
 2018 14:59:35 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dzbrVjx+dxjIGwFJ7ekdy6rvghJdCTCzaxWoo1HgBOSJRR2g49zcaDGpb/7woXwirddzdl
X-Received: by 2002:a0c:fc4b:: with SMTP id w11mr7546893qvp.3.1540677575844;
        Sat, 27 Oct 2018 14:59:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540677575; cv=none;
        d=google.com; s=arc-20160816;
        b=yacLUVjnTm6sI013ukfNkkIsfnxO85SaEgzQD3ggvm95nP/tmjvf2Mxg9RkHtclSGZ
         rPVvD78VZ1hWfvioolss45aw799Y+uKLkBFUcU0jALQBHXRlAlka6Nq3cpaYk25EZKrW
         QCuHpei/rCVT4J/VbY63sOWMDTGE9DsPAyUlA/oDp2fFB7UKWyGzVnt3uAT+XPCGrMaj
         1n0Sumvrjads2jIXcIyQp4uXJlkhigJpGikhfNC807l/FzBsVyODnPf8nane8pTnks4+
         19S7n2PfGCrPM1qrp0EpTZ2F06hUYMYHQ1yBIMYysJSjdcy5c+ocr60Tp6wPzNL6Oc7b
         Sqxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=GE/nP5OJT5YZceJBUI+JvU2G+4f9EyUpai3d5wpSzKA=;
        b=oCIqR3S6dXcpUmWW8mjJyI1MlzRrGdR/ZMubSmq2D76XdQaEQ7xxXvNLctbKJTmojy
         wVwzkrBbgQY42lunmyhwak+QwUBCEHE75f5MfIefkYdNS+Y7LVAOprD6WpKW1Z2SZFJ4
         Y56Of5HeIZRI/K/S68v/yfS7cqFbW/tSYrRYh9QvH8Zfk6h8EAh5xePgAdjJpbXcTVfF
         SSCm6iDZ/rYINzwsX01nfTwDd6idt5P2r5ybotfQ9ePNNNzTkQTD7IFqGm7M3TRMaVpP
         ViRQR3LXKGla0yto4segbFNUg/cQfBA4RnAYCdt+QbJelKQbeBybTAY2IQ9U6h4Jxi8y
         6R3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.19 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0019.hostedemail.com. [216.40.44.19])
        by gmr-mx.google.com with ESMTPS id l18-v6si211547qtj.0.2018.10.27.14.59.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 14:59:35 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.19 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.19;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.19 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id E11A1837F24D;
	Sat, 27 Oct 2018 21:59:34 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::,RULES_HIT:41:355:379:599:800:960:966:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2196:2197:2199:2200:2393:2553:2559:2562:2693:2828:2901:3138:3139:3140:3141:3142:3355:3622:3653:3743:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4385:4605:5007:7514:7903:10004:10400:10848:11026:11232:11658:11914:12043:12296:12555:12740:12760:12895:12986:13255:13439:13869:14096:14097:14181:14659:14721:14819:21080:21221:21433:21451:21627:21740:21773:30005:30012:30054:30070:30090:30091,0,RBL:47.151.153.53:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:28,LUA_SUMMARY:none
X-HE-Tag: money65_536bbe3c9132a
X-Filterd-Recvd-Size: 4043
Received: from XPS-9350.home (unknown [47.151.153.53])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Sat, 27 Oct 2018 21:59:33 +0000 (UTC)
Message-ID: <5ac9cc7060a4a942a7c362cfe35515bd3c7820fb.camel@perches.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH 2/2] staging: vboxvideo: Use
 unsigned int instead bool
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Sasha Levin <sashal@kernel.org>
Cc: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Hans de Goede <hdegoede@redhat.com>, Michael
 Thayer <michael.thayer@oracle.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com
Date: Sat, 27 Oct 2018 14:59:32 -0700
In-Reply-To: <alpine.DEB.2.21.1810262252550.2791@hadrien>
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>
	 <211701e4ae42acd95afb24713314bce5a4c58ecf.1540580493.git.shayenneluzmoura@gmail.com>
	 <20181026204225.GH2015@sasha-vm>
	 <alpine.DEB.2.21.1810262252550.2791@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2018-10-26 at 22:54 +0200, Julia Lawall wrote:
> [Adding Joe Perches]
> 
> On Fri, 26 Oct 2018, Sasha Levin wrote:
> 
> > On Fri, Oct 26, 2018 at 04:04:45PM -0300, Shayenne da Luz Moura wrote:
> > > This change was suggested by checkpath.pl. Use unsigned int with bitfield
> > > allocate only one bit to the boolean variable.
> > > 
> > > CHECK: Avoid using bool structure members because of possible alignment
> > > issues
> > > 
> > > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> > > ---
> > > drivers/staging/vboxvideo/vbox_drv.h        | 14 +++++++-------
> > > drivers/staging/vboxvideo/vboxvideo_guest.h |  2 +-
> > > 2 files changed, 8 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vboxvideo/vbox_drv.h
> > > b/drivers/staging/vboxvideo/vbox_drv.h
> > > index 594f84272957..7d3e329a6b1c 100644
> > > --- a/drivers/staging/vboxvideo/vbox_drv.h
> > > +++ b/drivers/staging/vboxvideo/vbox_drv.h
> > > @@ -81,7 +81,7 @@ struct vbox_private {
> > > 	u8 __iomem *vbva_buffers;
> > > 	struct gen_pool *guest_pool;
> > > 	struct vbva_buf_ctx *vbva_info;
> > > -	bool any_pitch;
> > > +	unsigned int any_pitch:1;
> > > 	u32 num_crtcs;
> > > 	/** Amount of available VRAM, including space used for buffers. */
> > > 	u32 full_vram_size;
> > 
> > Using bitfields for booleans in these cases is less efficient than just
> > using "regular" booleans for two reasons:
> > 
> > 1. It will use the same amount of space. Due to alignment requirements,
> > the compiler can't squeeze in anything into the 7 bits that are now
> > "free". Each member, unless it's another bitfield, must start at a whole
> > byte.
> > 
> > 2. This is actually less efficient (slower) for the compiler to work
> > with. The smallest granularity we have to access memory is 1 byte; we
> > can't set individual bits directly in memory. For the original code, the
> > assembly for 'vbox_private.any_pitch = true' would look something like
> > this:
> > 
> > 	movl   $0x1,-0x10(%rsp)
> > 
> > As you can see, the compiler can directly write into the variable.
> > However, when we switch to using bitfields, the compiler must preserve
> > the original value of the other 7 bits, so it must first read them from
> > memory, manipulate the value and write it back. The assembly would
> > look something like this:
> > 
> > 	movzbl -0x10(%rsp),%eax
> > 	or     $0x1,%eax
> > 	mov    %al,-0x10(%rsp)
> > 
> > Which is less efficient than what was previously happening.
> 
> Maybe checkpatch could be more precise about what kind of bools should be
> changed?

Probably so, what verbiage would you suggest?

Also, any conversion from bool to int would
have to take care than any assigment uses !!
where appropriate.



