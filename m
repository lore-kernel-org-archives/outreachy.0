X-GM-THRID: 6467836648401928192
X-Received: by 10.25.16.224 with SMTP id 93mr195400lfq.8.1505911545014;
        Wed, 20 Sep 2017 05:45:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.155.208 with SMTP id e16ls36447wrc.11.gmail; Wed, 20 Sep
 2017 05:45:44 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCV5hxd3aNCtFMQ/mOtuUZIGhtYcxpuyZmiXhhKyASgbkPqqFql4jjniSTekSQyA0OOiHyF
X-Received: by 10.28.184.81 with SMTP id i78mr443193wmf.2.1505911544127;
        Wed, 20 Sep 2017 05:45:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505911544; cv=none;
        d=google.com; s=arc-20160816;
        b=yyjQcBhBFBzra/49j372lATeLzHjsDaMWqgv5hIl/hs3Jg51UkXR0GX2A6GVFYosGb
         BIL8r2cEd8MrMZpebobTb4n2fm6zDIOkMIsnuOyOx5ezAZtDKBkPWfDhkA9/ogSv9zFk
         /R2torn9Uuk8h5zDIJQgtUrIZw5aXnRHrYsVqee0xa4g8vchouTRpphOMkM49A9Y2FU1
         AsD/Q/AULl3mm+JHf3me2IBNCJ9RnKflS1WSsoJbw69qRFGq5g8sSpcz1FxAEk8t3CYB
         TPKA7JI5ffyEOGFOZOR8IGHrqr5a7h33r7oo3ieR2CWMPcORysiNgwtSaXAxzqXvsF2S
         gFNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=94ebVsRSOdqTqfKlmkHurVwtdC+U99FuB7pfNFD+Sik=;
        b=JXF0F3HITBDyb8kusvuQXHj4ej6S0rUkPfNkoIetV9CfjdfllZQ+jLAYLs91FPS2dm
         bfsWIR+R4dNSkPSynts0jUFtYt2n8rVQ/TkWyoBhL68ZVjumnq/PoBUr47oxtib4XdZc
         pCtuPdBCBJjCe3b/PovDI1MJ171N4Cw9SRwRMahE3LN2xpQ1CzkJtTeKkQkW+hFcZZes
         hzv3sSR+AP4aS0qMe6I6RwcEXCKRvIxS2EJQeWFuOpNSqFf0/1ozzHrFYrBDKQvdtuTM
         GLveNfaUMCtwqohlBoFNaRu3NDUj+gVp5gg0xD2zkEhQNBoVdVrYc3LwoIrSoXboIpZj
         1RnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m74si112069wma.0.2017.09.20.05.45.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 05:45:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,421,1500933600"; 
   d="scan'208";a="291955083"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Sep 2017 14:45:49 +0200
Date: Wed, 20 Sep 2017 14:45:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Staging: media: atomisp: Fix
 style issues
In-Reply-To: <cover.1505909511.git.georgiana.chelu93@gmail.com>
Message-ID: <alpine.DEB.2.20.1709201444450.3290@hadrien>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Sep 2017, Georgiana Chelu wrote:

> This patchset fix coding style issues found by checkpatch.pl.

Did you send these before?  They look failiar, but they don't seem to have
been applied either.

julia

>
> Georgiana Chelu (4):
>   Staging: media: atomisp: Use unsigned int instead of unsigned
>   Staging: media: atomisp: Add blank line after declarations
>   Staging: media: atomisp: pci: Move open brace '{' on the next line
>   Staging: media: atomisp: pci: Place constant on the right side in
>     comparissons
>
>  .../atomisp/pci/atomisp2/atomisp_compat_css20.c    | 27 +++++++++++++++-------
>  1 file changed, 19 insertions(+), 8 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1505909511.git.georgiana.chelu93%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

