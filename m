X-GM-THRID: 6341070364600172544
X-Received: by 10.98.138.73 with SMTP id y70mr2826581pfd.36.1476430067147;
        Fri, 14 Oct 2016 00:27:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.129 with SMTP id 1ls7695162otj.31.gmail; Fri, 14 Oct
 2016 00:27:46 -0700 (PDT)
X-Received: by 10.200.55.21 with SMTP id o21mr2893557qtb.61.1476430066744;
        Fri, 14 Oct 2016 00:27:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id co10si2342603pad.1.2016.10.14.00.27.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 00:27:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 02CC12C;
	Fri, 14 Oct 2016 07:27:45 +0000 (UTC)
Date: Fri, 14 Oct 2016 09:27:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vt6655: Fix line over 80 characters.
Message-ID: <20161014072754.GA5464@kroah.com>
References: <20161013215008.GA21291@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161013215008.GA21291@euri>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Fri, Oct 14, 2016 at 03:21:24AM +0530, Varsha Rao wrote:
> This patch fixes the checkpatch warning of line over 80 characters.
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/vt6655/mac.c |   3 +-
>  drivers/staging/vt6655/rf.c  | 737 +++++++++++++++++++++++++++++--------------
>  2 files changed, 495 insertions(+), 245 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
> index 4aaa99b..23de67c 100644
> --- a/drivers/staging/vt6655/mac.c
> +++ b/drivers/staging/vt6655/mac.c
> @@ -315,7 +315,8 @@ bool MACbSoftwareReset(struct vnt_private *priv)
>   */
>  bool MACbSafeSoftwareReset(struct vnt_private *priv)
>  {
> -	unsigned char abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0 + MAC_MAX_CONTEXT_SIZE_PAGE1];
> +	unsigned char abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0 +
> +				    MAC_MAX_CONTEXT_SIZE_PAGE1];
>  	bool bRetVal;
>  
>  	/* PATCH....
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 1762c05..2e0e0c2 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -63,37 +63,65 @@ static const unsigned long dwAL2230InitTable[CB_AL2230_INIT_SEQ] = {
>  };
>  
>  static const unsigned long dwAL2230ChannelTable0[CB_MAX_CHANNEL] = {
> -	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 1, Tf = 2412MHz */
> -	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 2, Tf = 2417MHz */
> -	0x03E79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 3, Tf = 2422MHz */
> -	0x03E79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 4, Tf = 2427MHz */
> -	0x03F7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 5, Tf = 2432MHz */
> -	0x03F7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 6, Tf = 2437MHz */
> -	0x03E7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 7, Tf = 2442MHz */
> -	0x03E7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 8, Tf = 2447MHz */
> -	0x03F7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 9, Tf = 2452MHz */
> -	0x03F7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */
> -	0x03E7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */
> -	0x03E7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */
> -	0x03F7C000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */
> -	0x03E7C000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 14, Tf = 2412M */
> +	/* channel = 1, Tf = 2412MHz */
> +	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
> +	/* channel = 2, Tf = 2417MHz */
> +	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
> +	/* channel = 3, Tf = 2422MHz */

People keep trying to "fix" these lines.  Please just leave them as-is,
it's much easier to read them in the old way, right?  And that takes
precedence over the "obey checkpatch.pl" movement.

thanks,

greg k-h

