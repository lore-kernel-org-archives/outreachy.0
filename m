X-GM-THRID: 6396341070428372992
X-Received: by 10.99.189.17 with SMTP id a17mr14267694pgf.53.1489328264766;
        Sun, 12 Mar 2017 07:17:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls3579850ion.18.gmail; Sun, 12 Mar 2017
 07:17:43 -0700 (PDT)
X-Received: by 10.107.136.36 with SMTP id k36mr7287313iod.41.1489328263244;
        Sun, 12 Mar 2017 07:17:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si2648462pfa.4.2017.03.12.07.17.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:17:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4BEAE8D4;
	Sun, 12 Mar 2017 14:17:41 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:17:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, swarren@wwwdotorg.org,
	lee@kernel.org, eric@anholt.net
Subject: Re: [PATCH] staging: vc04_services: Use macro DIV_ROUND_UP
Message-ID: <20170312141723.GA30067@kroah.com>
References: <1489264063-3553-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1489264063-3553-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 12, 2017 at 01:57:43AM +0530, Gargi Sharma wrote:
> The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
> It clarifies the divisor calculations.
> Coccinelle script:
> 
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> |
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 2 +-
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Did not apply to my tree at all :(

Please rebase and resend.

thanks,

greg k-h

