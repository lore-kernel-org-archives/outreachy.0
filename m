X-GM-THRID: 6331272586985472000
X-Received: by 10.28.29.13 with SMTP id d13mr90491wmd.19.1474114905297;
        Sat, 17 Sep 2016 05:21:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.219 with SMTP id h88ls440849lji.46.gmail; Sat, 17 Sep
 2016 05:21:44 -0700 (PDT)
X-Received: by 10.46.33.163 with SMTP id h35mr232329lji.22.1474114904555;
        Sat, 17 Sep 2016 05:21:44 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1283295wmd.1.2016.09.17.05.21.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 05:21:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,350,1470693600"; 
   d="scan'208";a="237203940"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 14:21:43 +0200
Date: Sat, 17 Sep 2016 14:21:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: i4l: Do not initialise
 statics to 0.
In-Reply-To: <20160917011052.GA14721@sandhya>
Message-ID: <alpine.DEB.2.10.1609171420160.3454@hadrien>
References: <20160917011052.GA14721@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 17 Sep 2016, Sandhya Bankar wrote:

> Do not initialise statics to 0.
> static variable by default initialise to 0,so
> no need to explicite initialisation.
> This issue was found by checkpatch .

Your commit message should fill more of the available 80 characters.
Sentences should start with a capital letter.  Punctuation should have no
space before and a space after.  The commit message is preserved forever,
so it is good for it to look nice.

julia

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/i4l/act2000/module.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
> index 68073d0..39a8940 100755
> --- a/drivers/staging/i4l/act2000/module.c
> +++ b/drivers/staging/i4l/act2000/module.c
> @@ -28,7 +28,7 @@ static unsigned short act2000_isa_ports[] =
>  static act2000_card *cards = (act2000_card *) NULL;
>
>  /* Parameters to be set by insmod */
> -static int   act_bus  =  0;
> +static int   act_bus;
>  static int   act_port = -1;  /* -1 = Autoprobe  */
>  static int   act_irq  = -1;
>  static char *act_id   = "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160917011052.GA14721%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

