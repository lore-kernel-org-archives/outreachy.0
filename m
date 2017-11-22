X-GM-THRID: 6491286193203838976
X-Received: by 10.28.208.11 with SMTP id h11mr612071wmg.28.1511385664700;
        Wed, 22 Nov 2017 13:21:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.144.2 with SMTP id s2ls1105220wmd.12.canary-gmail; Wed, 22
 Nov 2017 13:21:03 -0800 (PST)
X-Google-Smtp-Source: AGs4zMab1yfVRtEGcR4MCpMgB76YO4spDZzZaPs0/r+2y34QfK3onTLl0WJTQwwE+NVhg03E61at
X-Received: by 10.28.167.83 with SMTP id q80mr748798wme.1.1511385663613;
        Wed, 22 Nov 2017 13:21:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511385663; cv=none;
        d=google.com; s=arc-20160816;
        b=yelZ5H+T/iJ1W2ue8ch+1qz3YGLIlr5TRh2+WL5eGS6DfeWPFqCd/ZnRzNX2ta1TJC
         ehfQAaQmVtfPEmOIy1BmpqVrr4RUEem8ecF+oJ7o8quF9CpTA5NE2riyhKkQIg8zA5ol
         q5BJvi+XUwFw0/noe1pPbiOXbicEPJ/UgAwT2nOgHlPqEDwrTaiJkIGhPw0+nPd2EVoH
         9H5oM3fvnq+q4D5CeM/WvBgP8w9zoV5JTCR5yr+EHBvH/9znVk8mCuCX5DkiXvIB2JA1
         Az9LY6XMfO9OtcEZUzxHA5WMsZiUBwRtR+7cOroL6EcNlTeQ7ICk4Vsl4xKF4ENh6rqf
         MghA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=2IArtR/gj4+BKPfzJ8VvsoyWQjvzRHMxoK5o0Ncic9Y=;
        b=U4eIt8cDJOQT2u3hgv5V7u27x0kK7cD7MXDgT9BkoeV+itl02Mli+LIvY46HhTEASs
         Ku5eCAfoJef0bJNCA+8o+a6VjHQ4cHo2K5LZ9bhwz3E9nzXOp3hCJ2Gum3PDjCjgKpVy
         JNU3PPPxVanx5Dj401IfiDNeq/l8Xb5GPCFaUWxgEV/kM9aUqS8bydMdtbkYeljvcG5h
         2ZBgjYtYqjXEr/h52jIVq2se7DQ3Br58A57EjzqRdRO4rhp15pngWiQKKu1V84iRER8R
         0PVx5RzT7jYxXfBHD+U40C7LfoAXvStb9S+vepE8SIX4wH1T5ZpmF3tpTzkkRtAMO/np
         kwxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r6si984558wrg.2.2017.11.22.13.21.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Nov 2017 13:21:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.44,438,1505772000"; 
   d="scan'208";a="302096224"
Received: from lmontsouris-656-1-273-139.w217-128.abo.wanadoo.fr (HELO hadrien.local) ([217.128.127.139])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Nov 2017 22:20:58 +0100
Date: Wed, 22 Nov 2017 22:20:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org, 
    Julia Lawall <julia.lawall@lip6.fr>, cocci <cocci@systeme.lip6.fr>, 
    outreachy-kernel@googlegroups.com, "David S. Miller" <davem@davemloft.net>, 
    Andreas Kemnade <andreas@kemnade.info>, Johan Hovold <johan@kernel.org>, 
    linux-kernel@vger.kernel.org, Philippe Ombredanne <pombredanne@nexb.com>, 
    linux-usb@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] net: usb: hso.c: remove unneeded
 DRIVER_LICENSE #define
In-Reply-To: <1511370336.6989.100.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1711222220100.19477@hadrien>
References: <20171117141939.GD17880@kroah.com> <1511370336.6989.100.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 22 Nov 2017, Joe Perches wrote:

> On Fri, 2017-11-17 at 15:19 +0100, Greg Kroah-Hartman wrote:
> > There is no need to #define the license of the driver, just put it in
> > the MODULE_LICENSE() line directly as a text string.
> >
> > This allows tools that check that the module license matches the source
> > code license to work properly, as there is no need to unwind the
> > unneeded dereference.
> []
> > diff --git a/drivers/net/usb/hso.c b/drivers/net/usb/hso.c
> []
> > @@ -76,7 +76,6 @@
> >
> >  #define MOD_AUTHOR			"Option Wireless"
> >  #define MOD_DESCRIPTION			"USB High Speed Option driver"
> > -#define MOD_LICENSE			"GPL"
> >
> >  #define HSO_MAX_NET_DEVICES		10
> >  #define HSO__MAX_MTU			2048
> > @@ -3288,7 +3287,7 @@ module_exit(hso_exit);
> >
> >  MODULE_AUTHOR(MOD_AUTHOR);
> >  MODULE_DESCRIPTION(MOD_DESCRIPTION);
> > -MODULE_LICENSE(MOD_LICENSE);
> > +MODULE_LICENSE("GPL");
>
> Probably all of these MODULE_<FOO>(MOD_<BAR>) uses could be
> simplified as well.
>
> Perhaps there's utility in a (cocci?) script that looks for
> used-once
> macro #defines in various types of macros.

What about module_version, eg:

diff -u -p a/drivers/ata/pata_pdc202xx_old.c
b/drivers/ata/pata_pdc202xx_old.c
--- a/drivers/ata/pata_pdc202xx_old.c
+++ b/drivers/ata/pata_pdc202xx_old.c
@@ -21,7 +21,6 @@
 #include <linux/libata.h>

 #define DRV_NAME "pata_pdc202xx_old"
-#define DRV_VERSION "0.4.3"

 static int pdc2026x_cable_detect(struct ata_port *ap)
 {
@@ -389,4 +388,4 @@ MODULE_AUTHOR("Alan Cox");
 MODULE_DESCRIPTION("low-level driver for Promise 2024x and 20262-20267");
 MODULE_LICENSE("GPL");
 MODULE_DEVICE_TABLE(pci, pdc202xx);
-MODULE_VERSION(DRV_VERSION);
+MODULE_VERSION("0.4.3");

julia

