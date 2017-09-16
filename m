X-GM-THRID: 6466263123755008000
X-Received: by 10.107.142.212 with SMTP id q203mr4239328iod.23.1505555552904;
        Sat, 16 Sep 2017 02:52:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.14 with SMTP id u14ls2408075itc.7.canary-gmail; Sat, 16
 Sep 2017 02:52:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC0M5y5LGtXSgMmxYdDbVz0WvIfJ5GdTfn+oq6FqtyXlEkhSjvlh8YxfkvhpIDXrjpqrzT6
X-Received: by 10.202.166.219 with SMTP id t88mr15326203oij.112.1505555552143;
        Sat, 16 Sep 2017 02:52:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505555552; cv=none;
        d=google.com; s=arc-20160816;
        b=IkxOBZ4mIks3UFoCC+2LBaWpqAMCWjr2VmkPP9DE6IqvWtSFCBQTqJAPVzXqUC/uIz
         Yr6B31o7E7zKcSJ6uo0pKOp43v4rdUH/Dv2Z6cQcuQRV0k6K0GOG1RI9Qv2Z0XDxH64f
         Xsd9ItFxMGxjCOGYmv+jt+urLt6UflykJsewSkJZnR8iOAG+a1BjmuH2rwcgYOfGQrfK
         hQ11g9k6cRONM+234ZWEcpUvOti86bRWhT+iqXj5iuNchtCgG7wTx4ryiWjESojZ45wB
         KAA35ABcQQWMxxGLf0VKC9aOSIVjGBcA3o4HlCISseocteFswO15frm/8//Ni1R8MSxi
         pt+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=mFWo6xclOaNl+aAmC97rta3CTvFjy/BKnEY0VvmH2X0=;
        b=RPI2kOYjJo3JDFfD2nSR0BXhkP13RZqrO5MX1JQC/ZciEfuArC9qrTpxMcwlmZP/Bz
         8WgeUHTlrjae+WwoBcEu+qNHZfDO+schHlpvgaHQ3bpcjYqBEx7+j6wYrCccpxAZPqgn
         khFszBZTTq7y5QT1XGYajezYDRVnbog+bcGlPItSWS9qbXiqZ1QZVyIRXGIJ25o4QEd8
         4zeI1keNHHjbRN9Iq3mWq68oK5HdBGv7LrYUee0Wf3v3nRatDtpNfiUpRYnW7SPS1seV
         8C20rBpUobhAjVM1PdXCI5BR4dDBUk+gMHPGjTGjxD1wfgeZagjNLYwEj31BxrN9i/nB
         6A/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.128 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0128.hostedemail.com. [216.40.44.128])
        by gmr-mx.google.com with ESMTPS id d125si88081itg.0.2017.09.16.02.52.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 02:52:32 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.128 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.128;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.128 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 817EF181D340F;
	Sat, 16 Sep 2017 09:52:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::,RULES_HIT:41:355:379:541:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3355:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4605:5007:6119:7903:7974:10004:10400:10450:10455:10848:11026:11232:11473:11657:11658:11914:12043:12295:12296:12663:12740:12760:12895:13138:13161:13229:13231:13255:13439:14096:14097:14181:14659:14721:19904:19999:21080:21433:21451:21627:30003:30012:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: dress26_501dca9012e40
X-Filterd-Recvd-Size: 3406
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Sat, 16 Sep 2017 09:52:30 +0000 (UTC)
Message-ID: <1505555549.16316.3.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: add comment
 for struct mutex definition
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>, 
	outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>
Date: Sat, 16 Sep 2017 02:52:29 -0700
In-Reply-To: <alpine.DEB.2.20.1709161134380.2943@hadrien>
References: <1505544199-13800-1-git-send-email-aastha.gupta4104@gmail.com>
	  <alpine.DEB.2.20.1709160948260.2943@hadrien>
	  <CAHXiS5-uqsTyjXv3KjnGnL9T7hKfEnMPL+RW-CXQE+U-oDFq2Q@mail.gmail.com>
	  <alpine.DEB.2.20.1709161020120.2943@hadrien>
	 <1505551165.14664.1.camel@perches.com>
	 <alpine.DEB.2.20.1709161134380.2943@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.6-1ubuntu1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2017-09-16 at 11:35 +0200, Julia Lawall wrote:
> 
> On Sat, 16 Sep 2017, Joe Perches wrote:
> 
> > On Sat, 2017-09-16 at 10:23 +0200, Julia Lawall wrote:
> > > On Sat, 16 Sep 2017, Aastha Gupta wrote:
> > > > On Sat, Sep 16, 2017 at 1:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > > > > On Sat, 16 Sep 2017, Aastha Gupta wrote:
> > > > > 
> > > > > > This patch fixes following checkpatch.pl checks:
> > > > > > CHECK: struct mutex definition without comment
> > 
> > []
> > > > > > diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
> > 
> > []
> > > > > > @@ -122,7 +122,7 @@ struct most_dev {
> > > > > >       bool is_channel_healthy[MAX_NUM_ENDPOINTS];
> > > > > >       struct clear_hold_work clear_work[MAX_NUM_ENDPOINTS];
> > > > > >       struct usb_anchor *busy_urbs;
> > > > > > -     struct mutex io_mutex;
> > > > > > +     struct mutex io_mutex; /* synchronize I/O with disconnect */
> > > > > 
> > > > > Why did you choose this comment?
> > > > > 
> > > > > julia
> > > > 
> > > > The use of this struct mutex was mentioned before in the code.
> > > 
> > > I see that it is just in the doc of the same structure.  I'm not sure that
> > > a double comment is needed in this case. I wonder if checkpatch
> > > should/could be extended to address this.
> > 
> > I think that's not feasible.
> > 
> > checkpatch is a patch context based check and wouldn't
> > necessarily know that the mutex is documented elsewhere.
> 
> OK.  It doesn't keep any history?  The kerneldoc is before the structure
> field declaration.

checkpatch reads and stores its input.

checkpatch is, with very few exceptions, a line based
regex scanner.

An input patch context is typically 3 lines above
and below modified content.

Whatever context outside of that +/- 3 is unavailable.

Kernel-doc comments are not parsed by checkpatch as
anything special.

checkpatch code that looks for specific comments looks
only at whether or not a particular block has a comment
at all, not the specific content of the comment.

The checkpatch function test is ctx_has_comment

You are welcome to try to expand the code but I think
there are better possible tools for this.



