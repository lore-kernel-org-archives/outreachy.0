X-GM-THRID: 6469264363106598912
X-Received: by 10.25.22.24 with SMTP id m24mr272665lfi.36.1506254384573;
        Sun, 24 Sep 2017 04:59:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.129 with SMTP id r123ls776705wmf.1.gmail; Sun, 24 Sep
 2017 04:59:43 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBwqU2E4FEOAw3EjwRzYsBdA2OZucS9n6p6c5eWQiAYBCz9BRj/TaDurLfwlXUqdou5kQ3z
X-Received: by 10.28.22.4 with SMTP id 4mr292246wmw.13.1506254383616;
        Sun, 24 Sep 2017 04:59:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506254383; cv=none;
        d=google.com; s=arc-20160816;
        b=D4U8ccMT0M6sv7l08cStIzsbS55WRpg15VUAGdyOHjWLiqBIwChQ0JoHJ8lku7sOqh
         wbcUJOMqUDKj7IGRBOptk0ImaaHu4eMr4u/6cDRp8BoC5WsI6Rq73TiFsiYeuH4vIKCj
         FLELBCVid2WJPyL+Zb7e9o938sBxBgnl2D+AVmKBeZeaIuhJotd0/q+0EHr46H5FLpqN
         czxQI6EDdDdSW0+MNwwQNJeKyZ6NZqXyYnzwJt6wmPL6+IkP87uyPRg74H/meO9zxbBv
         f5XmG08hMcnlp/QUWn2B/LzOFygB8XVf48PZ/nHyCxY9XkeIJD42Rc7RNJvtJnnDAymS
         Li4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=aCqv6uKxtDV/vQ7Jh/jCHOMGFs5Tb4zTGumFwL/hQ3Y=;
        b=kwplWpfVHhqpw8YsBlMARi6IEIm0IcBjxGLvu4CtVdw28Ni/Mf7ve29DNebXozPRlD
         iaMvqvKcasDh8vs81b5gFRwiV8r9gr/LX680+rfHHe+3qY4XQDFj7eWhVldNEZ54avnj
         05yBd/jKxlLpQ6bW6m0z+NZ738fnq3qiWk9LwuyKxSbCAmn9NJajpTujVXdGeOdxtJ56
         +Cr+A+k2U6NEWc2o8EzBhu2Il8LR5Vhr1uRqnUJCyUOlO6LYeRXynrMFIbcY3NLxtwd7
         Ub5YTR2nh2THbXWWPY4ZAww/kKhGlU+PvghaRNWGIBrklVXfq2PMZ/7aY2ASmrwZ9V4l
         3chg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b62si238564wmd.3.2017.09.24.04.59.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Sep 2017 04:59:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,432,1500933600"; 
   d="scan'208";a="238528446"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Sep 2017 13:59:42 +0200
Date: Sun, 24 Sep 2017 13:59:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Use octal permissions
 '0444'
In-Reply-To: <20170924084941.GA12556@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.20.1709241359280.2101@hadrien>
References: <20170924084941.GA12556@domino-MS-16Y1>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Sep 2017, Mihaela Muraru wrote:

