X-GM-THRID: 6805826308521590784
X-Received: by 2002:aa7:9f49:: with SMTP id h9mr1438313pfr.217.1584620125359;
        Thu, 19 Mar 2020 05:15:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b258:: with SMTP id t24ls1500177pgo.10.gmail; Thu, 19
 Mar 2020 05:15:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsGNqfBDUC3cFDaFbsgRM7G6JfCRTNbbvkio1Fl4kAuSTWde3YOsVNXfneM/MBi9FY5KsWJ
X-Received: by 2002:a62:447:: with SMTP id 68mr3657563pfe.174.1584620123992;
        Thu, 19 Mar 2020 05:15:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584620123; cv=none;
        d=google.com; s=arc-20160816;
        b=tkHx9usShUyey3Nm4wYWxfQvmK8k/NtrvS70d+DdeBeqBBPa3ODX5x0BRS0lJNLfKn
         gJ5Nh2cS7gh1//Y4zxXZRKQoLP3/nMKV5zoh3xIW1Mzn42tskiKhn2oLMGyVAgbjMgLn
         dIOu3ke8jiV9dQziozQMKBXbArs0GmFIv8lQapaMsZlRALvhV1CjT5k3znmuIqQXu302
         FRkmLAx+pPK+1msZXzziOYvhHIZvThpavBoLj5GPkNsLYlKxby130L/X9wuL/52AyQWs
         EJfM+zP/MpMuNU+U0A+rVsBgRDfnjqaWVFkI6s3LS1nLbo5xMDev3vCU4K+uod4aZecT
         HqGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PA4JbwqmGxtOp7e0UKqLDrCwgd3UcsotlcSPzvmmjPo=;
        b=snAQvSoSK/+7gKwZXuWeCKVMqoeev1kRCLuqln75tPb8kuLYuesJ/s9ilnkxKS+tqS
         2PHy+kcI2zccn1O7yBSF4GHNUYsnX5vJwFD1EG68PVV0KwxnKKV0vI8easp2E6WAxDI/
         6hCPJphybU+7q91mGHJfe9s3IXbl1B5ev9WLirL3xE/vDdZdLOyAr5tNqVGndeD8owp+
         XZ+4SVIvodebGxU6xNyBfBRsXGvqbU2I66EO7/UmTG9jMdGJcMJ4cW+dZ/HtRo5PFodF
         oSyx5C8LAkxyZVvQLEoqT49k2DD/KU6Epb2NBbYE7X0+AAzd7cpdDEY2UPcfXDOkZcje
         Jkrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bA9fyWpT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i19si320860pjx.1.2020.03.19.05.15.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 05:15:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bA9fyWpT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2B97D20663;
	Thu, 19 Mar 2020 12:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584620123;
	bh=Eh2MAzAjmu6HHIbdA7EX0LjSMGZoR5FLykqpZljqorg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bA9fyWpT5f54NCgbX1ORv40VTT0vBQwBatqkB8o8kVKFa2dR9WFfv7XEC2ZPEIduC
	 Q0A+L+xXJvq0ewXAB1nCndRlPkStO9OAl8yiGndE1PSXgmGc6f/ieyeHOUFYK1W3Tz
	 X4nF7mBDH5kHKHM9FZ8U3r/JozDAf79SbPtmtSTA=
Date: Thu, 19 Mar 2020 13:15:21 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
Message-ID: <20200319121521.GC3802220@kroah.com>
References: <20200319080144.GA1723@tulip.local>
 <20200319080905.GA3489391@kroah.com>
 <20200319082249.GC1723@tulip.local>
 <20200319083600.GA3490824@kroah.com>
 <20200319085151.GE1723@tulip.local>
 <20200319085950.GA3495501@kroah.com>
 <20200319111718.GB3889@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319111718.GB3889@tulip.local>

On Thu, Mar 19, 2020 at 04:47:19PM +0530, R Veera Kumar wrote:
> On Thu, Mar 19, 2020 at 09:59:50AM +0100, Greg Kroah-Hartman wrote:
> > On Thu, Mar 19, 2020 at 02:21:54PM +0530, R Veera Kumar wrote:
> > > On Thu, Mar 19, 2020 at 09:36:00AM +0100, Greg Kroah-Hartman wrote:
> > > > On Thu, Mar 19, 2020 at 01:52:54PM +0530, R Veera Kumar wrote:
> > > > > On Thu, Mar 19, 2020 at 09:09:05AM +0100, Greg Kroah-Hartman wrote:
> > > > > > On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> > > > > > > Hi,
> > > > > > > 
> > > > > > > I posted patches on Saturday. But I did not got a msg from Greg
> > > > > > > for the patches we should resend. So I resent it yesterday.
> > > > > > 
> > > > > > What specific patches did you submit that you did not get a response on?
> > > > > > 
> > > > > > thanks,
> > > > > > 
> > > > > > greg k-h
> > > > > >
> > > > > 
> > > > > They are:
> > > > > 
> > > > > Subject: [RESEND PATCH] staging: rtl8188eu: core: Correct a typo in a comment
> > > > > Message-Id: <20200317233020.575-1-vkor@vkten.in>
> > > > 
> > > > I do not see any of these patches in my system at all.
> > > > 
> > > > I would suggest resending all patches that you have that I have not
> > > > applied as I am currently caught up on all pending outreachy patches.
> > > > 
> > > 
> > > Oh.
> > > Perhaps the issue is I am sending email patches with
> > >  To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > >  CC: outreachy-kernel <outreachy-kernel@googlegroups.com>, others
> > > 
> > > I do not know but should I send all of them with To: field.
> > > 
> > > Greg, do you only read outreachy-kernel@googlegroups.com msgs for patch
> > > lookup.
> > 
> > I read whatever shows up in my inbox :)
> > 
> > I am subscribed to the mailing list, odds are things are broken on your
> > end with your 'git send-email' setup.
> > 
> 
> Thanks Greg!
> 
> It was definitely broken git send-email setup.
> I use msmtp instead of esmtp. Which was wrongly set up.
> Direct git send-email was not working as my SMTP server
> does not supports STARTTLS, but  only TLS REQUIRED PORT:465.
> Esmtp also only supports STARTTLS not TLS REQUIRED.
> 
> git send-email should be made to support that.

git send-email works with msmtp just fine, that is how I use it.

thanks,

greg k-h

