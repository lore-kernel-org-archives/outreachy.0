X-GM-THRID: 6528063050610638848
X-Received: by 10.223.175.42 with SMTP id z39mr340724wrc.21.1519933352982;
        Thu, 01 Mar 2018 11:42:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.3.66 with SMTP id 63ls1622551wmd.6.canary-gmail; Thu, 01
 Mar 2018 11:42:31 -0800 (PST)
X-Google-Smtp-Source: AG47ELv++Ij2waB/MqDItSCZgfL+zSKbTepM7FFV4AUYL7ZKDlwehNL6n1jIaybk47pRssxeknIo
X-Received: by 10.28.153.194 with SMTP id b185mr317817wme.17.1519933351927;
        Thu, 01 Mar 2018 11:42:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519933351; cv=none;
        d=google.com; s=arc-20160816;
        b=skGreJeXZGjBFMrbREiF95iLNvGR8DlruWcjTtF9xxquO+YgeEdvf2yNF972OB8FxT
         7qcZQgAFCCLYfrWBBtBefXV4iT2B5JtOkCvlJqEYqvM0Xl20d5v2hMGdipKJzkLS0I1w
         4qm7laRHdwJnBSCVefgSFs2MvbaQ2f1KXMHHTdaZbHawe/8FU2DlMRjRr8nemrCP2bss
         A2SbPMos4VF/5wz4Nt2lYjbrWYp9HuqkTddraGNPqCk5A14OShAAXBUaLjg62qQn+sS9
         FN11gRbUIcFpB2/kwtujBBl4RjFhEuCBGwgZDH32Axf88NqiSkXYpGb3vuAF2Y11nU3Q
         XtZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=HTiFDDV+a0GW7o2WJrDFsAW3kpdaV2FQpO050VtBzQA=;
        b=UCxmvzanQbfgRVydJVaOV1eK1+emBVtLZdj4ggZWnLUrEuY2TN3URZKvefd4XkGwJK
         kajiYmKzNcqM38Yz/E+NzLfWLVn7wOFG2RfwmmLEXldWo/uXR6CdA/BheKy7uAC1emSl
         ZZwmusn1FioeaWoVooSAPbIwkoaSzKUszMG6dk6Aw2EuButkJ5v7+24jGuBR7PCYtd+l
         KnwEKQcJxoSPeIaZeC3rSAaijbweGRiqtZUH45VGvAX1eWuHvxhuiV03SFeM4FNHQZ8H
         Em5UtGMtMraGaG6I3OsA7f/WKg3LFYyCjmeAmd7ahDLHLngshXTb7l8z4YG5M+bZlZra
         S0HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a139si170896wma.4.2018.03.01.11.42.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 11:42:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,409,1515452400"; 
   d="scan'208";a="315957868"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2018 20:42:31 +0100
Date: Thu, 1 Mar 2018 20:42:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org, 
    f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: bcm2835-audio:
 Add blank line after declaration
In-Reply-To: <1519933107-15683-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803012042190.3474@hadrien>
References: <1519933107-15683-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Nishka Dasgupta wrote:

> Add blank line after declaration. Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> index 5f7551f..22214ee 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> @@ -209,6 +209,7 @@ static int snd_bcm2835_playback_close(struct snd_pcm_substream *substream)
>  	 */
>  	if (alsa_stream->running) {
>  		int err;
> +
>  		err = bcm2835_audio_stop(alsa_stream);
>  		alsa_stream->running = 0;
>  		if (err)
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519933107-15683-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

