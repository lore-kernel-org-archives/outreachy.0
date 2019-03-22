X-GM-THRID: 6670800416333103104
X-Received: by 2002:a17:902:547:: with SMTP id 65mr10430674plf.242.1553270736949;
        Fri, 22 Mar 2019 09:05:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:f20b:: with SMTP id v11ls3621390pgh.7.gmail; Fri, 22 Mar
 2019 09:05:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5H4z1YphKo9srqKraVWFSmBBT0XfXmld3h94rLjIOlHyPXAtxUp8JVD2bCSxH/cJsjnUw
X-Received: by 2002:a65:6644:: with SMTP id z4mr9672099pgv.198.1553270735932;
        Fri, 22 Mar 2019 09:05:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553270735; cv=none;
        d=google.com; s=arc-20160816;
        b=0td/If7/fl2vIjdwRbYsKQJvIcjX2dJCq19TV/GKMKf1dNEQzxu6Q98UKzTAdsqL1a
         ljBQCYOCrbkmUu0s8yT0PLwWedFM46WeMxK606bmX++RrQm62M9m7iaYKzsLGMIYz5Ra
         v2bBdYsNIQyclthftJUUKjG3A7/5r9pQQxJ+39m3EhtoYNCDmQmCRa5/feI9+K04QRaA
         QKzBh6vnLhNYaxVXo6kAAQtk9EdPc2Ksx6uENxTBB9dMh4RXy9E30H0HqpT6ya9WXU3F
         hkhF8FlURE7QlT2s1qZHnsHPrx7yTVr4nzxQD5uMk8f0ZDpY7SoOMADy24hFDekzTMej
         ffzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=AvoYaL2NisVSoH0T8RaY6IpT5v2IozJ0cMcQOpVDYGs=;
        b=U5JxqqHXgYhHgOdTUK30bQgrgHbClljCe6h4WJYH3PE/uC/kNn4eA/EloZj3l8q1n8
         UTM9wQPg33QLPA5WZIWafMP/5VLqLfEpP6KRDxlv+gkHTos38DKgxKFb42ej/w4U0oLM
         g60vGfVWg6TSXqulvW3vIjrFbimSgf78vmipc1jGa6cMBTdO3f3dGynNcwaso96dWMoa
         zJMpkE0lW58WGaBnJenHB7MJfXs6sEKU3lwdWcU4DgN+mS60PR9imzyXyApuIxWAhBCK
         /l4yzzan9wtVVmVh+PfdcG7Yuv6jafZHpqX2c7Ws7WX/B1o2i3dm4dP4Y6b1KOJ4eHIB
         EenA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=rJy1Hper;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="ewSg/hIR";
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com. [64.147.123.24])
        by gmr-mx.google.com with ESMTPS id b19si345463pls.5.2019.03.22.09.05.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 09:05:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) client-ip=64.147.123.24;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=rJy1Hper;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="ewSg/hIR";
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 036194690;
	Fri, 22 Mar 2019 12:05:33 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 22 Mar 2019 12:05:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=AvoYaL2NisVSoH0T8RaY6IpT5v2
	IozJ0cMcQOpVDYGs=; b=rJy1Hperi6sb7X3uM36X4u+7VjeNNVr91GHTA+ra+3B
	PeUiSa6l12HJakTNVrqBMDkY6q8xTTy8wrF1b4G22g6wq6zpHyf2r5xFGR1Zd1jJ
	HvSf7ZsgzINQdaH8XzF5Bw7vZEJPCbgiLqhIXoAsWvbZMqZT8dWvcDpPqBj6Jg5j
	TxWRzIJIeQGxzZ5Hlqz0cDGC4XAyz7LfpJ38cQwBjwmXmYnCTafuRc4CHmDNnO0g
	K3hGAdEnCzflMArcGLSaESrF+lTB72v5mL1GV8G11ZuKI+NuWNUhr1Yt8UdEO1rC
	80XcGbcK5w6veBg/nN3YGk93eBre2vpk2xYf8B7RpYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=AvoYaL
	2NisVSoH0T8RaY6IpT5v2IozJ0cMcQOpVDYGs=; b=ewSg/hIR5++pnGD7PqGLvL
	nq1UKoHthW+is27txnAXj4FALhS9c1c/iQctWwh0ibjj80CFuhs/DQWjBdzj8Uft
	XwfckIXuEEFWiT5Qcgys2MEwc3o/6AwXrYbk6V08hccM+qcVWXy6nhzqRvxE6gid
	73kcF88Y5VQoWJODd6Vo82y/G0rkFJsihkJ4a0Zdp+B49aKY6Bqb8Hq9gwLsXJxn
	ZPcqZkeHFSVdZuygIaI5FRR2tVnUTsjtHioGjDWcWMkhKBFGDxK8tKE5WcAz8Joq
	yMI9wzBqyTzor+sh03RqhnoDVYjBaTX+FSt6WiI0SfALIKzRSpknDZGiCICuRMSQ
	==
