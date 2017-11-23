X-GM-THRID: 6491286193203838976
X-Received: by 10.28.22.84 with SMTP id 81mr663279wmw.18.1511422175678;
        Wed, 22 Nov 2017 23:29:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.136 with SMTP id q8ls1437849wrb.8.gmail; Wed, 22 Nov
 2017 23:29:34 -0800 (PST)
X-Google-Smtp-Source: AGs4zMZBZ4JoCW/G6jzMDKLMXr2+TlVAmhiUXBt0vFyyOkDLRScYGxVM8TY+Tdam3Jai2hmxwb1D
X-Received: by 10.28.96.214 with SMTP id u205mr846969wmb.21.1511422174705;
        Wed, 22 Nov 2017 23:29:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511422174; cv=none;
        d=google.com; s=arc-20160816;
        b=EnmQLqQk+KFHhhidrpcftdubqOj5P4vP3jPrI57eZfkIaOmWUy5EogC9Kpj3T/qy4l
         cJ9/X22a5HfYE1GBKaXpUzdFwwjnOlF3bZdQKCwlwjvU2Xlon/lpbRekV8fmXXEoJRVO
         CDeevm3dZ8MRdfWWxTz1gIWC8efu7zJACfG8M/NoiEsttBBDzHJ7XOYHi+AXd3u9yDKt
         ADquaXXiHwi42gwy5ex6HtZAirU8dXSKkkzG/Zk0/AZeUB4JgXW7gq0fxhnhJ3qVbDjb
         qiMn3bb4geIlfqssmhaKQJV0YZBjW6MhaKOpei6Fuy8YNB5gAEkcenErGqEy/4Iz9yw9
         heIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=zrSdkosPRCSzyB7gc+UQ0loDkBC/w6lVFflWR/31Jxk=;
        b=C+b0LGqzM01DUwr/FPKsDWweW3nFiacFU2M51yIUO/UqLVoBYVcxb7lKG98Epg/AgI
         kq8v/kKxZelz4308iCHAIYWYZ+Dxe+xVLlQiDJ9TcQVe4yH2gu1VXxfsK6XTh+CmSTLQ
         DSxOsINDd24IWmgYJQ5P4sLbF0NFUdkLqtVyaP5Dmy009eRxUVcDRKpPIKCAzfszUAXN
         NY1npU9QiKcvfAhgT7YeAsNfJHjf1RUxzUZ4TlRny7BIE5IQ1Pv8VPrPcdK+fmGq7d3p
         Bf4paKHnMo5XZ2S/GF0kPdSOGJXWsZyyVjVUewWtYnUAYDM+rb8Wc/N+IZSmoS5aIhbG
         rM1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r6si1024970wrg.2.2017.11.22.23.29.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Nov 2017 23:29:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B5C09408;
	Thu, 23 Nov 2017 07:29:32 +0000 (UTC)
Date: Thu, 23 Nov 2017 07:22:28 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Joe Perches <joe@perches.com>, netdev@vger.kernel.org,
	cocci <cocci@systeme.lip6.fr>, outreachy-kernel@googlegroups.com,
	"David S. Miller" <davem@davemloft.net>,
	Andreas Kemnade <andreas@kemnade.info>,
	Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
	Philippe Ombredanne <pombredanne@nexb.com>,
	linux-usb@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] net: usb: hso.c: remove unneeded
 DRIVER_LICENSE #define
Message-ID: <20171123062228.GB25861@kroah.com>
References: <20171117141939.GD17880@kroah.com>
 <1511370336.6989.100.camel@perches.com>
 <alpine.DEB.2.20.1711222220100.19477@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1711222220100.19477@hadrien>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Wed, Nov 22, 2017 at 10:20:49PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 22 Nov 2017, Joe Perches wrote:
> 
> > On Fri, 2017-11-17 at 15:19 +0100, Greg Kroah-Hartman wrote:
> > > There is no need to #define the license of the driver, just put it in
> > > the MODULE_LICENSE() line directly as a text string.
> > >
> > > This allows tools that check that the module license matches the source
> > > code license to work properly, as there is no need to unwind the
> > > unneeded dereference.
> > []
> > > diff --git a/drivers/net/usb/hso.c b/drivers/net/usb/hso.c
> > []
> > > @@ -76,7 +76,6 @@
> > >
> > >  #define MOD_AUTHOR			"Option Wireless"
> > >  #define MOD_DESCRIPTION			"USB High Speed Option driver"
> > > -#define MOD_LICENSE			"GPL"
> > >
> > >  #define HSO_MAX_NET_DEVICES		10
> > >  #define HSO__MAX_MTU			2048
> > > @@ -3288,7 +3287,7 @@ module_exit(hso_exit);
> > >
> > >  MODULE_AUTHOR(MOD_AUTHOR);
> > >  MODULE_DESCRIPTION(MOD_DESCRIPTION);
> > > -MODULE_LICENSE(MOD_LICENSE);
> > > +MODULE_LICENSE("GPL");
> >
> > Probably all of these MODULE_<FOO>(MOD_<BAR>) uses could be
> > simplified as well.
> >
> > Perhaps there's utility in a (cocci?) script that looks for
> > used-once
> > macro #defines in various types of macros.
> 
> What about module_version, eg:
> 
> diff -u -p a/drivers/ata/pata_pdc202xx_old.c
> b/drivers/ata/pata_pdc202xx_old.c
> --- a/drivers/ata/pata_pdc202xx_old.c
> +++ b/drivers/ata/pata_pdc202xx_old.c
> @@ -21,7 +21,6 @@
>  #include <linux/libata.h>
> 
>  #define DRV_NAME "pata_pdc202xx_old"
> -#define DRV_VERSION "0.4.3"
> 
>  static int pdc2026x_cable_detect(struct ata_port *ap)
>  {
> @@ -389,4 +388,4 @@ MODULE_AUTHOR("Alan Cox");
>  MODULE_DESCRIPTION("low-level driver for Promise 2024x and 20262-20267");
>  MODULE_LICENSE("GPL");
>  MODULE_DEVICE_TABLE(pci, pdc202xx);
> -MODULE_VERSION(DRV_VERSION);
> +MODULE_VERSION("0.4.3");

I've just deleted MODULE_VERSION() entirely from some subsystems, as
once the driver is in the kernel source tree, the "version" makes almost
no sense at all.

But I know some companies love incrementing it (some network and scsi
drivers specifically), so those might want to keep it around for some
odd reason.

thanks

greg k-h

