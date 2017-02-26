X-GM-THRID: 6391475391095111680
X-Received: by 10.28.29.78 with SMTP id d75mr320043wmd.3.1488132183305;
        Sun, 26 Feb 2017 10:03:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.213 with SMTP id 204ls367485ljj.51.gmail; Sun, 26 Feb
 2017 10:03:02 -0800 (PST)
X-Received: by 10.25.223.67 with SMTP id q3mr109402lfj.1.1488132182468;
        Sun, 26 Feb 2017 10:03:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 14si656593wmn.2.2017.02.26.10.03.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 10:03:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,209,1484002800"; 
   d="scan'208";a="262138843"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 19:03:01 +0100
Date: Sun, 26 Feb 2017 19:03:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net, 
    f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, 
    daniel.baluta@spamfreegmail.com, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, bcm-kernel-feedback-list@broadcom.com, 
    mzoran@crowfest.net, danielperezdeandres@gmail.com, 
    dan.carpenter@oracle.com, devel@driverdev.osuosl.org, 
    linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: Fixed spacing
 around '&'
In-Reply-To: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1702261901180.2056@hadrien>
References: <1488131271-2908-1-git-send-email-narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Feb 2017, Narcisa Ana Maria Vasile wrote:

> This was reported by checkpatch.pl
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Actually, the outreachy tutorial says not to send patches to mailing
lists, only to people (except in the case of IIO, where the maintainers
asked for patches to be sent to mailing lists as well).  The
get_maintainer command to use is shown here:

https://kernelnewbies.org/FirstKernelPatch#submit_a_patch

> ---
>  drivers/staging/bcm2835-audio/bcm2835-pcm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/bcm2835-audio/bcm2835-pcm.c
> index 9e79236..328bee4a 100644
> --- a/drivers/staging/bcm2835-audio/bcm2835-pcm.c
> +++ b/drivers/staging/bcm2835-audio/bcm2835-pcm.c
> @@ -91,7 +91,7 @@ void bcm2835_playback_fifo(struct bcm2835_alsa_stream *alsa_stream)
>  		frames_to_bytes(alsa_stream->substream->runtime, alsa_stream->substream->runtime->status->hw_ptr),
>  		new_period);
>  	if (alsa_stream->buffer_size) {
> -		alsa_stream->pos += consumed &~(1 << 30);
> +		alsa_stream->pos += consumed & ~(1 << 30);
>  		alsa_stream->pos %= alsa_stream->buffer_size;
>  	}
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488131271-2908-1-git-send-email-narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

