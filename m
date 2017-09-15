X-GM-THRID: 6466114198556377088
X-Received: by 10.28.68.135 with SMTP id r129mr460556wma.19.1505512232246;
        Fri, 15 Sep 2017 14:50:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.109.18 with SMTP id i18ls563465ljc.27.gmail; Fri, 15 Sep
 2017 14:50:30 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4IQCVyOyx9aODvZNYoIH0cJVzPO+FBT5JOk3yx9jiG7xrXrydE8qER0YTsasEM0tpwZXQK
X-Received: by 10.46.99.1 with SMTP id x1mr1811264ljb.11.1505512230637;
        Fri, 15 Sep 2017 14:50:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505512230; cv=none;
        d=google.com; s=arc-20160816;
        b=M9gYeexSREvfNAxdJFf168bcJEps9Iuunj4pp50hKZsi10mnQ4l18w1GNsElKRk1EV
         HJrfUeHQfa4yU5XFwifZ+IQQlKsIUZtCuOfE3CFTazkul5bN/6PIr5/e5HUOcxJ8wZof
         d7f1w+1weVpcmzrx68fpPS4OcPz+DRZfGsG2XmUtec0PdjQxUkZ/9fCIx8dyrRi/Ilh6
         KGV2lUFoShSYZT7rBbTYUibWOVAxhL9dbySXe24wfI4yCLJC+UGaiMl6GaFfFO0lPUEq
         YbM4eZcUb7Ss+u9KkQ5nDbMfAwFVkqAJAQTlNVL3oupNWEf0pmMb+IYfjuQsMXPsb5gr
         89CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=plOonmeYFZDtF63k+VL9YMd/g/x3OV6mby11qTMyPi0=;
        b=cglQD0upyqUKdqlwih0P+s+LGd8f8YUVpq2Prv4qhPZmbxhTT+E8vJhPRWaKfrotyW
         L8BMbyZEgYTspYomdCyP04PlT76tAWLUYnLiS0/EZELoN0wpfebg5kxD/ZRacRj1s/FL
         Q0ALd/J22H99gr7F6uud+dS8ihyn+zdoS7Q3o2kky0hV8s66bkXmQIGxK6BlUgd/MUIt
         6siEEvyWco1VGFsOiUQVG60O7n+AZF/0zkgTmJtkjyXIROAmyiiU3uZuVMRb0DoM72rT
         ynBCL0Pgvk5KwQROqV8jf9yd0xGUGsm5NBmDbxbropUevotBzesXp7AP5HK8FMVJJ5Ge
         Ognw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l133si101049wmb.3.2017.09.15.14.50.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 14:50:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,399,1500933600"; 
   d="scan'208";a="291333327"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 23:50:30 +0200
Date: Fri, 15 Sep 2017 23:50:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Srishti Sharma <srishtishar@gmail.com>, samuel@sortiz.org, 
    gregkh@linuxfoundation.org, netdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] Staging: irda: Remove
 parentheses on the right of assignment
In-Reply-To: <1505511108.27581.16.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1709152348360.2533@hadrien>
References: <cover.1505508423.git.srishtishar@gmail.com>  <9380189edb2722544981c868699ade29ab5c297d.1505508423.git.srishtishar@gmail.com> <1505511108.27581.16.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Joe Perches wrote:

> On Sat, 2017-09-16 at 02:36 +0530, Srishti Sharma wrote:
> > Parentheses are not needed on the right hand side of assignment
> > statement in most cases. Done using the following semantic
> > patch by coccinelle.
> []
> > @@
> > identifier E,F,G,f;
> > expression e,r;
> > @@
> >
> > (
> > E = (G == F);
> > >
> >
> > E = (e == r);
> > >
> >
> > E =
> > -(
> > ...
> > -)
> > ;
> > )
> []
> > diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
> []
> > @@ -605,7 +605,7 @@ static int mcs_speed_change(struct mcs_cb *mcs)
> >  	if (mcs->new_speed <= 115200) {
> >  		rval &= ~MCS_FIR;
> >
> > -		rst = (mcs->speed > 115200);
> > +		rst = mcs->speed > 115200;
> >  		if (rst)
> >  			mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
>
> Coccinelle is a good tool, but its output is limited to
> the correctness
> and completeness of its input script.
>
> Please look at the suggested modifications of the script
> and examine the code for other similar uses.
>
> The else if block immediately below this is:
>
> 	} else if (mcs->new_speed <= 1152000) {
> 		rval &= ~MCS_FIR;
>
> 		if ((rst = !(mcs->speed == 576000 || mcs->speed == 11520
> 00)))
> 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
>
> which should also be corrected by this patch.

You're concerned about the assignment in the if header?  Because that was
in 1/2.  One could also push the ! under the ||, but I'm not sure that
would be much of an improvement.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505511108.27581.16.camel%40perches.com.
> For more options, visit https://groups.google.com/d/optout.
>

