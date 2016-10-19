X-GM-THRID: 6342321503270338560
X-Received: by 10.157.8.183 with SMTP id 52mr2499166otf.117.1476917731964;
        Wed, 19 Oct 2016 15:55:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.131 with SMTP id b3ls3324933otc.1.gmail; Wed, 19 Oct
 2016 15:55:31 -0700 (PDT)
X-Received: by 10.157.48.81 with SMTP id w17mr2465129otd.29.1476917731515;
        Wed, 19 Oct 2016 15:55:31 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id co10si6241308pad.1.2016.10.19.15.55.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 15:55:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i85so3594320pfa.0
        for <outreachy-kernel@googlegroups.com>; Wed, 19 Oct 2016 15:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DWsSsNRxTcMCn5tVwVMJRcwGN5QCGqgtyJrztX6YgKs=;
        b=tB5vwe/DnMyplGUAYuApmjvHOWFS9ygNflEFEso50Y0h8Icp4Peip8Be/bAU0kyYkM
         OSD67Jeh0/AMF3QSaCSgberSqlu6YLPVQb2zlEQsb2NbQfYNOhQUe8R37fEWKr+I4pPU
         d8+H3PwCb5h9sdDYi0nbxK0nL3HtqLZnDgQODDspmbGMiY4CVDsfsYGESLtMUK+tm7Ti
         OBnNu60Nqp/l/iiM/arIj+zxr8GOJZjpb3lRRSy9H0uuYjWjw+3g3k/MzHwmB9HdPMI2
         77QJzeTQfLcP/CwN69gtOdYxL0GwNifuNqZXi/lXWKM8aiMyBpWn+NnxC7npwfqsvR0c
         CfsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DWsSsNRxTcMCn5tVwVMJRcwGN5QCGqgtyJrztX6YgKs=;
        b=IqlNqiGl6zkJW37O6n7SiRbruxXdFUpGCPZ7YymmmcLbfgC6YogNL4FjSdQD3wPhdn
         kNDeWLmECtDw07sRdvIteVLT+7vDoLogo1fT1Ri8eDC9Dkj263uWKSkoHUGGDbjJhBVv
         497/gQEwoILO7K2AdaR98V6H7ebOTl8f75Ey7Ocw7NV+d/KlekzJ7oKe03mFVC1eO30d
         C13eluqXscGiqhv0FfDAab4CwvfpHOmRHrDm6xUbAftXLt5xahQqkRRLH0zys9uaClMR
         TZWRBa5H7WE8DGzKkqxlFiYkUU8M/Ivk+588wK78Pru5JTHc8bQrdBoUt0CSiF6FATLM
         ZKRw==
X-Gm-Message-State: AA6/9RlIDBZW1I3+l8Fw/IBeWB39a/quNCK3wzy7FETjRa52Ld+EAucUVDmh2YAbqLq47A==
X-Received: by 10.99.107.130 with SMTP id g124mr12690042pgc.76.1476917731170;
        Wed, 19 Oct 2016 15:55:31 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id u17sm66188711pfa.83.2016.10.19.15.55.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Oct 2016 15:55:30 -0700 (PDT)
Date: Wed, 19 Oct 2016 15:55:28 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: constify
 local structure
Message-ID: <20161019225528.GA11195@localhost>
References: <20161017064620.GA21653@localhost>
 <alpine.DEB.2.20.1610171124120.1921@hadrien>
 <20161017222305.GB2705@localhost>
 <alpine.DEB.2.20.1610180720220.2038@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1610180720220.2038@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Oct 18, 2016 at 07:26:47AM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 17 Oct 2016, Elizabeth Ferdman wrote:
> 
> > On Mon, Oct 17, 2016 at 11:26:11AM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 16 Oct 2016, Elizabeth Ferdman wrote:
> > >
> > > > Constify the static struct RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.
> > > >
> > > > The only other instance was one of its properties being assigned to a
> > > > variable:
> > > > Index2G = RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.Index2G;
> > > >
> > > > Therefore this is a good candidate for constification.
> > > >
> > > > Running size did not show any difference:
> > > > Before/After:
> > > > text    data     bss     dec     hex filename
> > > > 44122     408    2974   47504    b990
> > >
> > > This is not a good sign.  It suggests that you have not actually compiled
> > > the lines of code that you changed.
> > >
> >
> > That is indeed strange, I don't understand why that happened. I tried it
> > again, and got this:
> >
> > Before:
> >  text    data     bss     dec     hex filename
> >   44122     408    2974   47504    b990
> >
> > After:
> > text    data     bss     dec     hex filename
> >  68238     408    5398   74044   1213c
> 
> This is even odder.  Now the data size has not changed (it should go down)
> and the other numbers have changed massively.
> 

I tried it again. The text shouldnt have changed so massively.It should
have just gone from 68238 to 68286. The data stays constant at 408. I
ran "make allyesconfig drivers/staging/rtl8188eu/" and saw a CC line
which confirmed that the specific .o file was compiled. I did ls -lt on
the folder to confirm that the .o file was current. No clue why the data
isn't going down :/. Could it be because the struct only holds one
number?

> julia
> 
> >
> > > It is a little bit strange that a structure is declared to only contain
> > > the number 3.
> > >
> >
> > Yeah, this is how it's defined:
> >
> > struct rt_channel_plan_map {
> >        unsigned char   Index2G;
> > };
> >
> > Is it unconventional to have a struct with
> > only one member? I guess it could just be an unsigned char. Perhaps it
> > is to differentiate it from the other variable that is also called
> > Index2G so maybe he's using it as a namespace.
> >
> > if (RT_CHANNEL_DOMAIN_REALTEK_DEFINE == ChannelPlIndex2G)
> > 	Index2G = RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.Index2G;
> > else
> > 	Index2G = RTW_ChannelPlanMap[ChannelPlan].Index2G;
> >
> >
> > > I wonder if something else is going on?
> > >
> > > julia
> > >
> > > >
> > > > Lastly, break up the long line to fix the checkpatch warning and conform
> > > > to kernel coding style.
> > > >
> > > > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 4 +++-
> > > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > > index fb13df5..c94700c 100644
> > > > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > > @@ -133,7 +133,9 @@ static struct rt_channel_plan_map	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
> > > >  	{0x03},	/* 0x41, RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G */
> > > >  };
> > > >
> > > > -static struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03}; /* use the combination for max channel numbers */
> > > > +static const struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {
> > > > +	0x03
> > > > +}; /* use the combination for max channel numbers */
> > > >
> > > >  /*
> > > >   * Search the @param channel_num in given @param channel_set
> > > > --
> > > > 2.1.4
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161017064620.GA21653%40localhost.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161017222305.GB2705%40localhost.
> > For more options, visit https://groups.google.com/d/optout.
> >

