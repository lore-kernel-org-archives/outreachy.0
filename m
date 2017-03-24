X-GM-THRID: 6401028562338447360
X-Received: by 10.99.146.77 with SMTP id s13mr2827591pgn.106.1490363121694;
        Fri, 24 Mar 2017 06:45:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.81 with SMTP id a78ls422298itd.2.canary-gmail; Fri, 24
 Mar 2017 06:45:20 -0700 (PDT)
X-Received: by 10.99.170.12 with SMTP id e12mr2633211pgf.134.1490363120607;
        Fri, 24 Mar 2017 06:45:20 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id g82si454455pfb.5.2017.03.24.06.45.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 06:45:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 92E36B5F;
	Fri, 24 Mar 2017 13:45:19 +0000 (UTC)
Date: Fri, 24 Mar 2017 14:44:59 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: oleg.drokin@intel.com, Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: lustre: Remove redundant code
Message-ID: <20170324134459.GA26275@kroah.com>
References: <20170324113952.GA31427@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170324113952.GA31427@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 24, 2017 at 05:09:53PM +0530, Arushi Singhal wrote:
> Remove the code which do not have any value.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/lustre/lnet/lnet/net_fault.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/lnet/net_fault.c b/drivers/staging/lustre/lnet/lnet/net_fault.c
> index 18183cbb9859..b60261db9e67 100644
> --- a/drivers/staging/lustre/lnet/lnet/net_fault.c
> +++ b/drivers/staging/lustre/lnet/lnet/net_fault.c
> @@ -997,11 +997,6 @@ lnet_fault_ctl(int opc, struct libcfs_ioctl_data *data)
>  int
>  lnet_fault_init(void)
>  {
> -	BUILD_BUG_ON(LNET_PUT_BIT != 1 << LNET_MSG_PUT);
> -	BUILD_BUG_ON(LNET_ACK_BIT != 1 << LNET_MSG_ACK);
> -	BUILD_BUG_ON(LNET_GET_BIT != 1 << LNET_MSG_GET);
> -	BUILD_BUG_ON(LNET_REPLY_BIT != 1 << LNET_MSG_REPLY);

Why does this not have any value?  How are you ensuring that these
requirements are now being met?

thanks,

greg k-h

