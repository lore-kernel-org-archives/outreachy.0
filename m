X-GM-THRID: 6491286193203838976
X-Received: by 10.25.72.87 with SMTP id v84mr811362lfa.44.1511422309301;
        Wed, 22 Nov 2017 23:31:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.68.140 with SMTP id b12ls635036ljf.1.gmail; Wed, 22 Nov
 2017 23:31:47 -0800 (PST)
X-Google-Smtp-Source: AGs4zMZp8K4bECargAun2n9Oa0jH/9mPMyNJID103BFdCxGCd9ozIImMZNvtTCcnvdGnhJi5NzFt
X-Received: by 10.46.97.18 with SMTP id v18mr1017676ljb.22.1511422307916;
        Wed, 22 Nov 2017 23:31:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511422307; cv=none;
        d=google.com; s=arc-20160816;
        b=UGkA3XEKK76piA7/QDvvDnGuMt7aFwqYEc2BAeB5BinJADP9jh2tK3m4mN0Q58LHN0
         mvi0CAVX6RPD6buhDenCloaptwhbfHUpvu91ltGhhNvEFjJrE5/mpy95zii0CHhZlNDh
         UKGB7RoVh5rg3ZHn+eDsspPcMccI9w3i5XI2m4TUVExcPo2sOJ0qxpxh42/SO9U2Snwb
         dVaUdcJ8oRux5r4dmRtYvCVVGQsoI8ip3Q1YxGoI/A6yKmfYwTmHp5l4iT9QHpwXN6bN
         p8IhYrFzO3hTLLA2NA2tIoq9ty4WDezC97f5+eClP7iCnWWMvmgdSqu3hTb64A/wefRO
         ag0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=4EP2tlSqH6HhogMTU9GF4FkzmOn8BmyBQLVTbdM2KwQ=;
        b=Qrfxgj7F08qntrIIgdi0X2+aj4NXorgwyrX0oeXRz1iAeh4ikQ6Wk9FAkFS0jXnzhS
         nvjzrG85SlBNcVLIRoFF8/upixSFbUCPd2mmUKI2FXPPUKK3OV9akbTsrpwlkiQ8vXRb
         AW+ohIZaf8IexU5xx6bulEYpPyyU4LHMRhhPGfvs/8X6pKAUlv5cAJ95YaNYXvQ24tOV
         AyFgShGa4oTSyzThug4pb6GYBHrgS9qwOxthq6zBXEGA8NQIDmywyiQsoqb23tzMoOPa
         kt6DJyVxtczhLWKQuhHswAe3c8SSPfaEocVhOn82HemG0pi/w8HdZ/3GVfiScqFrVdVO
         kh+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q27si1329096lfd.0.2017.11.22.23.31.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Nov 2017 23:31:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.44,440,1505772000"; 
   d="scan'208";a="245709096"
Received: from lmontsouris-656-1-273-139.w217-128.abo.wanadoo.fr (HELO hadrien.local) ([217.128.127.139])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Nov 2017 08:31:45 +0100
Date: Thu, 23 Nov 2017 08:31:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
cc: Joe Perches <joe@perches.com>, netdev@vger.kernel.org, 
    cocci <cocci@systeme.lip6.fr>, outreachy-kernel@googlegroups.com, 
    "David S. Miller" <davem@davemloft.net>, 
    Andreas Kemnade <andreas@kemnade.info>, Johan Hovold <johan@kernel.org>, 
    linux-kernel@vger.kernel.org, Philippe Ombredanne <pombredanne@nexb.com>, 
    linux-usb@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] net: usb: hso.c: remove unneeded
 DRIVER_LICENSE #define
In-Reply-To: <20171123062228.GB25861@kroah.com>
Message-ID: <alpine.DEB.2.20.1711230831200.3105@hadrien>
References: <20171117141939.GD17880@kroah.com> <1511370336.6989.100.camel@perches.com> <alpine.DEB.2.20.1711222220100.19477@hadrien> <20171123062228.GB25861@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 23 Nov 2017, Greg Kroah-Hartman wrote:

> On Wed, Nov 22, 2017 at 10:20:49PM +0100, Julia Lawall wrote:
> >
> >
> > On Wed, 22 Nov 2017, Joe Perches wrote:
> >
> > > On Fri, 2017-11-17 at 15:19 +0100, Greg Kroah-Hartman wrote:
> > > > There is no need to #define the license of the driver, just put it in
> > > > the MODULE_LICENSE() line directly as a text string.
> > > >
> > > > This allows tools that check that the module license matches the source
> > > > code license to work properly, as there is no need to unwind the
> > > > unneeded dereference.
> > > []
> > > > diff --git a/drivers/net/usb/hso.c b/drivers/net/usb/hso.c
> > > []
> > > > @@ -76,7 +76,6 @@
> > > >
> > > >  #define MOD_AUTHOR			"Option Wireless"
> > > >  #define MOD_DESCRIPTION			"USB High Speed Option driver"
> > > > -#define MOD_LICENSE			"GPL"
> > > >
> > > >  #define HSO_MAX_NET_DEVICES		10
> > > >  #define HSO__MAX_MTU			2048
> > > > @@ -3288,7 +3287,7 @@ module_exit(hso_exit);
> > > >
> > > >  MODULE_AUTHOR(MOD_AUTHOR);
> > > >  MODULE_DESCRIPTION(MOD_DESCRIPTION);
> > > > -MODULE_LICENSE(MOD_LICENSE);
> > > > +MODULE_LICENSE("GPL");
> > >
> > > Probably all of these MODULE_<FOO>(MOD_<BAR>) uses could be
> > > simplified as well.
> > >
> > > Perhaps there's utility in a (cocci?) script that looks for
> > > used-once
> > > macro #defines in various types of macros.
> >
> > What about module_version, eg:
> >
> > diff -u -p a/drivers/ata/pata_pdc202xx_old.c
> > b/drivers/ata/pata_pdc202xx_old.c
> > --- a/drivers/ata/pata_pdc202xx_old.c
> > +++ b/drivers/ata/pata_pdc202xx_old.c
> > @@ -21,7 +21,6 @@
> >  #include <linux/libata.h>
> >
> >  #define DRV_NAME "pata_pdc202xx_old"
> > -#define DRV_VERSION "0.4.3"
> >
> >  static int pdc2026x_cable_detect(struct ata_port *ap)
> >  {
> > @@ -389,4 +388,4 @@ MODULE_AUTHOR("Alan Cox");
> >  MODULE_DESCRIPTION("low-level driver for Promise 2024x and 20262-20267");
> >  MODULE_LICENSE("GPL");
> >  MODULE_DEVICE_TABLE(pci, pdc202xx);
> > -MODULE_VERSION(DRV_VERSION);
> > +MODULE_VERSION("0.4.3");
>
> I've just deleted MODULE_VERSION() entirely from some subsystems, as
> once the driver is in the kernel source tree, the "version" makes almost
> no sense at all.
>
> But I know some companies love incrementing it (some network and scsi
> drivers specifically), so those might want to keep it around for some
> odd reason.

OK, that seems like a simple soluton.  Thanks.

julia