> Fixed the following checkpatch warning:
>
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal
> permissions '0444'.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/speakup/speakup_apollo.c | 2 +-
>  drivers/staging/speakup/speakup_audptr.c | 2 +-
>  drivers/staging/speakup/speakup_bns.c    | 2 +-
>  drivers/staging/speakup/speakup_decext.c | 2 +-
>  drivers/staging/speakup/speakup_dectlk.c | 2 +-
>  drivers/staging/speakup/speakup_dummy.c  | 2 +-
>  drivers/staging/speakup/speakup_ltlk.c   | 2 +-
>  drivers/staging/speakup/speakup_spkout.c | 2 +-
>  drivers/staging/speakup/speakup_txprt.c  | 2 +-
>  9 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/speakup/speakup_apollo.c b/drivers/staging/speakup/speakup_apollo.c
> index 2edb56c..dcf0c3b 100644
> --- a/drivers/staging/speakup/speakup_apollo.c
> +++ b/drivers/staging/speakup/speakup_apollo.c
> @@ -200,7 +200,7 @@ static void do_catch_up(struct spk_synth *synth)
>  }
>
>  module_param_named(ser, synth_apollo.ser, int, 0444);
> -module_param_named(dev, synth_apollo.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_apollo.dev_name, charp, 0444);
>  module_param_named(start, synth_apollo.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> diff --git a/drivers/staging/speakup/speakup_audptr.c b/drivers/staging/speakup/speakup_audptr.c
> index 8ae826e..45b5721 100644
> --- a/drivers/staging/speakup/speakup_audptr.c
> +++ b/drivers/staging/speakup/speakup_audptr.c
> @@ -163,7 +163,7 @@ static int synth_probe(struct spk_synth *synth)
>  }
>
>  module_param_named(ser, synth_audptr.ser, int, 0444);
> -module_param_named(dev, synth_audptr.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_audptr.dev_name, charp, 0444);
>  module_param_named(start, synth_audptr.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
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
>  module_param_named(start, synth_bns.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
> index 95f4b21..4310c2c 100644
> --- a/drivers/staging/speakup/speakup_decext.c
> +++ b/drivers/staging/speakup/speakup_decext.c
> @@ -227,7 +227,7 @@ static void synth_flush(struct spk_synth *synth)
>  }
>
>  module_param_named(ser, synth_decext.ser, int, 0444);
> -module_param_named(dev, synth_decext.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_decext.dev_name, charp, 0444);
>  module_param_named(start, synth_decext.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> diff --git a/drivers/staging/speakup/speakup_dectlk.c b/drivers/staging/speakup/speakup_dectlk.c
> index f069954..5d6a861 100644
> --- a/drivers/staging/speakup/speakup_dectlk.c
> +++ b/drivers/staging/speakup/speakup_dectlk.c
> @@ -299,7 +299,7 @@ static void synth_flush(struct spk_synth *synth)
>  }
>
>  module_param_named(ser, synth_dectlk.ser, int, 0444);
> -module_param_named(dev, synth_dectlk.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_dectlk.dev_name, charp, 0444);
>  module_param_named(start, synth_dectlk.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> diff --git a/drivers/staging/speakup/speakup_dummy.c b/drivers/staging/speakup/speakup_dummy.c
> index 851953d..ea3b291 100644
> --- a/drivers/staging/speakup/speakup_dummy.c
> +++ b/drivers/staging/speakup/speakup_dummy.c
> @@ -122,7 +122,7 @@ static struct spk_synth synth_dummy = {
>  };
>
>  module_param_named(ser, synth_dummy.ser, int, 0444);
> -module_param_named(dev, synth_dummy.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_dummy.dev_name, charp, 0444);
>  module_param_named(start, synth_dummy.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> diff --git a/drivers/staging/speakup/speakup_ltlk.c b/drivers/staging/speakup/speakup_ltlk.c
> index 423795f..95efaab 100644
> --- a/drivers/staging/speakup/speakup_ltlk.c
> +++ b/drivers/staging/speakup/speakup_ltlk.c
> @@ -167,7 +167,7 @@ static int synth_probe(struct spk_synth *synth)
>  }
>
>  module_param_named(ser, synth_ltlk.ser, int, 0444);
> -module_param_named(dev, synth_ltlk.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_ltlk.dev_name, charp, 0444);
>  module_param_named(start, synth_ltlk.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> diff --git a/drivers/staging/speakup/speakup_spkout.c b/drivers/staging/speakup/speakup_spkout.c
> index 9ca21ed..1037aa0 100644
> --- a/drivers/staging/speakup/speakup_spkout.c
> +++ b/drivers/staging/speakup/speakup_spkout.c
> @@ -131,7 +131,7 @@ static void synth_flush(struct spk_synth *synth)
>  }
>
>  module_param_named(ser, synth_spkout.ser, int, 0444);
> -module_param_named(dev, synth_spkout.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_spkout.dev_name, charp, 0444);
>  module_param_named(start, synth_spkout.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> diff --git a/drivers/staging/speakup/speakup_txprt.c b/drivers/staging/speakup/speakup_txprt.c
> index 831ee40..e160034 100644
> --- a/drivers/staging/speakup/speakup_txprt.c
> +++ b/drivers/staging/speakup/speakup_txprt.c
> @@ -119,7 +119,7 @@ static struct spk_synth synth_txprt = {
>  };
>
>  module_param_named(ser, synth_txprt.ser, int, 0444);
> -module_param_named(dev, synth_txprt.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_txprt.dev_name, charp, 0444);
>  module_param_named(start, synth_txprt.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170924084941.GA12556%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

