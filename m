X-GM-THRID: 6466453874195562496
X-Received: by 10.28.142.201 with SMTP id q192mr636074wmd.23.1505589463138;
        Sat, 16 Sep 2017 12:17:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.61.7 with SMTP id k7ls783235wma.17.gmail; Sat, 16 Sep 2017
 12:17:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBSMkn2WoQm6fN3NDa51LC5QhInZzo+ay5Vbs8v47e2NmGb7gDg+uaKacqLRtjqZYqjo4w2
X-Received: by 10.28.143.13 with SMTP id r13mr639982wmd.30.1505589462074;
        Sat, 16 Sep 2017 12:17:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505589462; cv=none;
        d=google.com; s=arc-20160816;
        b=jR4Mt+HiwEnjkvMuQ5sECCOrLFsbAGDgyBrVry1dkE44AAx1qJHHtrKlOm89sevZJm
         sr1Mih8Azv35k+ZmAcHXAoHA6GSqzwmocWgvMSprHL8cVDC+yWqu+YpE5tG7wSW9qPXc
         XkT5Z4mrRIqWaq4nU/LpnimSfFxrDKx0kGe4ScSV+dP2PqhaD4LbaP2TTSuytG3ZEcfx
         qRaRjdnrT9ZgTdRH3s38Vozcjyax3oyn/ZI+OBpUe/gO4MkbTFW2nxNDH62N7b98Tehy
         zb/xhEv0XHrhFfldEsWp9NdOyIHysJoDiJnIXLGWTB3PR9NYZC2KcG2e34HjmPRezDYK
         r/DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/H3LT1GC+K4Xy+4TodEFk/eL0LXjy5lHuF2d0mOIViI=;
        b=JSw6z2DNFPlEQUJtzZRum0kNoivJATKNGV6NVaxEHW2unO5VvoYD4lMPVTIhsXNnke
         +Wbb1rkbES/gfQJNBvme/RHKjrV2ZUzn77GPn3RDDm6MAS8j39ej6qxy0pzAmwmw/0UC
         A46urp20cv5COY+yl20Fl3AL0qtxZXQ4gqHERSZrYxeqcFGBZO2TjzVfO2xYIOn17pdy
         W7YreOF8URpuln2mjzxyXARfsPpXujmKP3NIK/OcFBkJU4kxf95zb2MESHATeF0a5ANd
         tRxQMVuVhOYb4NmxY+2GN2rs7XBITEj4vTqwPyAfujTEEsC0TKib4+Uj+b1ZDWFw9FEo
         +ykw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 191si212617wmn.2.2017.09.16.12.17.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 12:17:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,404,1500933600"; 
   d="scan'208";a="291397628"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 21:17:41 +0200
Date: Sat, 16 Sep 2017 21:17:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    mchehab@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: media: atomisp: pci: Move
 constants to right side of comparisons
In-Reply-To: <20170916190334.awmvwhunsgz4iozl@fireworks>
Message-ID: <alpine.DEB.2.20.1709162117180.1992@hadrien>
References: <20170916190334.awmvwhunsgz4iozl@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Georgiana Chelu wrote:

> Place the constant on the right side of the comparison
> to increase the readability of the code.
>
> Warning found by "checkpatch.pl".
>
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  .../media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c        | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
> index 606376fdf0ba..81c0e057a8b8 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/queue/src/queue.c
> @@ -88,7 +88,7 @@ int ia_css_queue_enqueue(
>  			uint32_t item)
>  {
>  	int error = 0;
> -	if (NULL == qhandle)
> +	if (qhandle == NULL)
>  		return EINVAL;
>
>  	/* 1. Load the required queue object */
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916190334.awmvwhunsgz4iozl%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

