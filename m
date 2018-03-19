X-GM-THRID: 6532038435056648192
X-Received: by 10.28.245.19 with SMTP id t19mr1409139wmh.11.1521469167264;
        Mon, 19 Mar 2018 07:19:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.247.23 with SMTP id v23ls1562247wmh.12.gmail; Mon, 19 Mar
 2018 07:19:26 -0700 (PDT)
X-Google-Smtp-Source: AG47ELv0EFowpNDhSHKx8Sf3Bjt5oCON2Uqbgg7tYoJ5PGEcsmIMZtEDXLRX7X+3F2elo1NzhprN
X-Received: by 10.28.20.18 with SMTP id 18mr1341307wmu.22.1521469165903;
        Mon, 19 Mar 2018 07:19:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521469165; cv=none;
        d=google.com; s=arc-20160816;
        b=cMiYr11rpjshsnQIvkuoND65v0RrRABuGqNBxu+iG3yd4y6nLg6kfFMhpSNhX73rr8
         aLm5pl0tflL62G9mTV8XG0p8HMzlhpFNVMqd/luSaIIoE229vu6mWZNFUqtamgEjh3Ew
         wVXaDrnA/61QZuYH6lNXq5+lSYcfeZWgWlCw7ORIs3cezHsqQOCb+pzTMwpEVBq3DL3R
         5Obzh4J73L1GkywDY8Vlk4eoKROESC186wG2oug6J1t65/xgB4ESZ96YWzmCi+TbK8/N
         hjQYrzq+pcbN2G+gdQp29uOhYkkmysALcOP/IhrmmA0scBUUI7I1I1jLKBpR8JIU8ROd
         9how==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=QlJ8oioyVK4PnNLadirP3hHsRzq9Ku5IAJjwQmn9dOs=;
        b=fz2dZhX9CzyF3tzH2l4QNGK/Ojs63aPQXTEB35dlgQ0XW+ixOVIsIuziCtFiP/pndz
         PRjYij/sZWjBg2tbX/GExw5XOwIb3JM9yCRmp4KWzws0wKIPKDk7C09N3LPdQsMFA6ii
         FLG/0ZOYD25nzvDMj83YzDQ0TCOZo+grukJozEueYgg2YqKUr8ctL3yW4d1JdxltmCzv
         GUIIrczLr8d0jPk7OiNiHkIRLJiXxuMRCYsBoQXYXWWiVbyrDk6RhMsdoE10deDTAXnT
         1vIXmwbpjU3h5UgiQYqKCY36RzUD/msZHhytS9MqCw5P8sMAmsC3VzeNG+uMhel0M8bB
         pcsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l124si20803wmd.0.2018.03.19.07.19.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 07:19:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,330,1517871600"; 
   d="scan'208";a="318821076"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2018 15:19:25 +0100
Date: Mon, 19 Mar 2018 15:19:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: media: davinci_vpfe:
 Change to "%s...", __func__
In-Reply-To: <CAC4++KCx8_PewSvZx9v=GsFZ8f+qb29SO8qYRGXS_YFmAmveHw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803191518460.28376@hadrien>
References: <1520858697-31275-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <CAC4++KCx8_PewSvZx9v=GsFZ8f+qb29SO8qYRGXS_YFmAmveHw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Mar 2018, Nishka Dasgupta wrote:

> Resending a patch. (I cannot locate it in my commit history, so I
> can't resend it the proper way; I apologise for the inconvenience.)

You need to make the change again, and send the patch again.  This can't
be applied.

julia

>
> Thanking you,
> Nishka Dasgupta
>
>
> On Mon, Mar 12, 2018 at 6:14 PM, Nishka Dasgupta
> <nishka.dasgupta_ug18@ashoka.edu.in> wrote:
> > Change string explicitly mentioning function name to "%s...", __func__.
> > Issue found with checkpatch.
> >
> > Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> > ---
> >  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > index 6a3434c..7d3349b 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > @@ -696,7 +696,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
> >
> >         if (!gamma->bypass_r && !gamma_param->table_r) {
> >                 dev_err(dev,
> > -                       "ipipe_get_gamma_params: table ptr empty for R\n");
> > +                       "%s: table ptr empty for R\n", __func__);
> >                 return -EINVAL;
> >         }
> >         memcpy(gamma_param->table_r, gamma->table_r,
> > --
> > 2.7.4
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKCx8_PewSvZx9v%3DGsFZ8f%2Bqb29SO8qYRGXS_YFmAmveHw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

