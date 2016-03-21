X-GM-THRID: 6263480963249995776
X-Received: by 10.13.248.4 with SMTP id i4mr24924796ywf.20.1458597877228;
        Mon, 21 Mar 2016 15:04:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.194 with SMTP id m2ls1785218obh.0.gmail; Mon, 21 Mar
 2016 15:04:36 -0700 (PDT)
X-Received: by 10.157.35.58 with SMTP id j55mr2360420otb.20.1458597876423;
        Mon, 21 Mar 2016 15:04:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si4253823pfa.2.2016.03.21.15.04.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 15:04:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7F7182C;
	Mon, 21 Mar 2016 22:04:35 +0000 (UTC)
Date: Mon, 21 Mar 2016 18:04:33 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/4] staging: comedi: amplc_pci230:
 Convert macro GAT_CONFIG to static inline function
Message-ID: <20160321220433.GA5091@kroah.com>
References: <cover.1458500647.git.bhaktipriya96@gmail.com>
 <58c5d0b92cb0a0e421ea913418919184174caa4f.1458500647.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58c5d0b92cb0a0e421ea913418919184174caa4f.1458500647.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 21, 2016 at 12:50:25AM +0530, Bhaktipriya Shridhar wrote:
> Convert macro GAT_CONFIG to static inline function as static inline
> functions are preferred over macros. This change is possible since the
> arguments at all call sites have the same type.
> 
> This was done using Coccinelle:
> 
> @r@
> expression e;
> @@
> - #define GAT_CONFIG(chan, src) e
> + static inline unsigned int pci230_gat_config(unsigned int
> chan,unsigned int src)
> +{
> +       return ((chan & 3) << 3) | (src & 7);
> +}
> 
> @r1@
> expression dev,reg,chan,src;
> @@
> -GAT_CONFIG(chan, src)
> +pci230_gat_config(chan, src)
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	- Removed the extra () around the arguments.
> 	- Renamed the function and made the changes consistent
> 
>  drivers/staging/comedi/drivers/amplc_pci230.c | 38 ++++++++++++++++-----------
>  1 file changed, 22 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
> index 635cd46..6117fb7 100644
> --- a/drivers/staging/comedi/drivers/amplc_pci230.c
> +++ b/drivers/staging/comedi/drivers/amplc_pci230.c
> @@ -383,8 +383,12 @@ static inline void pci230_clk_config(struct comedi_device *dev,
>  #define GAT_GND		1	/* GND (i.e. disabled) */
>  #define GAT_EXT		2	/* external gate input (PPCn on PCI230) */
>  #define GAT_NOUTNM2	3	/* inverted output of channel-2 modulo total */
> -/* Macro to construct gate input configuration register value. */
> -#define GAT_CONFIG(chan, src)	((((chan) & 3) << 3) | ((src) & 7))
> +
> +static inline unsigned int pci230_gat_config(unsigned int chan,
> +					     unsigned int src)
> +{
> +	return ((chan & 3) << 3) | (src & 7);
> +}

This looks good, but can you properly format this?

thanks,

greg k-h