X-ME-Sender: <xms:zQeVXKJyEbisA8K6QugZekamOkc04bdnMiuGW6tQhui6kKLjojYdbw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrjedugdekiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
    dttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhfrhhomhepgh
    hrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:zQeVXIQ-TjMOJLCIXPYoXKptzjmtAtjIaFmDIk92VMiIbvByJbEHYA>
    <xmx:zQeVXBPoXAh-445u06aNIAqBqPG7k0sKXR6jaxFmIo7m7WIdPUlbIg>
    <xmx:zQeVXJZ3LESqqeOa-LkDk2LJobv7hezoyeOVnAF7pXwz0y6kKvP_0w>
    <xmx:zQeVXMraCg4AC2uV7EmmPrjFpA6AkWRgj93mCFONYj_bwKA8OiwcUA>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 8B4D010315;
	Fri, 22 Mar 2019 12:05:32 -0400 (EDT)
Date: Fri, 22 Mar 2019 17:05:30 +0100
From: Greg KH <greg@kroah.com>
To: sanjana99reddy99@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core:
 rtw_wlan_util.c: Modify return type suggested by Coccinelle.
Message-ID: <20190322160530.GA9031@kroah.com>
References: <20190321111222.11964-1-sanjana99reddy99@gmail.com>
 <20190321190102.GA30770@kroah.com>
 <dcd4eaa9-83e8-448e-ac97-00555572ac62@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dcd4eaa9-83e8-448e-ac97-00555572ac62@googlegroups.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 22, 2019 at 08:27:09AM -0700, sanjana99reddy99@gmail.com wrote:
> 
> 
> On Friday, March 22, 2019 at 12:31:06 AM UTC+5:30, gregkh wrote:
> >
> > On Thu, Mar 21, 2019 at 04:42:22PM +0530, Sanjana Sanikommu wrote: 
> > > The last two lines in the function could 
> > > be compressed into one. Avoid usage of local variable. 
> > > Challenge suggested by Coccinelle using ret.cocci. 
> > > The below is the script for ret.cocci: 
> > > @@ 
> > > local idexpression res; 
> > > expression e; 
> > > @@ 
> > > 
> > > -res = 
> > > +return 
> > >      e; 
> > > -return res; 
> > > 
> > > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com <javascript:>> 
> > > --- 
> > >  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 4 +--- 
> > >  1 file changed, 1 insertion(+), 3 deletions(-) 
> > > 
> > > diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > > index 4480deef95a1..70776f8e19a6 100644 
> > > --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > > +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> > > @@ -1182,10 +1182,8 @@ unsigned int update_MSC_rate(struct 
> > ieee80211_ht_cap *pHT_caps) 
> > >  { 
> > >          unsigned int mask = 0; 
> > >   
> > > -        mask = (pHT_caps->mcs.rx_mask[0] << 12) | 
> > > +        return (pHT_caps->mcs.rx_mask[0] << 12) | 
> > >                 (pHT_caps->mcs.rx_mask[1] << 20); 
> > > - 
> > > -        return mask; 
> > >  } 
> >
> > Did you build this patch? 
> >
> > Just looking at it I can see the compiler warning that it will emit... 
> >
> > Please always test-build your patches, otherwise it just makes people 
> > grumpy :) 
> >
> 
> I apologise for what happened regarding this patch. I submitted this patch 
> after
> 0 errors, 0 warnings, 0 checks i.e after post commit hooks.
> I would like to know where I went wrong. I will correct them :)

Did you build the code after making the change?  That's the most
important part :)

thanks,

greg k-h

