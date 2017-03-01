X-GM-THRID: 6392118133032747008
X-Received: by 10.129.52.17 with SMTP id b17mr2352512ywa.107.1488355811547;
        Wed, 01 Mar 2017 00:10:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls3653084otd.12.gmail; Wed, 01 Mar
 2017 00:10:11 -0800 (PST)
X-Received: by 10.237.52.130 with SMTP id x2mr2004775qtd.73.1488355811087;
        Wed, 01 Mar 2017 00:10:11 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h130si518741pfe.1.2017.03.01.00.10.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 00:10:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 524DAB78;
	Wed,  1 Mar 2017 08:10:10 +0000 (UTC)
Date: Wed, 1 Mar 2017 09:10:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: vc04_services: bcm2835-camera: Simplify NULL
 comparisons
Message-ID: <20170301081000.GA5984@kroah.com>
References: <20170301044735.GA13746@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170301044735.GA13746@aishwarya>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Wed, Mar 01, 2017 at 10:17:35AM +0530, Aishwarya Pant wrote:
> Remove instances of explicit NULL comparisons in bcm2835-camera driver
> for code compaction.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> 
> ---
> Changes in v2:
> 	- Break up the changes

Doesn't apply to my tree :(

