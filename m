X-GM-THRID: 6669267213374980096
X-Received: by 2002:a17:906:1c46:: with SMTP id l6mr1193907ejg.9.1552812604380;
        Sun, 17 Mar 2019 01:50:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4942:: with SMTP id f2ls2665971ejt.8.gmail; Sun, 17
 Mar 2019 01:50:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxw1vbsq1mAkoPy1Bl5JG8UlmgXm/gQgyeyhYfI+fDxN7oG/2JfnkS694tWMUnmjFDqrM0U
X-Received: by 2002:a17:906:ca1a:: with SMTP id jt26mr1216034ejb.1.1552812603623;
        Sun, 17 Mar 2019 01:50:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552812603; cv=none;
        d=google.com; s=arc-20160816;
        b=ZkD4YGcaulO5BZIhv5174n+kaPXfv3m3v5Y65jOSmCvacfw98yH6FFd6SdMfPfwUnY
         wQc77oChSXTnRZ7lDDHFWRAm6jgbhX9y56Yyt30iXzDnuOqB5YkZnoIz3C/IVXre2Xax
         oPR6OA8a75J/F66yQ6e5w96T5wQrLwt3PLXJfvUoKS5P5sQE/DFur241K/FNiGMv78Xz
         2WykplxLUVwS5yP3fIphpXQwBzdqhGsNgGPa1I++eHZtVHb6SE4w58of4zQDbn6n9dye
         m9CTKsUCLPPDRh26YArMY9Ua8E2UQoz9E2U7KoCP07Tcp9XnWdj0WNdJzEibIQD9q8hV
         M7OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=KY6xnMmvVgrMRS9WlV9sydt5xltIHRh9biip3LqhAiU=;
        b=SadPhBwJRroT1TstkgjtoooP37FHgPlXik2SX+gJ8HY7ADku4bCUmCUcAn1mKcE23B
         IkpB8vwX0/8s+OLF4cCr73hft2HRoMrSgIohvqUkDFhChoFPUUAPFkbVf47Kgvegz/hg
         6XQPufYO/YxLW8Q7cLj+iZTPpmjqnT6poeaTeVO4rk0fFOFr630LQBSviz8HyYzJ1RN3
         WCaM5U10nNrN6VwNtfsyGYg6E/b4gdQ8/XWcf0bGKLwkbce/TshI4dpQL854aNn3s4ka
         yBmCgHIKYjgpbFCrxI1cQLxMACdEx2QWbMkCJoAyaLNV6hnMMGRbjicj9HP/gwLgEN9u
         TFWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p25si151769eju.1.2019.03.17.01.50.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:50:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,489,1544482800"; 
   d="scan'208";a="299679215"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 09:50:02 +0100
Date: Sun, 17 Mar 2019 09:50:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sound: drivers: aloop.c:
 fix a trailing whitespace issue.
In-Reply-To: <20190317080246.2831-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170948460.27672@hadrien>
References: <20190317080246.2831-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Sanjana Sanikommu wrote:

> fix a trailing white space error.Issue found by checkpatch.pl semantic patch results for
> aloop.c.

A sentence should start with a capital letter.

When you end a sentence, please put at least one space after the period.

Try to avoid using fix in the log message.  Here "Remove trailing
whitespace" is shorter and explains what was done to fix the problem.

julia

