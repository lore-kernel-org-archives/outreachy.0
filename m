X-GM-THRID: 6620120308618625024
X-Received: by 2002:a2e:954b:: with SMTP id t11-v6mr1063285ljh.28.1541367291138;
        Sun, 04 Nov 2018 13:34:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2f12:: with SMTP id v18-v6ls737649ljv.2.gmail; Sun, 04
 Nov 2018 13:34:50 -0800 (PST)
X-Google-Smtp-Source: AJdET5fxBsqumkUp99QbQY4NsGvGh/Ca2BwZRqGXdLA4EWMI2lVbidURfVAbwUhGaSLL/wz/EYzW
X-Received: by 2002:a2e:9119:: with SMTP id m25-v6mr223273ljg.22.1541367290132;
        Sun, 04 Nov 2018 13:34:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541367290; cv=none;
        d=google.com; s=arc-20160816;
        b=cN5bsHf1o4kxJyUD0F7fBMLTS71jsKyvHUmIevEeb6jdR+zBazCiWsevhvyNtq/UdL
         WNWPOjP3vVCE51cFtYdjE8ka8dTGBQtWZx0teRumFEPH+ghaDUFYES2eTcYXZTYgb8eI
         sOmphERyXFbq30qaidBKVCQo5dk+P8wAm7N1F4VIYt7Q+v1QItBXaldSA3mn/CVCD6Kl
         03LBYJydos7ZgCKnaF/wAGkmWqH9alCHL6Pu8Bs8CB0WrDHDF/9VfcG07wL7TihvYXMh
         4go6ocrVF3U+5sIZXxWzaj8iTR1EbrvxZoB3BLFzxmXdhF+xvHijoyKk0aSiNhLmyY34
         qpVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=X72TyKGBibC7bricVDNL3E0tVY1Amd7e2gWheyox4XY=;
        b=ijfHbGJxvzLhYvzBiz2A+bhmlpYGKF7WjTCCPqfu+UsZZdQOnccYkaf+IWFTon4TZ+
         qpnKhh2xQVp8aYaKsNWaINBlu3fBP40etEElVt6OUlnFsQMVdy0gUpnwwbV5Oq534ECZ
         D/W+59lyXACuezi/O7sAdwCCgRlU/w53b21vV+4MMixdxpcifh0DvFO/RXBL1Il5XhkA
         PRC7+kO6kE1V2qVPblAF7FxGr7gSVkxYTRjmhrSGbkQNXEI4aNclYN6n7G1i9/Tyb0CJ
         UP/sxw5G0W8+ux+UvlcLP2VQwvkdaDgv99XEXH3NHp5LFROWv638JnVbhgji1hszibfm
         Qzww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d9-v6si1138542lfi.5.2018.11.04.13.34.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 13:34:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,465,1534802400"; 
   d="scan'208";a="354062151"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 22:34:49 +0100
Date: Sun, 4 Nov 2018 22:34:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: greybus: fix styling
 and bool comparison
In-Reply-To: <cover.1541366816.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1811042234180.2360@hadrien>
References: <cover.1541366816.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Ioannis Valasakis wrote:

> Fix styling and bool comparison per coccinelle warnings.
>
> Ioannis Valasakis (2):
>   staging: greybus: remove comparison to BOOL
>   staging: graybus: match open parentheses

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
>  drivers/staging/greybus/es2.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1541366816.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

