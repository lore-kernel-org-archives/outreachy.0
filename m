X-GM-THRID: 6394764238679703552
X-Received: by 10.129.93.195 with SMTP id r186mr847064ywb.168.1488913576372;
        Tue, 07 Mar 2017 11:06:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.75 with SMTP id r72ls437597iod.30.gmail; Tue, 07 Mar
 2017 11:06:15 -0800 (PST)
X-Received: by 10.99.64.129 with SMTP id n123mr965410pga.61.1488913575299;
        Tue, 07 Mar 2017 11:06:15 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si168207pfb.7.2017.03.07.11.06.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 11:06:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A63A7C2D;
	Tue,  7 Mar 2017 19:06:14 +0000 (UTC)
Date: Tue, 7 Mar 2017 20:06:09 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fix alignment
 with parenthesis
Message-ID: <20170307190609.GA6914@kroah.com>
References: <20170307143056.3252-1-sreyamittal5@gmail.com>
 <alpine.DEB.2.20.1703071653360.3150@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703071653360.3150@hadrien>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 07, 2017 at 04:54:07PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 7 Mar 2017, Sreya Mittal wrote:
> 
> > Fix the checkpatch issue:
> > Alignment should match open parenthesis
> >
> > Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> > ---
> >  drivers/staging/bcm2835-audio/bcm2835-ctl.c | 2 +-
> 
> I don't see this file in staging-testing anymore.

It moved.  And I think someone else already made this change :(

Sreya, please rebase your patch and see if it still is needed.  If so,
please resend the updated version.

thanks,

greg k-h

