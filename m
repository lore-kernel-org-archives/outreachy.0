X-GM-THRID: 6751717661102571520
X-Received: by 2002:a2e:9942:: with SMTP id r2mr2509721ljj.168.1572009756503;
        Fri, 25 Oct 2019 06:22:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9bd0:: with SMTP id w16ls1243750ljj.13.gmail; Fri, 25
 Oct 2019 06:22:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqySkf1nrdmXxsc8J0FnV4RRLfs1YdBfWWfkkA4E37DRHylVzydZxttVuE6N3d/wVUenMDV5
X-Received: by 2002:a2e:89d3:: with SMTP id c19mr2477173ljk.201.1572009754965;
        Fri, 25 Oct 2019 06:22:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572009754; cv=none;
        d=google.com; s=arc-20160816;
        b=A0TmNFJpTXenYAdGjk0DWrjGQiYnI1BwM869GW3Fomv1W5YYuOxNAwlQc71yPUvEsC
         WWNcF60PSmvVpHdL2pI9jtJaD9tlIpe7r1ylZvJ0fRGlGkZ0MDlHmDwxawi6Afx28rKr
         08P8Fh/BwVCTEDRU0fEwN1LI8tork4cMRnn3YYKjQzJ4pD4BOPjgTaRi0DdabJwbt18B
         mTHcFmphlslzSt06pTFDZWasSc2kCGUUx16vM85wHqhOo88cS3sL+x+FtdpiTun0r7jd
         PYXrMXk3+rHwZewH/eHMQzKb59RmOW18cxGpwIRa0/gmoqiSIhYMUBX7dKQl4CNyNARY
         lGqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=01tayTj8R5BQs1XV44La0cMEuGDOr0qdTaV7K6ha0jI=;
        b=nzq7p3YMkQgyrX4Yy8cZw0CbtMZClS/126ScJIX9Vdjm+PfmcKSnnzTSExzNBsb2ro
         2Bmqdybh9snz7UJF5hHMDQxJIBLe7djZew/3BxWWXjtQYMYG4cPlgKahVCRs0YIkQaCT
         OE54QIg6OrnHuFBV0Rj4AkzW9kQAaAGlThQwWzFp6/iMSPX6S8vOaXPN1AnxoHhEdvF1
         Yv+H/xfst2x3rPnOCWZ8t/RYsukETvn2RSjlwjZd9+vO9F0o4H3kPH96oqKZxrfBXlZ9
         byFbQjHD5xS6b+6ntBHih2ilIL8GT9zMAdeLLxgn+5vn+QvA1PqR6oqFf8XV1xxuDwHL
         ifDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 17si90431lfa.3.2019.10.25.06.22.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 06:22:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,228,1569276000"; 
   d="scan'208";a="408221941"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2019 15:22:34 +0200
Date: Fri, 25 Oct 2019 15:22:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Evan Chime <chime.evan.dri.devel@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: clocking-wizard: Remove
 static function unused
In-Reply-To: <20191025123245.GA13135@ik-ubuntu>
Message-ID: <alpine.DEB.2.21.1910251520470.3307@hadrien>
References: <20191025123245.GA13135@ik-ubuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 25 Oct 2019, Evan Chime wrote:

> Remove static function clk_wzrd_suspend, that is never used

Are you sure?  I see:

static SIMPLE_DEV_PM_OPS(clk_wzrd_dev_pm_ops, clk_wzrd_suspend,
                         clk_wzrd_resume);

If the code compiled, then maybe it is because there is a configuraion
option such that there is no power management.

If the function really is useless, it would make sense to remove the
resume function at the same time, since without suspend, resume doesn't
seem useful.

julia

>
> Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> ---
>  .../staging/clocking-wizard/clk-xlnx-clock-wizard.c    | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> index 566075f2972c..e0aaf4b276ea 100644
> --- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> +++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> @@ -99,16 +99,6 @@ static int clk_wzrd_clk_notifier(struct notifier_block *nb, unsigned long event,
>  	}
>  }
>
> -static int __maybe_unused clk_wzrd_suspend(struct device *dev)
> -{
> -	struct clk_wzrd *clk_wzrd = dev_get_drvdata(dev);
> -
> -	clk_disable_unprepare(clk_wzrd->axi_clk);
> -	clk_wzrd->suspended = true;
> -
> -	return 0;
> -}
> -
>  static int __maybe_unused clk_wzrd_resume(struct device *dev)
>  {
>  	int ret;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025123245.GA13135%40ik-ubuntu.
>

