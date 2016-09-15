X-GM-THRID: 6330571692278022144
X-Received: by 10.13.234.137 with SMTP id t131mr2609609ywe.35.1473953959965;
        Thu, 15 Sep 2016 08:39:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.49 with SMTP id u46ls3605255otf.43.gmail; Thu, 15 Sep
 2016 08:39:19 -0700 (PDT)
X-Received: by 10.129.165.14 with SMTP id c14mr6873728ywh.48.1473953959505;
        Thu, 15 Sep 2016 08:39:19 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si1328126pab.2.2016.09.15.08.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 08:39:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C0C83722;
	Thu, 15 Sep 2016 15:39:18 +0000 (UTC)
Date: Thu, 15 Sep 2016 17:39:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jon.nettleton@gmail.com
Subject: Re: [PATCH] staging: olpc_dcon: Replace BUG/BUG_ON with WARN_ON
Message-ID: <20160915153925.GB28595@kroah.com>
References: <20160915145101.GA6064@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160915145101.GA6064@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 08:21:09PM +0530, Anchal Jain wrote:
> This patch fixed the warning detect by checkpatch.pl
> 
> Avoid crashing the kernel - try using WARN_ON & recovery code rather than 
> BUG() or BUG_ON().
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/olpc_dcon/olpc_dcon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
> index f45b2ef..62e70ee 100644
> --- a/drivers/staging/olpc_dcon/olpc_dcon.c
> +++ b/drivers/staging/olpc_dcon/olpc_dcon.c
> @@ -141,7 +141,7 @@ power_up:
>  	}
>  	if (x < 0) {
>  		pr_err("unable to stabilize dcon's smbus, reasserting power and praying.\n");
> -		BUG_ON(olpc_board_at_least(olpc_board(0xc2)));
> +		WAARN_ON(olpc_board_at_least(olpc_board(0xc2)));

Did you build this?

Also, the original code is correct here, the line above should have
given you a hint about this.

Remember, checkpatch is just a guideline, not hard and fast rules.  Here
it is incorrect.

And again, you didn't even build the code, which is a bit rude :(

thanks,

greg k-h

