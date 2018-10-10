X-GM-THRID: 6610529510960922624
X-Received: by 2002:a2e:988f:: with SMTP id b15-v6mr922168ljj.14.1539152902355;
        Tue, 09 Oct 2018 23:28:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c441:: with SMTP id u62-v6ls199623lff.64.gmail; Tue, 09
 Oct 2018 23:28:21 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63FB8swapiUARLjoqfUuWow9x+UHfwNmppmL02Xcfb/3HP0bAzcEoExgRzYqzzhPrn6wZ08
X-Received: by 2002:a19:7006:: with SMTP id h6-v6mr859709lfc.21.1539152901367;
        Tue, 09 Oct 2018 23:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539152901; cv=none;
        d=google.com; s=arc-20160816;
        b=ZJxfJ8pcQ8oBsb5mX6ax+cL751YP/YeG0lJoM/m6fWZbt2lDyxswQngDMoIAn//SaC
         uLl00xJ0Rg6NhdcYn1GUQvQIN+nvbnb7i6bBqsoWGNYTk9kD37mlA3trYA7OA4AuLBp+
         wbmlGidwUcajBlF+0Qso0cslxByI4KpW9OALlbFKIr96UAVLTxfEa3IeEklSJFKs2zdh
         yWKeAv6dL8HXg/J87FcAbdAxK/JhK48UWX/4jWyOdkx+3RbQdoBLBqsmFQyXrJRAumu9
         hiU/pzDu7bF5nEs2M94JrBB5UIXEjKQI/yYv2Xx8am/gqT07KBb3bxfLkwuTJCqF+RO+
         /JNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rTio8vyd9wDCKH/G3G5dRgCQC7KbxtWZx+7Jz7DHquc=;
        b=Vmvlq93wrKkszLTU0BTAwg/9s/p1VgZTNVVvSkUCmzyx6S3uGAZLOpVig5A5Z9dU9l
         J1Od/KQ+6RhriqArYLDex/6hOlbMYjZIz9Y4/ESu2PlElKnPyN2Vn9diyXhRExxUceVn
         4zR+nFCBBnyVzu5HxvnjBqSlMy0lpzV1YcG6GE7tWYquu0K8nuW+X+TZGgGdvEBS76Oa
         xt6fVGrbhmyEHNach4SMKGiclLvJc4vGE8B+BUaGmqEZ33wHhDPtGyOyIEKpH9pzL5pp
         XViNjMH7Gw2g1KrMVzIg/nVz3BEFMRxPpDWoNSocoH7QtTLIAZ4iEQa69qRu7y82rypH
         X90w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y1-v6si800882lfd.3.2018.10.09.23.28.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Oct 2018 23:28:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,363,1534802400"; 
   d="scan'208";a="350453769"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Oct 2018 08:28:20 +0200
Date: Wed, 10 Oct 2018 08:28:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, greg@kroah.com
Subject: Re: [Outreachy kernel][Patch v3] staging: mt7621-dma: Delete unused
 define
In-Reply-To: <20181010010416.GA13096@veda-VGN-CS3AGH-R>
Message-ID: <alpine.DEB.2.21.1810100827380.2477@hadrien>
References: <20181010010416.GA13096@veda-VGN-CS3AGH-R>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 10 Oct 2018, Bhanusree Pola wrote:

> delete unused '#define GDMA_REG_CTRL1_CONTINOUS BIT(14)'

Did someone ask for this? Often it is useful to keep such #defines,
because they record some information about the hardware.

julia

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/mt7621-dma/ralink-gdma.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/mt7621-dma/ralink-gdma.c b/drivers/staging/mt7621-dma/ralink-gdma.c
> index 6d9fe175ea52..73dbc7fe38a2 100644
> --- a/drivers/staging/mt7621-dma/ralink-gdma.c
> +++ b/drivers/staging/mt7621-dma/ralink-gdma.c
> @@ -47,7 +47,6 @@
>  #define GDMA_REG_CTRL1_REQ_MASK		0x3f
>  #define GDMA_REG_CTRL1_SRC_REQ_SHIFT	16
>  #define GDMA_REG_CTRL1_DST_REQ_SHIFT	8
> -#define GDMA_REG_CTRL1_CONTINOUS	BIT(14)
>  #define GDMA_REG_CTRL1_NEXT_MASK	0x1f
>  #define GDMA_REG_CTRL1_NEXT_SHIFT	3
>  #define GDMA_REG_CTRL1_COHERENT		BIT(2)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181010010416.GA13096%40veda-VGN-CS3AGH-R.
> For more options, visit https://groups.google.com/d/optout.
>

