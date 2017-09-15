X-GM-THRID: 6465893160266498048
X-Received: by 10.202.83.19 with SMTP id h19mr13558326oib.107.1505460528575;
        Fri, 15 Sep 2017 00:28:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.5 with SMTP id j5ls619512ita.14.canary-gmail; Fri, 15
 Sep 2017 00:28:47 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb49E83tot02h6rZoR3BLSdHN4OQhSsi3KvVCxsGZ/cnEXSGbNwVBlOi6gW81UjijKatWh0/
X-Received: by 10.101.73.198 with SMTP id t6mr15279908pgs.181.1505460527817;
        Fri, 15 Sep 2017 00:28:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505460527; cv=none;
        d=google.com; s=arc-20160816;
        b=lwyoVprcyzXfS34XlLcVkD/itPiLslw2PFIuIAJR/1J1D39VK7m+g3AQSyBlujLQEz
         hFI6GU/arlA32N9Zb5mFli5bEXdrCc1mms0L+tjJ4VGCOyFr5yOzqx1hjMUNP5TJLGR+
         rI4hIQbDkc1d5AgVieaZ0G0hPBQ3SRVllvztJ3MIUgxochWssr/kLvpBf8iNzeIZutLw
         fE83NNxMjlJmjUunSaEQJP1m/JP7jv2UWp+T+Z3llghIGceh/GTKAjWL/Cv1EzuPd4VZ
         Gount8O03/YmD0cRbWCzqlCZR+OVOF807BwQ0nh6MCBDNhfxvAsPiF81rcOzg1dcHgnw
         CU7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=LKvEQy8KsLcsPaJJ3GX1aUfPB/fvSCuhyEihTbkyWeI=;
        b=PsBLNl9fdV70muVWAFW7UUfQZpNLCYMYwJLYWNyxk9ctRsylTdyR5CUK2/VPMnHGnv
         bV8Qsl53mLLg3zHwHzTWUkeuute8qOYtf38sa/idmT/9GjL5q9wERgWMErn+pSemb/Y4
         iFi7zlV+aS4yg40L94tH3yPNRTLGJ7dYhURdTDvzXta2gYsy9x1GG6ZbHwDmt7tVsfkh
         1DB/3oEYMLp5IFbfcHNwQ80Adw1Q3KESUhkVwSQkJZwtSpSgg/o07sbr/jOa23sE3m4u
         Rq9XzGguA9UU5O/RVB42R44qMEjlb4Qdpv2pnW2W4ZUD9+iXBqbpqUC2aRvMnlnIWDbm
         N+3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.147 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0147.hostedemail.com. [216.40.44.147])
        by gmr-mx.google.com with ESMTPS id d125si101432itg.0.2017.09.15.00.28.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 00:28:47 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.147 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.147;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.147 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 2C4BD1805AAF9;
	Fri, 15 Sep 2017 07:28:47 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::,RULES_HIT:41:355:379:541:599:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:4321:4605:5007:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12438:12740:12760:12895:13069:13161:13229:13311:13357:13439:14659:14721:21080:21433:21451:21627:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: park55_4c6cbaf02861d
X-Filterd-Recvd-Size: 2214
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Fri, 15 Sep 2017 07:28:45 +0000 (UTC)
Message-ID: <1505460523.27581.5.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] gpu: drm: rockchip: Replace dev_*
 with DRM_DEV_*
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Haneen Mohammed
	 <hamohammed.sa@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Mark Yao
	 <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner
	 <heiko@sntech.de>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, greg <gregkh@linuxfoundation.org>
Date: Fri, 15 Sep 2017 00:28:43 -0700
In-Reply-To: <alpine.DEB.2.20.1709150857490.2287@hadrien>
References: <20170915064742.GA8367@Haneen>
	 <alpine.DEB.2.20.1709150857490.2287@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.6-1ubuntu1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2017-09-15 at 08:58 +0200, Julia Lawall wrote:
> 
> On Fri, 15 Sep 2017, Haneen Mohammed wrote:
> 
> > This patch replace instances of dev_info/err/debug with
> > DRM_DEV_INFO/ERROR/WARN respectively inorder to use a drm-formatted
> > specific log messages. Issue corrected with the help of the following
> > Coccinelle script:
[]
> > @@ -935,7 +941,8 @@ static void dw_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
> >  		return;
> > 
> >  	if (clk_prepare_enable(dsi->pclk)) {
> > -		dev_err(dsi->dev, "%s: Failed to enable pclk\n", __func__);
> > +		DRM_DEV_ERROR(dsi->dev,
> > +			      "%s: Failed to enable pclk\n", __func__);

The uses of "%s: " ... , __func__ with DRM_DEV_ERROR
is redundant and should be removed.

> > @@ -967,7 +974,8 @@ static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
> >  		return;
> > 
> >  	if (clk_prepare_enable(dsi->pclk)) {
> > -		dev_err(dsi->dev, "%s: Failed to enable pclk\n", __func__);
> > +		DRM_DEV_ERROR(dsi->dev,
> > +			      "%s: Failed to enable pclk\n", __func__);

etc...


