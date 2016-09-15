X-GM-THRID: 6330639307056873472
X-Received: by 10.66.83.100 with SMTP id p4mr7888057pay.26.1473967738125;
        Thu, 15 Sep 2016 12:28:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls1427134otg.26.gmail; Thu, 15 Sep
 2016 12:28:57 -0700 (PDT)
X-Received: by 10.129.145.5 with SMTP id i5mr5374574ywg.55.1473967737588;
        Thu, 15 Sep 2016 12:28:57 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si1497771pab.2.2016.09.15.12.28.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so2586369pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7gVX3QVdO0V00yWdNX3w9PgS2CUIRvq1g34qHVGBfn4=;
        b=W3Y0koQtY74Cu93g/SszmJ7avZq0XhfO18gurjPgVq2Ox9ZCzYCYzyXs8XUSDyxhWL
         aSyG1FkboRRTntoCK8I/j50FctTn8Idpx/GjsXUBGnUU156TXWpoPc9O+hB4V5Gl7BUI
         Q0fQUW9E+7eDSCexMIiVFj1/pfFEQ4s2s8Gw2YUgvDO+BzlK/GH+1Dkinn1LHmMcxgDG
         AkzapLephgU4Gdi4NYRQgjenpkorr3dG8vPjDyvQvWzC+oPQ8pl9d0mwMftavBU3UcJa
         ybJMZbiPZ7Ty4F7J3zhmT9vRSbvMp9tTcj0R+ZuLKUKNGy4QPHOuFfuqyF3Rv6mXtsEq
         xzDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7gVX3QVdO0V00yWdNX3w9PgS2CUIRvq1g34qHVGBfn4=;
        b=FUQf/Fn2osk0sjfV1IBjkry94BfWl9ivZBOtJ5qUnXJZdshbeVWKsJhjU2Vx6NbHjt
         qqVYdfDsOTXNjf1DtHjUSLNdcBPi77sxXaP8n10E5DJPwYe/WxpiJiv8YkLIU97N7kEA
         uzw8f+1NKTKelfTSAEi9vX0lhEHe3uyIc7FAdLqJvngxq36dbe/p7lMWD1wtYXrNbq0t
         4KkGHRlMIgjKDETc2sOsuiv2KIA8jO53yAYExiC9WKx4q8uF1QdLcMAmnbM0ks6wSFC8
         q//rva1VbN5Fn8fts1VxhQXQK0dPOnZDW55zceRquJrBWZ/xrG08+XCCdioj6eoC0cWo
         aVOA==
X-Gm-Message-State: AE9vXwOe4oMktnmDSXVRLZr92zx4JQVyFhmO3kz1Rwiy+urPQE1Zuu6TjBfKmrES0dGCxQ==
X-Received: by 10.98.21.85 with SMTP id 82mr15957091pfv.81.1473967737356;
        Thu, 15 Sep 2016 12:28:57 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n77sm12657203pfj.31.2016.09.15.12.28.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:28:56 -0700 (PDT)
Date: Fri, 16 Sep 2016 00:58:48 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Lior Dotan <liodot@gmail.com>,
	Christopher Harrer <charrer@alacritech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: slicoss: Fix alignment
 with open parentheses
Message-ID: <20160915192848.GA4742@toblerone>
References: <cover.1473966683.git.aquannie@gmail.com>
 <a0e1623587ce0b842607142663aa65d7871245cc.1473966683.git.aquannie@gmail.com>
 <alpine.DEB.2.10.1609152118560.3364@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609152118560.3364@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 15, 2016 at 09:20:12PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 16 Sep 2016, Rehas Sachdeva wrote:
> 
> > Align statements following a line with open parentheses to start after the '('.
> > Issue detected by checkpatch.pl.
> >
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/slicoss/slicoss.c | 28 ++++++++++++++--------------
> >  1 file changed, 14 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
> > index 21280a3..6bfb7a8 100644
> > --- a/drivers/staging/slicoss/slicoss.c
> > +++ b/drivers/staging/slicoss/slicoss.c
> > @@ -191,7 +191,7 @@ static void slic_timer_ping(ulong dev)
> >   *
> >   */
> >  static void slic_link_config(struct adapter *adapter,
> > -		      u32 linkspeed, u32 linkduplex)
> > +			     u32 linkspeed, u32 linkduplex)
> >  {
> >  	u32 speed;
> >  	u32 duplex;
> > @@ -707,7 +707,7 @@ static void slic_config_clear(struct adapter *adapter)
> >  }
> >
> >  static bool slic_mac_filter(struct adapter *adapter,
> > -			struct ether_header *ether_frame)
> > +			    struct ether_header *ether_frame)
> >  {
> >  	struct net_device *netdev = adapter->netdev;
> >  	u32 opts = adapter->macopts;
> > @@ -830,10 +830,10 @@ static void slic_timer_load_check(ulong cardaddr)
> >  }
> >
> >  static int slic_upr_queue_request(struct adapter *adapter,
> > -			   u32 upr_request,
> > -			   u32 upr_data,
> > -			   u32 upr_data_h,
> > -			   u32 upr_buffer, u32 upr_buffer_h)
> > +				  u32 upr_request,
> > +				  u32 upr_data,
> > +				  u32 upr_data_h,
> > +				  u32 upr_buffer, u32 upr_buffer_h)
> 
> Maybe you could put a few more arguments on the same line.  For example,
> since upr_buffer and upr_buffer_h are already on the same line, maybe you
> could do the same with upr_data and upr_data_h.
>

I see. I'll make the changes right away. Thanks for pointing out.

Rehas

> >  {
> >  	struct slic_upr *upr;
> >  	struct slic_upr *uprqueue;
> > @@ -899,19 +899,19 @@ static void slic_upr_start(struct adapter *adapter)
> >  }
> >
> >  static int slic_upr_request(struct adapter *adapter,
> > -		     u32 upr_request,
> > -		     u32 upr_data,
> > -		     u32 upr_data_h,
> > -		     u32 upr_buffer, u32 upr_buffer_h)
> > +			    u32 upr_request,
> > +			    u32 upr_data,
> > +			    u32 upr_data_h,
> > +			    u32 upr_buffer, u32 upr_buffer_h)
> 
> Likewise here.
> 
> julia
> 
> 
> >  {
> >  	unsigned long flags;
> >  	int rc;
> >
> >  	spin_lock_irqsave(&adapter->upr_lock, flags);
> >  	rc = slic_upr_queue_request(adapter,
> > -					upr_request,
> > -					upr_data,
> > -					upr_data_h, upr_buffer, upr_buffer_h);
> > +				    upr_request,
> > +				    upr_data,
> > +				    upr_data_h, upr_buffer, upr_buffer_h);
> >  	if (rc)
> >  		goto err_unlock_irq;
> >
> > @@ -1421,7 +1421,7 @@ retry:
> >  }
> >
> >  static void slic_cmdq_putdone_irq(struct adapter *adapter,
> > -				struct slic_hostcmd *cmd)
> > +				  struct slic_hostcmd *cmd)
> >  {
> >  	struct slic_cmdqueue *cmdq = &adapter->cmdq_done;
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a0e1623587ce0b842607142663aa65d7871245cc.1473966683.git.aquannie%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

