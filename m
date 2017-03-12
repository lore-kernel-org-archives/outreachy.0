X-GM-THRID: 6396623308648873984
X-Received: by 10.25.151.69 with SMTP id z66mr3742042lfd.12.1489330050485;
        Sun, 12 Mar 2017 07:47:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.217 with SMTP id c86ls1343187ljd.10.gmail; Sun, 12 Mar
 2017 07:47:29 -0700 (PDT)
X-Received: by 10.25.56.6 with SMTP id f6mr4066763lfa.4.1489330049816;
        Sun, 12 Mar 2017 07:47:29 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si510377wmg.3.2017.03.12.07.47.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:47:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,152,1486422000"; 
   d="scan'208";a="264202196"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 15:47:29 +0100
Date: Sun, 12 Mar 2017 15:47:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Use true/false instead of 1/0
 for bool initialisations
In-Reply-To: <cover.1489329182.git.karniksayli1995@gmail.com>
Message-ID: <alpine.DEB.2.20.1703121546590.2174@hadrien>
References: <cover.1489329182.git.karniksayli1995@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, sayli karnik wrote:

> The patch series uses true and false instead of 1 and 0 as bool variable
> values. Detected by coccinelle/misc/boolinit.cocci.
>
> sayli karnik (2):
>   staging: media: mt9m114: Use true/false instead of 1/0 for bool
>     initialisations
>   staging: media: mt9m114: Use true/false instead of 1/0 for bool
>     initialisations

The two lines are identical?

julia

>
>  drivers/staging/media/atomisp/i2c/mt9m114.c | 4 ++--
>  drivers/staging/media/atomisp/i2c/mt9m114.h | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1489329182.git.karniksayli1995%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

