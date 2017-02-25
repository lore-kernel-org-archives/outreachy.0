X-GM-THRID: 6390734400098664448
X-Received: by 10.129.174.5 with SMTP id m5mr2464783ywh.58.1488009983953;
        Sat, 25 Feb 2017 00:06:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls70180otd.11.gmail; Sat, 25 Feb
 2017 00:06:23 -0800 (PST)
X-Received: by 10.129.68.35 with SMTP id r35mr2378686ywa.143.1488009983663;
        Sat, 25 Feb 2017 00:06:23 -0800 (PST)
Received: by 10.202.215.6 with SMTP id o6msoig;
        Sat, 25 Feb 2017 00:01:48 -0800 (PST)
X-Received: by 10.157.3.231 with SMTP id f94mr2453496otf.103.1488009708674;
        Sat, 25 Feb 2017 00:01:48 -0800 (PST)
Return-Path: <greg@kroah.com>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id x124si76925ywb.1.2017.02.25.00.01.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 00:01:48 -0800 (PST)
Received-SPF: neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com;
       spf=neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 4A9A820757;
	Sat, 25 Feb 2017 03:01:48 -0500 (EST)
Received: from frontend1 ([10.202.2.160])
  by compute6.internal (MEProxy); Sat, 25 Feb 2017 03:01:48 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	smtpout; bh=c0wqOlO+07OAbrkwkuynFO0IEns=; b=L9bh30cZfZl3cDUPVnrZ
	W48CTMFlA0rTPbceKVdriHIIyxizCJ1Pev10GHeJt73Fa7QggkmbEnbF0tTn/cBM
	AP/0GugqVmO77ZXkORnFvvGsrNvcGbBsl+VqtSvvVP5jFe3E+V6/4JuiIyPeoXOB
	0Y3Xa5b6JkMghKeldWnvJt0=
X-ME-Sender: <xms:7DmxWPVEszljRZ1QSUiMYHQJQRGpySgPRKc6QpT_kEpW5eZ_P1q7zg>
X-Sasl-enc: E4mNNholaFtYu5ZR6hspCwuLVMGfvmlX4SIexOBIZYTc 1488009707
Received: from localhost (unknown [78.192.101.3])
	by mail.messagingengine.com (Postfix) with ESMTPA id EAC047E354;
	Sat, 25 Feb 2017 03:01:47 -0500 (EST)
Date: Sat, 25 Feb 2017 09:01:20 +0100
From: Greg KH <greg@kroah.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Caught up on Outreachy patches
Message-ID: <20170225080120.GA2054@kroah.com>
References: <20170224175315.GA23075@kroah.com>
 <605876fe-cfb0-4389-9ca9-aa88a3b4e1ea@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <605876fe-cfb0-4389-9ca9-aa88a3b4e1ea@googlegroups.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Feb 24, 2017 at 12:35:58PM -0800, SIMRAN SINGHAL wrote:
> 
> 
> On Friday, February 24, 2017 at 11:23:23 PM UTC+5:30, gregkh wrote:
> 
>     Hi all,
> 
>     I've now caught up on all submitted outreachy kernel patches.
> 
>     So if you have not gotten an email from my automated patch scripts
>     saying your patch has been applied, consider it rejected or lost.
>     Please resend anything that you think is ready to be merged.
> 
> 
> � � Greg, as for some of my patches I didn't get reply.
> � � So, now how am I supposed to send them i.e as next version
> � � of that patch or as a completely new patch.

Very odd quoting style, please fix up your email client to do this
properly.

Resend anything I missed as a new version of the patch, saying you have
fixed up whatever kept it from being accepted the first time (if I had
commented on it), or just a 'resend' if I happened to miss it.

But first rebase your patches on my staging-testing branch to ensure
that they do work properly, otherwise you are just wasting time redoing
something I will have to reject again :)

> � � And those patches also include some patches which are acked by�
> � � Julia, so sending them as completely new patch seems pointless.

Nope, that's just how it goes, but keep Julia's ack on it when you
resend.

> � � So, I request you to please explain how we are supposed to send them
> � � and sorry for asking this, but can you please explain the reason of, if
> � � those patches are present in the mailing list then why you are calling
> � � them lost.

I don't know, I need specifics here.  Did I say something about them, or
just ignore them completly?  Did I say something like "redo all of your
outstanding patches"?  Remember, I get over 1000 emails a day, and just
had to review over 500 patches submitted for the staging subsystem in
the past 5 days.  I can't remember anything specifically, and neither
could anyone else with that kind of workload :)

thanks,

greg k-h

