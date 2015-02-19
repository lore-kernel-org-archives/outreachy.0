X-GM-THRID: 761102598144
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,efa55286ffba0bae
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.37.200 with SMTP id a8mr789828lak.5.1424371883022;
        Thu, 19 Feb 2015 10:51:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.72 with SMTP id k8ls1478333wif.35.canary; Thu, 19 Feb
 2015 10:51:21 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr544933wib.1.1424371881246;
        Thu, 19 Feb 2015 10:51:21 -0800 (PST)
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com. [2001:4b98:dc2:45:216:3eff:febb:480d])
        by gmr-mx.google.com with ESMTPS id by11si165874wib.1.2015.02.19.10.51.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 10:51:21 -0800 (PST)
Received-SPF: none (google.com: laurent.pinchart@ideasonboard.com does not designate permitted sender hosts) client-ip=2001:4b98:dc2:45:216:3eff:febb:480d;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: laurent.pinchart@ideasonboard.com does not designate permitted sender hosts) smtp.mail=laurent.pinchart@ideasonboard.com
Received: from avalon.localnet (dsl-hkibrasgw3-50ddcc-40.dhcp.inet.fi [80.221.204.40])
	by galahad.ideasonboard.com (Postfix) with ESMTPSA id 9524D20173;
	Thu, 19 Feb 2015 19:50:46 +0100 (CET)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: fbtft: Fix struct backlight_ops should normally be const
Date: Thu, 19 Feb 2015 20:52:18 +0200
Message-ID: <1673936.xFr6aDYKYJ@avalon>
User-Agent: KMail/4.14.3 (Linux/3.17.8-gentoo-r1; KDE/4.14.3; x86_64; ; )
In-Reply-To: <1424371364-7277-2-git-send-email-aybuke.147@gmail.com>
References: <1424371364-7277-1-git-send-email-aybuke.147@gmail.com> <1424371364-7277-2-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Aybuke,

Thank you for the patch.

On Thursday 19 February 2015 20:42:44 aybuke ozdemir wrote:
> This patch fixes following checkpatch.pl warningi in fb_ssd1351.c:
> WARNING: struct backlight_ops should normally be const

A good commit message is split in two parts:

- The subject line should summarize what the commit does. In this case, you 
could say "staging: fbtft: Make struct backlight_ops const".

- The commit message body should explain why the change is needed. There's a 
reason behind checkpatch warnings, they indicate issues with the code. You 
should try to understand why a non-const struct backlight_ops is an issue, and 
explain it. In this case the reason why struct backlight_ops is usually const 
would lead to a totally different fix than the one below.

> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/fbtft/fb_ssd1351.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_ssd1351.c
> b/drivers/staging/fbtft/fb_ssd1351.c index b59120c..bc4d188 100644
> --- a/drivers/staging/fbtft/fb_ssd1351.c
> +++ b/drivers/staging/fbtft/fb_ssd1351.c
> @@ -212,11 +212,11 @@ static void register_onboard_backlight(struct
> fbtft_par *par) {
>  	struct backlight_device *bd;
>  	struct backlight_properties bl_props = { 0, };
> -	struct backlight_ops *bl_ops;
> +	const struct backlight_ops *bl_ops;

This introduces a compilation error as the code later assigns bl_ops-
>update_status. Please make sure you always at least compile the code before 
submitting a patch.

>  	fbtft_par_dbg(DEBUG_BACKLIGHT, par, "%s()\n", __func__);
> 
> -	bl_ops = devm_kzalloc(par->info->device, sizeof(struct backlight_ops),
> +	bl_ops = devm_kzalloc(par->info->device, sizeof(const struct
> backlight_ops),

The kernel coding style tends to favour sizeof(var) instead of sizeof(type). 
In this case this would become sizeof(*bl_ops). This ensures that the size 
stays correct if the type of the variable is changed.

> GFP_KERNEL);
>  	if (!bl_ops) {
>  		dev_err(par->info->device,

-- 
Regards,

Laurent Pinchart