>
> ERROR: trailing white space.
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  sound/drivers/aloop.c | 18 +++++-------------
>  1 file changed, 5 insertions(+), 13 deletions(-)
>
> diff --git a/sound/drivers/aloop.c b/sound/drivers/aloop.c
> index 8c3fbe1276be..0c27e17a19e5 100644
> --- a/sound/drivers/aloop.c
> +++ b/sound/drivers/aloop.c
> @@ -273,7 +273,7 @@ static int loopback_trigger(struct snd_pcm_substream *substream, int cmd)
>  		dpcm->last_jiffies = jiffies;
>  		dpcm->pcm_rate_shift = 0;
>  		dpcm->last_drift = 0;
> -		spin_lock(&cable->lock);
> +		spin_lock(&cable->lock);
>  		cable->running |= stream;
>  		cable->pause &= ~stream;
>  		loopback_timer_start(dpcm);
> @@ -282,7 +282,7 @@ static int loopback_trigger(struct snd_pcm_substream *substream, int cmd)
>  			loopback_active_notify(dpcm);
>  		break;
>  	case SNDRV_PCM_TRIGGER_STOP:
> -		spin_lock(&cable->lock);
> +		spin_lock(&cable->lock);
>  		cable->running &= ~stream;
>  		cable->pause &= ~stream;
>  		loopback_timer_stop(dpcm);
> @@ -292,7 +292,7 @@ static int loopback_trigger(struct snd_pcm_substream *substream, int cmd)
>  		break;
>  	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
>  	case SNDRV_PCM_TRIGGER_SUSPEND:
> -		spin_lock(&cable->lock);
> +		spin_lock(&cable->lock);
>  		cable->pause |= stream;
>  		loopback_timer_stop(dpcm);
>  		spin_unlock(&cable->lock);
> @@ -879,7 +879,6 @@ static int loopback_notify_put(struct snd_kcontrol *kcontrol,
>  	mutex_unlock(&loopback->cable_lock);
>  	return change;
>  }
> -
>  static int loopback_active_get(struct snd_kcontrol *kcontrol,
>  			       struct snd_ctl_elem_value *ucontrol)
>  {
> @@ -899,7 +898,6 @@ static int loopback_active_get(struct snd_kcontrol *kcontrol,
>  	ucontrol->value.integer.value[0] = val;
>  	return 0;
>  }
> -
>  static int loopback_format_info(struct snd_kcontrol *kcontrol,
>  				struct snd_ctl_elem_info *uinfo)
>  {
> @@ -909,8 +907,7 @@ static int loopback_format_info(struct snd_kcontrol *kcontrol,
>  	uinfo->value.integer.max = SNDRV_PCM_FORMAT_LAST;
>  	uinfo->value.integer.step = 1;
>  	return 0;
> -}
> -
> +}
>  static int loopback_format_get(struct snd_kcontrol *kcontrol,
>  			       struct snd_ctl_elem_value *ucontrol)
>  {
> @@ -921,7 +918,6 @@ static int loopback_format_get(struct snd_kcontrol *kcontrol,
>  			       [kcontrol->id.device].format;
>  	return 0;
>  }
> -
>  static int loopback_rate_info(struct snd_kcontrol *kcontrol,
>  			      struct snd_ctl_elem_info *uinfo)
>  {
> @@ -931,7 +927,7 @@ static int loopback_rate_info(struct snd_kcontrol *kcontrol,
>  	uinfo->value.integer.max = 192000;
>  	uinfo->value.integer.step = 1;
>  	return 0;
> -}
> +}
>
>  static int loopback_rate_get(struct snd_kcontrol *kcontrol,
>  			     struct snd_ctl_elem_value *ucontrol)
> @@ -1156,7 +1152,6 @@ static int loopback_probe(struct platform_device *devptr)
>  		pcm_substreams[dev] = 1;
>  	if (pcm_substreams[dev] > MAX_PCM_SUBSTREAMS)
>  		pcm_substreams[dev] = MAX_PCM_SUBSTREAMS;
> -
>  	loopback->card = card;
>  	mutex_init(&loopback->cable_lock);
>
> @@ -1198,7 +1193,6 @@ static int loopback_suspend(struct device *pdev)
>  	snd_power_change_state(card, SNDRV_CTL_POWER_D3hot);
>  	return 0;
>  }
> -
>  static int loopback_resume(struct device *pdev)
>  {
>  	struct snd_card *card = dev_get_drvdata(pdev);
> @@ -1206,13 +1200,11 @@ static int loopback_resume(struct device *pdev)
>  	snd_power_change_state(card, SNDRV_CTL_POWER_D0);
>  	return 0;
>  }
> -
>  static SIMPLE_DEV_PM_OPS(loopback_pm, loopback_suspend, loopback_resume);
>  #define LOOPBACK_PM_OPS	&loopback_pm
>  #else
>  #define LOOPBACK_PM_OPS	NULL
>  #endif
> -
>  #define SND_LOOPBACK_DRIVER	"snd_aloop"
>
>  static struct platform_driver loopback_driver = {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317080246.2831-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

