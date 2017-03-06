X-GM-THRID: 6393338025823174656
X-Received: by 10.129.57.66 with SMTP id g63mr6602618ywa.77.1488807481229;
        Mon, 06 Mar 2017 05:38:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.6 with SMTP id q6ls2248359otc.10.gmail; Mon, 06 Mar
 2017 05:38:00 -0800 (PST)
X-Received: by 10.157.24.90 with SMTP id t26mr6416632ott.91.1488807480840;
        Mon, 06 Mar 2017 05:38:00 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si33720pfz.1.2017.03.06.05.38.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 05:38:00 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.168.212.159])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 116748CC;
	Mon,  6 Mar 2017 13:37:59 +0000 (UTC)
Date: Mon, 6 Mar 2017 14:37:53 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/2] staging: bcm2835-audio: match alignment with open
 parenthesis
Message-ID: <20170306133753.GA31737@kroah.com>
References: <cover.1488716526.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488716526.git.aishpant@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 05, 2017 at 05:53:35PM +0530, Aishwarya Pant wrote:
> Patch fixes the following checkpatch warning issued on bcm2835-ctl.c and
> bcm2835-pcm.c- CHECK: Alignment should match open parenthesis
> 
> Aishwarya Pant (2):
>   staging: bcm2835-audio: match alignment with open parenthesis
>   staging: bcm2835-audio: match alignment with open parenthesis

These both have identical subject lines, which means they must do the
exact same thing :(

Please fix up.

thanks,

greg k-h

