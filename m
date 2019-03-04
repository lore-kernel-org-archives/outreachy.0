X-GM-THRID: 6660473635314073600
X-Received: by 2002:a50:addd:: with SMTP id b29mr2822662edd.11.1551737393118;
        Mon, 04 Mar 2019 14:09:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:e2ca:: with SMTP id gr10ls3770378ejb.6.gmail; Mon,
 04 Mar 2019 14:09:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqw3oELtFxllWFBXFvJzOekAx2+u+hPNPggMUB+PEaUATDpVu6Xxij0MSBPKf9KQagf7awH/
X-Received: by 2002:a17:906:1850:: with SMTP id w16mr2446021eje.7.1551737392446;
        Mon, 04 Mar 2019 14:09:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551737392; cv=none;
        d=google.com; s=arc-20160816;
        b=to0qK6b7YhuIc45swAEspOBOBOikQgvHM/1bAwIguTKnIQZi0xNhbM7Ch1Agwmk4pb
         3XQWxjNg9eDXKwswB2ij5h8jJ6QeNxeNMpGRZdJd/TeDWyRh1ETCyEcHkzMnoyGB2wDz
         O+11/T6FXCQ6xeV9fBgnBqFAAWZl7jp3TVHGSV8jOGZoZ8+RaKlnWA2V4LD84F40KY3z
         ObJGlZIuVV65oMIw+7pOusIMJggT+cyBX5jDXN7zfYJRwzwQW0szPQbhK7tv5ixIDu53
         OFvRM4w6YEeX2yeEu5Bi6H/aJQQtpBKnLiRXiVXOGiH8xtY0AKCrCIoKTnDH0gwUxhbK
         +y6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=lz/pg00ojo7j3dRaMZiM9BDmp9Wl4SjuGYPUhwByYHg=;
        b=h7d7QEeZRrBB+7/mHR7w2OycjSZ8QxkSoB3/usIqnXxAK81ETXp/kcZyKzOcvXkzJ4
         Ks7gW6TwDQQYuBTn8CcOkzuqOCfROYMXkVb4l0mks1WSHI9mVlVIip9jd6diKnZYp4wf
         L1UZ6p/cCDlbyysSCOP27Jg+tzs0CPyjkKsUIhOOFT6r5hmJT0JeQSQc5TBBAEzdjcOH
         5v0V5A7HFwXUJuO4f0TDUmD4n9udbFUqVGqhGH+2QCDUngmWa4Zu2cJ1ATUQg5UNLlZz
         xcyrDvCUD5wGq/tsCz1DulfHx7Km65jYtleH6SjmjuHCOsHTCfUXLmD00/9VFK0SdKED
         0Uvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si272899ejx.1.2019.03.04.14.09.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 14:09:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,441,1544482800"; 
   d="scan'208";a="298082517"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 23:09:51 +0100
Date: Mon, 4 Mar 2019 23:09:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Fix line over 80
 characters
In-Reply-To: <20190304220537.GA9580@pthm>
Message-ID: <alpine.DEB.2.21.1903042307330.2591@hadrien>
References: <20190304220537.GA9580@pthm>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, Daniela Mormocea wrote:

> fix line over 80 characters, warning by checkpatch

This should be a proper sentence.  That is, it should begin with a capital
letter and end with a period.

It would be better to say what you actually did, rather than just saying
that you fixed something.  Say what you did and why.

If this change is to replace a patch that you previously sent, it should
be indicated as v2, ie [PATCH v2], and you should describe what has
changed since the previous version under the ---

julia

>
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  drivers/staging/fbtft/flexfb.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
> index c5fa591..b91b459 100644
> --- a/drivers/staging/fbtft/flexfb.c
> +++ b/drivers/staging/fbtft/flexfb.c
> @@ -718,7 +718,9 @@ static int flexfb_probe_common(struct spi_device *sdev,
>  			par->fbtftops.write_vmem = fbtft_write_vmem16_bus16;
>  			break;
>  		default:
> -			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n", buswidth);
> +			dev_err(dev,
> +				"argument 'buswidth': %d is not supported with parallel.\n",
> +				buswidth);
>  			return -EINVAL;
>  		}
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304220537.GA9580%40pthm.
> For more options, visit https://groups.google.com/d/optout.
>

