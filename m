X-GM-THRID: 6329721618764398592
X-Received: by 10.157.20.41 with SMTP id h38mr19784805oth.48.1473770525401;
        Tue, 13 Sep 2016 05:42:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.90.74 with SMTP id v71ls4229089ita.9.canary; Tue, 13 Sep
 2016 05:42:04 -0700 (PDT)
X-Received: by 10.66.120.143 with SMTP id lc15mr490345pab.2.1473770524897;
        Tue, 13 Sep 2016 05:42:04 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y124si3194920pfg.1.2016.09.13.05.42.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 05:42:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 39D05A16;
	Tue, 13 Sep 2016 12:42:03 +0000 (UTC)
Date: Tue, 13 Sep 2016 14:42:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, lidza.louina@gmail.com
Subject: Re: [PATCH v2] staging: dgnc: dgnc_cls.c: usleep_range is preferred
 over udelay
Message-ID: <20160913124210.GC19911@kroah.com>
References: <20160913075754.GA7012@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160913075754.GA7012@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 13, 2016 at 01:28:39PM +0530, Anchal Jain wrote:
> According to Documentation/timers/timers-howto.txt"
> udelay() is only called once from a place where sleeping is allowed.
> We can replace it with a call to usleep_range()
> with a reasonable upper limit
> 
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
> 
> Change in v2:
> 	-By mistake another patch was mixed so, Remove that patch file
>  drivers/staging/dgnc/dgnc_cls.c      |  6 +++---
>  drivers/staging/wilc1000/linux_mon.c | 11 +++++++++++
>  2 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 4e1e0dc6..1b07255 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -410,7 +410,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
>  	writeb(out, &ch->ch_cls_uart->mcr);
>  
>  	/* Give time for the UART to actually drop the signals */
> -	udelay(10);
> +	usleep_range(10, 20);
>  }
>  
>  static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)

As others pointed out, this isn't ok to change, sorry.

greg k-h

