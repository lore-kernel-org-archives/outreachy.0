X-GM-THRID: 6342321503270338560
X-Received: by 10.31.156.9 with SMTP id f9mr7475777vke.36.1476742988960;
        Mon, 17 Oct 2016 15:23:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.40 with SMTP id 37ls12855904otr.33.gmail; Mon, 17 Oct
 2016 15:23:08 -0700 (PDT)
X-Received: by 10.159.36.212 with SMTP id 78mr9250uar.8.1476742988388;
        Mon, 17 Oct 2016 15:23:08 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id co10si4727477pad.1.2016.10.17.15.23.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 15:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hh10so9651094pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 15:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YD7/aDohV1l5gJD6IrsQNNKxtLB3tu5Xo1bap7TjtUY=;
        b=UToHqNRnENDhoo8Fdyx+QO5ijxvFx0iLa1H1xgyxANSdhGjwC73RIlITR/0wooncnR
         EMnivDGaIphZHxztKBiZAnIY2IiUVj4yyhDxQCepMYd6aFzpJcMLL7uw17J6veX0Kock
         p6fh4+LDolqrzPSqnzO49W/kkUJdjkcsFf12PyBN5YhtRs3UGCqoSzm+JBxoPOk6ZZx8
         2UnFun9oVGsi1oP1ldSIJu1NXSU904dEuEgyYncPIYIErw4byeleo3muIdz0EZ+EZPMT
         LshPzJSmLsV5mljA3OyPun+9++Eg1rIJFwjoOCHovwEkRHNIIhPRpHrGqM1EqqVZEpZO
         VtdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YD7/aDohV1l5gJD6IrsQNNKxtLB3tu5Xo1bap7TjtUY=;
        b=bqesd16kjvc3vuil6zTGxUFczU0/d9AIOT4s0QFClYVvY8uj6ALgtOw73jMU1WZmuH
         0jJiksREkhnX/FUzNh46nBEXSCi9GexEvGAnHFcrWXKMOtmstXb0nQ1DT2r582x38Av5
         r13YcNjHgRoFXI7j1QZbDJ98m78flddizF/zMjjCBBBPPsm3EJOCFVw7b9xANuqIB5rP
         BxTIXUVGt92cA7u5E1XdRkwaHsJcG6pMITJz2bLdN3KDk2kBmWvNQ3lE94NO1ZeXYY3R
         etux6czdKZFUj+hFKpf7VEbAEW18k0Gi6aFRLPswi5D9qbH7f2sH+Kmw3ADNogl1StK8
         XnVQ==
X-Gm-Message-State: AA6/9Rk0ATnVyOFF5Wy6qaGBkZS7YmjE+8ELXfpIlmqRvq2oKO887oG57Mdd1luiK2Vzxw==
X-Received: by 10.66.189.168 with SMTP id gj8mr34174181pac.117.1476742988157;
        Mon, 17 Oct 2016 15:23:08 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id i123sm50087625pfg.30.2016.10.17.15.23.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 15:23:07 -0700 (PDT)
Date: Mon, 17 Oct 2016 15:23:05 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: constify
 local structure
Message-ID: <20161017222305.GB2705@localhost>
References: <20161017064620.GA21653@localhost>
 <alpine.DEB.2.20.1610171124120.1921@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1610171124120.1921@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 17, 2016 at 11:26:11AM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 16 Oct 2016, Elizabeth Ferdman wrote:
> 
> > Constify the static struct RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.
> >
> > The only other instance was one of its properties being assigned to a
> > variable:
> > Index2G = RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.Index2G;
> >
> > Therefore this is a good candidate for constification.
> >
> > Running size did not show any difference:
> > Before/After:
> > text    data     bss     dec     hex filename
> > 44122     408    2974   47504    b990
> 
> This is not a good sign.  It suggests that you have not actually compiled
> the lines of code that you changed.
> 

That is indeed strange, I don't understand why that happened. I tried it
again, and got this:

Before:
 text    data     bss     dec     hex filename
  44122     408    2974   47504    b990

After: 
text    data     bss     dec     hex filename
 68238     408    5398   74044   1213c

> It is a little bit strange that a structure is declared to only contain
> the number 3.
> 

Yeah, this is how it's defined: 

struct rt_channel_plan_map {
       unsigned char   Index2G;
}; 

Is it unconventional to have a struct with
only one member? I guess it could just be an unsigned char. Perhaps it
is to differentiate it from the other variable that is also called
Index2G so maybe he's using it as a namespace.

if (RT_CHANNEL_DOMAIN_REALTEK_DEFINE == ChannelPlIndex2G)
	Index2G = RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.Index2G;
else
	Index2G = RTW_ChannelPlanMap[ChannelPlan].Index2G;


> I wonder if something else is going on?
> 
> julia
> 
> >
> > Lastly, break up the long line to fix the checkpatch warning and conform
> > to kernel coding style.
> >
> > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > index fb13df5..c94700c 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > @@ -133,7 +133,9 @@ static struct rt_channel_plan_map	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
> >  	{0x03},	/* 0x41, RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G */
> >  };
> >
> > -static struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03}; /* use the combination for max channel numbers */
> > +static const struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {
> > +	0x03
> > +}; /* use the combination for max channel numbers */
> >
> >  /*
> >   * Search the @param channel_num in given @param channel_set
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161017064620.GA21653%40localhost.
> > For more options, visit https://groups.google.com/d/optout.
> >

