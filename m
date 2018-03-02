X-GM-THRID: 6528283603618496512
X-Received: by 10.233.232.139 with SMTP id a133mr3237804qkg.25.1519986365346;
        Fri, 02 Mar 2018 02:26:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.165.130 with SMTP id o124ls5728669qke.0.gmail; Fri, 02 Mar
 2018 02:26:04 -0800 (PST)
X-Google-Smtp-Source: AG47ELt0nM7AQio55MDMPLwuZERGtNncQ0WLOXnENj6ydReCeD+B7yd51XXpqcWPaNrPuO/hfq7n
X-Received: by 10.55.74.70 with SMTP id x67mr3291060qka.7.1519986364004;
        Fri, 02 Mar 2018 02:26:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519986363; cv=none;
        d=google.com; s=arc-20160816;
        b=T1PxXaZyzqPdsBojiDxcYh9fWWk/YaJzaEx8MG5whBSnKJSpdx6KCVL2N9A1ibzGD6
         tNfSMLX6NXUHLp/ZUTnAGf8pmBZtcASm1MXZiCracQMJH1LYjrSMqVDVMeqWYnXzADeb
         NG05OecjoJ6QpDIvGOjgWN27MSEhrwUbP9qArUDrl+Fzf32VL45buS2AaI4bBTfWYSRl
         AvCCg2BMWPrB0nWonRL4HdVFcYyRwFlTwIaC6LpsfyLDdlEz8Y0sOplwK+yign+gucgl
         ZdUI1Y6P5/GSE/e8u8Xrz49y1ikllbJUxQpgkkrLnE2hoY7fioucqnXbCYvMyEC1xvdB
         bihg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=BmhWxnPY9cQn2ov5fiOkhHDTpL/avHHoONstNfKaNms=;
        b=VGMKXbvibsjoB0Kw2uCTeGAHq0LJBHzrJOUJMJTy9byZw/KlfUqHOi/5zTy+GOivgq
         ayhBX+9wzBsxKAhZ8udMvDSzFtFlat0xRVPWLIMK//jWc5lLxq1muD3CLC96t+3qDLnb
         VP9aOiQ9Guq0k5LF8Nibi892AXiPbIPacS2EeN7g7uxOx7yTNb9/49uOAJFAd/4b22my
         YSNOr399DZp4r80nuetUTpjtj68q1AYejb1jT4QkltoON74RxQ8HuHcppTHEdxmvY4pd
         vNfTJjbKQEUiMpB06hG5jHec0MjtGdaPZMkf1XkdXUj+L1RARx0HPLjVWz/j0QruBnbs
         BeZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jdRQTT1H;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f6si206200qth.4.2018.03.02.02.26.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 02:26:03 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jdRQTT1H;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id y26so3615039pgv.4
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 02:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BmhWxnPY9cQn2ov5fiOkhHDTpL/avHHoONstNfKaNms=;
        b=jdRQTT1HXEs8ajN3qp76da8r+OLN+BfA1uprIc2OeRu4JiWr+FE2W+puonyedfWamJ
         vmoKLT63HgSmWPCNdYKtrDQHGkbs0B+YTJPAxYeuoFPeBJP0wrSHmq3bbHF/fiqNsCzC
         pL6+vV+Tdmgri51AGtbkBREtplJfnLdRpMqTylbWvxv0be7hjk1vh4UllIWmjLiWGFPa
         yu7cQiMni1t1wa0HFvquYasHN5kBTAz9vMfpxlykMb1pzGbNjygehAOGz+EVsGy8FvCI
         g5oPwPptJmcE23iIPYYnZyEk4gTSJrnWLvY/vjcDUklK+nHLyGsG9//QnYQ05HXXOePY
         i6wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BmhWxnPY9cQn2ov5fiOkhHDTpL/avHHoONstNfKaNms=;
        b=WUTuoiyqzS0devyBqs/nBIUa7diOFFZ/EhH55y5go3rXhrpRE2fARvESAlbFEsVXkH
         NduWIZiLOmuqZxP+wYQheqGIE/Bm03KP3MtD5lAjowlylatY3A/eSNpmGhv9tda9jDtK
         zp1kMwQzm50Wg1y/an6ZM0ebTbZSAKP4rE1FQ53ZUqGdRSD2310mcIqno3sLDNlXw6el
         7ekN+N/Bt/dDNmr4wDEwG/OM++YgfXEMPN2kh2kfh42O6VMudkoOoBIW4tOcOxstqaxA
         jR2yd2hvzfkRRjzSFyXHedSrRSynWpoeWHw788UrIlojucH3XEsOa4X5ke3ahEf79wWk
         D5PQ==
