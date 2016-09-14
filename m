X-GM-THRID: 6330241382632914944
X-Received: by 10.66.158.10 with SMTP id wq10mr2902641pab.35.1473875238825;
        Wed, 14 Sep 2016 10:47:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.225.195 with SMTP id n186ls514931ith.20.canary; Wed, 14 Sep
 2016 10:47:18 -0700 (PDT)
X-Received: by 10.66.83.100 with SMTP id p4mr2993881pay.26.1473875238265;
        Wed, 14 Sep 2016 10:47:18 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si1398821pab.2.2016.09.14.10.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 10:47:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so1024330pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 10:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fYO8TF1Qp80u74LftnWXyIPkATihVJWofAQLPpYUcsk=;
        b=qy4NVpUprRKOtNE74QdoCVmFuYbFMUS1mLctsfADg/6O11Qw6DqGYqk9TNGS4cJhnu
         i0cwYXnE/Bo4T/qw78cdwY/8HEPRkDWkLV2M8qsTBZ7S+LALGNJ60YNqGuL1vgofgQb5
         SVJiTNjCPQ3wr0qwe2sbkJLQ2qaH0DFrfk0wZRxv4huEaEXydOPUbuKRND9S2aP7vS1o
         h8R8WMxMyT0rZtuzszofk9j5fNcJjg5fVdxvAGH3gmtGfP4CltXI0MimrudWK9AYn9s2
         KzK9ff/a+2EOmZKCjHtoHFcoGSUnaeNAVt59IAHBRB5uTdPxiasRYsHahYCHtICzsZzn
         6hVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fYO8TF1Qp80u74LftnWXyIPkATihVJWofAQLPpYUcsk=;
        b=RI5q6VrP7CCdIe5q/Cj9T6ITVP/ikQXXkUDKKTjbDu6q0mA1oLVSKAVFhpMYTOScy6
         wucjoylvhEe3/0Nlsvickcv+OgexkZE6mjd5825Q3LzOA6NjKxiad2gAU/TpsmyAx/Mw
         DG2QFjLo/GoxKaT+xnk4UZKVZWBY4rF0dg7R8yqivmUufOiV9YA6jF0yIMtaSKe2irhP
         Hc7zIg51TGBrglRRflADfjMV8GUNnpRqjNBXdt09RfSulJLiru6vWuOhFabdjsiRDBhY
         g2CcRMdvxGXADRboOpWUGF1xrvhl2K6JuAnSQD4oyn/FPmAiCfFa6G2aTYFToogusAKN
         e0dg==
X-Gm-Message-State: AE9vXwPg04ZgLGdYGfSSU73dDKQxUGlk572ufgyds727VR4zGij6Ln6LnfbPxW4X4RjFhA==
X-Received: by 10.66.148.202 with SMTP id tu10mr6670462pab.52.1473875238100;
        Wed, 14 Sep 2016 10:47:18 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id vy9sm6970663pab.22.2016.09.14.10.47.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 10:47:17 -0700 (PDT)
Date: Wed, 14 Sep 2016 10:47:16 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: accel: Fix indentation
Message-ID: <20160914174716.GA2989@d830.WORKGROUP>
References: <20160914172924.GA27415@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160914172924.GA27415@toblerone>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 14, 2016 at 10:59:24PM +0530, Rehas Sachdeva wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: Statements should start on a tabstop
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>

Hi Rehas, 
This is a valid fix, but it was already submitted.
You wouldn't have easily known that.  

It's in iio git tree, not yet sync'd back to staging.
Not sure what the take-away or advice on this situation is.

Greg?

commit a5211b0d061644b48c80cfa1303413e79ace781e
Author: Clifton Barnes <clifton.a.barnes@gmail.com>
Date:   Mon Aug 22 22:45:05 2016 -0400
    staging: iio: accel: sca3000: remove extra space

alisons


> ---
>  drivers/staging/iio/accel/sca3000_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
> index b5625f5..61f3241 100644
> --- a/drivers/staging/iio/accel/sca3000_core.c
> +++ b/drivers/staging/iio/accel/sca3000_core.c
> @@ -412,7 +412,7 @@ static const struct iio_event_spec sca3000_event = {
>  		},						\
>  		.event_spec = &sca3000_event,			\
>  		.num_event_specs = 1,				\
> -	 }
> +	}
>  
>  static const struct iio_chan_spec sca3000_channels[] = {
>  	SCA3000_CHAN(0, IIO_MOD_X),
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914172924.GA27415%40toblerone.
> For more options, visit https://groups.google.com/d/optout.

