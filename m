X-GM-THRID: 739037413376
X-Received: by 10.112.189.227 with SMTP id gl3mr763597lbc.2.1424367513143;
        Thu, 19 Feb 2015 09:38:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.6 with SMTP id i6ls188458lam.10.gmail; Thu, 19 Feb 2015
 09:38:32 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr751000lae.7.1424367512730;
        Thu, 19 Feb 2015 09:38:32 -0800 (PST)
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com. [2001:4b98:dc2:45:216:3eff:febb:480d])
        by gmr-mx.google.com with ESMTPS id ew5si9083581wid.1.2015.02.19.09.38.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 09:38:32 -0800 (PST)
Received-SPF: none (google.com: laurent.pinchart@ideasonboard.com does not designate permitted sender hosts) client-ip=2001:4b98:dc2:45:216:3eff:febb:480d;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: laurent.pinchart@ideasonboard.com does not designate permitted sender hosts) smtp.mail=laurent.pinchart@ideasonboard.com
Received: from avalon.localnet (dsl-hkibrasgw3-50ddcc-40.dhcp.inet.fi [80.221.204.40])
	by galahad.ideasonboard.com (Postfix) with ESMTPSA id EDDE7202D7;
	Thu, 19 Feb 2015 18:37:57 +0100 (CET)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Convert simple_strtoul to kstrtoul
Date: Thu, 19 Feb 2015 19:39:29 +0200
Message-ID: <3900724.V4V6DqiR5q@avalon>
User-Agent: KMail/4.14.3 (Linux/3.17.8-gentoo-r1; KDE/4.14.3; x86_64; ; )
In-Reply-To: <1424367299-11953-1-git-send-email-navyasri.tech@gmail.com>
References: <1424367299-11953-1-git-send-email-navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Navya,

Thank you for the patch.

On Thursday 19 February 2015 23:04:59 Navya Sri Nizamkari wrote:
> This patch fixes the checkpatch.pl warning:
> simple_strtoul is obsolete, use kstrtoul instead.
> 
> When the string is not converted(parsing error),the strings pointed to by ep
> and parport[n] are the same.This parsing error results in kstrtoul
> returning a non-zero value.
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v2:
>     -Added a descriptive commit message.
> 
>  drivers/staging/media/parport/bw-qcam.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/parport/bw-qcam.c
> b/drivers/staging/media/parport/bw-qcam.c index 67b9da1..1b81244 100644
> --- a/drivers/staging/media/parport/bw-qcam.c
> +++ b/drivers/staging/media/parport/bw-qcam.c
> @@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
>  	if (parport[0] && strncmp(parport[0], "auto", 4) != 0) {
>  		/* user gave parport parameters */
>  		for (n = 0; n < MAX_CAMS && parport[n]; n++) {
> -			char *ep;
>  			unsigned long r;
> -			r = simple_strtoul(parport[n], &ep, 0);
> -			if (ep == parport[n]) {
> +			if (kstrtoul(parport[n],0,&r)) {

It's nice to fix checkpatch warnings, but not if you introduce new ones. If 
you run checkpatch on your patch you should get warnings regarding missing 
spaces after commas. As a general rule, you should always run checkpatch on 
all patches you want to submit for review before sending them to mailing 
lists.

>  				printk(KERN_ERR
>  					"bw-qcam: bad port specifier \"%s\"\n",
>  					parport[n]);

-- 
Regards,

Laurent Pinchart


