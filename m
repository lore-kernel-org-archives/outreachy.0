X-GM-THRID: 6329749060210130944
X-Received: by 10.25.18.100 with SMTP id h97mr3433648lfi.6.1473759849358;
        Tue, 13 Sep 2016 02:44:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.55.79 with SMTP id e76ls211875wma.19.gmail; Tue, 13 Sep
 2016 02:44:08 -0700 (PDT)
X-Received: by 10.194.178.166 with SMTP id cz6mr3450939wjc.0.1473759848825;
        Tue, 13 Sep 2016 02:44:08 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si999246wmg.3.2016.09.13.02.44.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:44:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="236247019"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 11:44:00 +0200
Date: Tue, 13 Sep 2016 11:43:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: media: lirc: lirc_imon.c:
 Remove unnecessary space after a cast
In-Reply-To: <bb931375d1e4fa071e49eb8ea0dda0b5fd160337.1473758274.git.anchalj109@gmail.com>
Message-ID: <alpine.DEB.2.10.1609131141250.3355@hadrien>
References: <cover.1473758274.git.anchalj109@gmail.com> <bb931375d1e4fa071e49eb8ea0dda0b5fd160337.1473758274.git.anchalj109@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

The subject line is not correct.  If you do git log --oneline
drivers/staging/media/lirc/lirc_imon.c, then you get many examples, like
the following:

f11055b staging: media: lirc: lirc_imon: don't print error when allocating urb f
b833d0d [media] lirc_imon: do not leave imon_probe() with mutex held
2696f49 [media] Staging: media: lirc: use USB API functions rather than constant
7229f8c [media] staging:media:lirc Remove the extra braces in if statement of li
af8a819 [media] lirc_imon: simplify error handling code
bb3a4dc staging: media: lirc: lirc_imon.c: remove extra parentheses around funct
8c6ccbe Staging: media: clean dev_err logging
dab363f Merge tag 'staging-3.19-rc1' of git://git.kernel.org/pub/scm/linux/kerne
f3a7550 [media] Staging: media: lirc: cleaned up packet dump in 2 files
d82e62d staging: media: lirc: Remove useless cast on void pointer
732ba19 staging: media: lirc: lirc_imon.c: replace printk by dev_dbg
2c1bfc3 staging: media: lirc: Delete unused function tv2int

They are pretty varied, but only two have the full path and the file name
with .c at the end.   staging: media: lirc: looks popular.

julia

On Tue, 13 Sep 2016, Anchal Jain wrote:

> CHECK: Remove unnecessary space after cast
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_imon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
> index c12053d..e44f841 100644
> --- a/drivers/staging/media/lirc/lirc_imon.c
> +++ b/drivers/staging/media/lirc/lirc_imon.c
> @@ -427,7 +427,7 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
>
>  	do {
>  		memcpy(context->usb_tx_buf, context->tx.data_buf + offset, 7);
> -		context->usb_tx_buf[7] = (unsigned char) seq;
> +		context->usb_tx_buf[7] = (unsigned char)seq;
>
>  		retval = send_packet(context);
>  		if (retval) {
> @@ -445,7 +445,7 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
>  	if (context->vfd_proto_6p) {
>  		/* Send packet #6 */
>  		memcpy(context->usb_tx_buf, &vfd_packet6, sizeof(vfd_packet6));
> -		context->usb_tx_buf[7] = (unsigned char) seq;
> +		context->usb_tx_buf[7] = (unsigned char)seq;
>  		retval = send_packet(context);
>  		if (retval)
>  			dev_err(&context->usbdev->dev,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bb931375d1e4fa071e49eb8ea0dda0b5fd160337.1473758274.git.anchalj109%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