X-Gm-Message-State: APf1xPAbQazRgWf5jOP8n5+LaWyuyvYa4GRRBRPK6f+DLODxCt6Vw3CB
	BBuSP9TvIvQIPlUsB55443Pedw==
X-Received: by 10.99.173.79 with SMTP id y15mr4157958pgo.136.1519986363025;
        Fri, 02 Mar 2018 02:26:03 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id w24sm10601273pfl.14.2018.03.02.02.26.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 02:26:02 -0800 (PST)
Date: Fri, 2 Mar 2018 02:25:34 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: remove condition
 where it has no effect
Message-ID: <20180302102533.GA14941@ubuntu>
References: <1519984441-14752-1-git-send-email-santhameena13@gmail.com>
 <alpine.DEB.2.20.1803021100500.2214@hadrien>
 <20180302100854.GA14922@ubuntu>
 <alpine.DEB.2.20.1803021111560.2214@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1803021111560.2214@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Mar 02, 2018 at 11:12:17AM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 2 Mar 2018, Santha Meena Ramamoorthy wrote:
> 
> > On Fri, Mar 02, 2018 at 11:03:38AM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Fri, 2 Mar 2018, Santha Meena Ramamoorthy wrote:
> > >
> > > > Remove condition where if and else branch are functionally identical.
> > > > Issue found using cond_no_effect.cocci Coccinelle script.
> > >
> > > Actually, there are just identical, period.  It would be good to remove
> > > "functionally".
> > >
> > > Since having such code that is completely duplicated is a little bit
> > > strange, it could be good to enlarge the recipient list to:
> > >
> > > Ping-Ke Shih <pkshih@realtek.com>
> > > (commit_signer:1/1=100%,authored:1/1=100%,added_lines:5225/5225=100%)
> > > Larry Finger <Larry.Finger@lwfinger.net> (commit_signer:1/1=100%)
> > > devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
> > >
> > > Maybe someone out there would know if actually some different arguments
> > > were intended.
> > >
> > > julia
> > >
> > Hi,
> >
> > Sure, I will do it now. I guess that should be v2 of the patch.
> 
> Yes.  Change to the commit message and adding new recipients.
> 
> julia

Thank you!
> 
> > > >
> > > > Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> > > > ---
> > > >  drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c | 8 ++------
> > > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> > > > index ffff5b0..5b82640 100644
> > > > --- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> > > > +++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> > > > @@ -2885,12 +2885,8 @@ static void halbtc8822b2ant_action_a2dp(struct btc_coexist *btcoexist)
> > > >  							     NORMAL_EXEC, 5);
> > > >
> > > >  		} else {
> > > > -			if (wifi_turbo)
> > > > -				halbtc8822b2ant_coex_table_with_type(
> > > > -					btcoexist, NORMAL_EXEC, 10);
> > > > -			else
> > > > -				halbtc8822b2ant_coex_table_with_type(
> > > > -					btcoexist, NORMAL_EXEC, 10);
> > > > +			halbtc8822b2ant_coex_table_with_type(btcoexist,
> > > > +							     NORMAL_EXEC, 10);
> > > >
> > > >  			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
> > > >  						109);
> > > > --
> > > > 2.7.4
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519984441-14752-1-git-send-email-santhameena13%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >

