X-GM-THRID: 6333834735065759744
X-Received: by 10.46.33.163 with SMTP id h35mr574984lji.22.1474721764782;
        Sat, 24 Sep 2016 05:56:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.161 with SMTP id e33ls1756379lji.10.gmail; Sat, 24 Sep
 2016 05:56:04 -0700 (PDT)
X-Received: by 10.25.74.71 with SMTP id x68mr602430lfa.6.1474721764247;
        Sat, 24 Sep 2016 05:56:04 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w16si43615wmd.0.2016.09.24.05.56.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 05:56:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,387,1470693600"; 
   d="scan'208";a="238114158"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Sep 2016 14:56:03 +0200
Date: Sat, 24 Sep 2016 14:56:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Jarod Wilson <jarod@wilsonet.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Amitoj Kaur Chawla <amitoj1606@gmail.com>, 
    Tapasweni Pathak <tapaswenipathak@gmail.com>, 
    Wolfram Sang <wsa-dev@sang-engineering.com>, 
    Maciek Borzecki <maciek.borzecki@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
    Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: media: lirc: Add space
 around '+'
In-Reply-To: <d0f1bdc5ccaa602ba0a53232be35202e326e395f.1474708456.git.namrataashettar@gmail.com>
Message-ID: <alpine.DEB.2.10.1609241455520.3447@hadrien>
References: <cover.1474708455.git.namrataashettar@gmail.com> <d0f1bdc5ccaa602ba0a53232be35202e326e395f.1474708456.git.namrataashettar@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 24 Sep 2016, Namrata A Shettar wrote:

> Add space around '+' to resolve checkpatch issue.
>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/media/lirc/lirc_bt829.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/lirc/lirc_bt829.c b/drivers/staging/media/lirc/lirc_bt829.c
> index 06eac71..04d881b 100644
> --- a/drivers/staging/media/lirc/lirc_bt829.c
> +++ b/drivers/staging/media/lirc/lirc_bt829.c
> @@ -185,7 +185,7 @@ static int atir_init_start(void)
>
>  static void cycle_delay(int cycle)
>  {
> -	udelay(WAIT_CYCLE*cycle);
> +	udelay(WAIT_CYCLE * cycle);

This is not a +.

julia

>  }
>
>  static int poll_main(void)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d0f1bdc5ccaa602ba0a53232be35202e326e395f.1474708456.git.namrataashettar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

