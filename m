X-GM-THRID: 6476511892724514816
X-Received: by 10.46.84.69 with SMTP id y5mr119708ljd.37.1507931043954;
        Fri, 13 Oct 2017 14:44:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.99.220 with SMTP id s89ls1211714lje.14.gmail; Fri, 13 Oct
 2017 14:44:02 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+S/8nRAFKORWnza6+CvMez3yNqXpHmlWCuGYKJGHEZgkYzF4F9elNDv3D7uXmoD6deDhfeV
X-Received: by 10.46.84.69 with SMTP id y5mr119705ljd.37.1507931042778;
        Fri, 13 Oct 2017 14:44:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507931042; cv=none;
        d=google.com; s=arc-20160816;
        b=CZk4fht8IfWCtGdT4C5tHuze5lxZrK3VE73YMh0LyDMpohEtkFpvB+wixsIVRUwtok
         iycnDvlI5GHYqypmy3u5HGmUt0cYFdEgkcckj9aY8P0UGYD53rzifJIP2Qe8Zq5JedJc
         ZS0CN2dyroo9bU3Muy2+cFSTPyYSEniaVXvaoJm1hG38F6r1NLcvWvttIAqz1Be7WhlH
         9bvt6zmPWk83vnCtMXCXUEngQ12vCMTaIdEWQYtw5NgLEYwG15abXyJGQM5PlTF8O7ng
         q+CEuT9zYL2CuFhVBA77LwFe5haJg4EpzgEqvgmK9kzH9jfl9bTvj0N903y0AraWsfYc
         MtRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=+LDd1ZMrCAPyAJGokhE2pRPE3duFceL1SbU6mfLaDw4=;
        b=Y7zk5OidXgYjhoEtcgppGtPc5gecjXY3KLYdAwHxFJ/SZx9cxdp21v3HC5LumgmJll
         ORa1wm7vmpBY1+N+q2UCG2/UxLTt09f88e/34jqJnqy3xxYKucOgJiiY00FN9DwBan3b
         g35WqEOZrXDeoeUmvp9Gyh7YfcTgWgavugpNuKwj/Dt3UkuE5FVwmNYTn3hD9zRSBkBQ
         OrmGciA37JeSHAfDXnadz3s+A9/gpl4ww7Erq2V9UUNhHME57WroIb61wxg+nbtOfxrF
         WYMWhp6eJpf6W9gDA3awxUeZfq9pWMZNlb3N1bSdLMZKaUNkWQ4SDQM0zX3loNl9MBOi
         eDnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 72si50560ljf.5.2017.10.13.14.44.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 14:44:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,372,1503352800"; 
   d="scan'208";a="240946583"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2017 23:44:01 +0200
Date: Fri, 13 Oct 2017 23:44:01 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com, 
    kirk@reisers.ca, samuel.thibault@ens-lyon.org, speakup@linux-speakup.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Replace symbolic
 permissions with octal permissions
In-Reply-To: <1507930425-5471-1-git-send-email-shreeya.patel23498@gmail.com>
Message-ID: <alpine.DEB.2.20.1710132343330.3147@hadrien>
References: <1507930425-5471-1-git-send-email-shreeya.patel23498@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Oct 2017, Shreeya Patel wrote:

> Resolve following checkpatch issue:
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred.
> Consider using octal permissions '0444'.
>
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/staging/speakup/speakup_bns.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/speakup_bns.c b/drivers/staging/speakup/speakup_bns.c
> index 60bcf0d..402b0fb 100644
> --- a/drivers/staging/speakup/speakup_bns.c
> +++ b/drivers/staging/speakup/speakup_bns.c
> @@ -120,7 +120,7 @@ static struct spk_synth synth_bns = {
>  };
>
>  module_param_named(ser, synth_bns.ser, int, 0444);
> -module_param_named(dev, synth_bns.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_bns.dev_name, charp, 0444);

This change is already made.  You need to update your staging tree.

julia

>  module_param_named(start, synth_bns.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507930425-5471-1-git-send-email-shreeya.patel23498%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

