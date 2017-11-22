X-GM-THRID: 6491286193203838976
X-Received: by 10.80.137.157 with SMTP id g29mr6859615edg.2.1511370720230;
        Wed, 22 Nov 2017 09:12:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.212.18 with SMTP id t18ls2051620edh.6.gmail; Wed, 22 Nov
 2017 09:11:59 -0800 (PST)
X-Google-Smtp-Source: AGs4zMYwF5iReBhDfMA3zKVyfld4YKC2VF0BSOZZnCj/KzkrpWILSHNAeyCPgCYpim+IHoCRTeSO
X-Received: by 10.80.242.138 with SMTP id f10mr681432edm.11.1511370719403;
        Wed, 22 Nov 2017 09:11:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511370719; cv=none;
        d=google.com; s=arc-20160816;
        b=MqQmUYQzhwe7hZDd92BnPU2Ixkn5WQxFuDcFy91iJuF2C3wy0SQ+p0dzRp3hnmp8QW
         ArQ1qHrQ4zHHYv/xkcwBfPS/rul5Azb8S+MrvlQGSKtFCtQtUNYclBNcq4jCBX6S+5ef
         dUQR/Ahvoj3gMaHfTqXb3a8kqSgR0hI1fHF0cIzHbWNQhnJtccfQquBVBFgfln+K9l+2
         2hoy8aBVlIUhFO/GH6DjkaOVc2zlzl8lAU5E8Eh0540S/9IaRcJtfEQwVH6ToFpiMKCl
         nOif+qxhBd/kTnkoxHJE8d3fl5L9TgbgqiixD62/SM6yo8b7fK2fcxXG+rU6Dkg7/CUu
         7mvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=bWgltdHaO+djgz3lxziLD/WF90PSriytbuL0rePpUzg=;
        b=Vluzdp1oQHlLgqAiEe14JIfSh1sYXaxmtodm44NXv4b7DTjJNyQP/KPOwqKpkhLx7p
         OeYIK1mcUpT5hrssI3PcRuyHxiNoU+0dOzm9vHcqiObHsVniU0VRtQQ2BCiGwgJssfFx
         g8EZQC5zIitqLwHArrq6xwBC14GYQaWEC08OlqKUylh/93krfXmJo3aqHz2iS18lGp0c
         BlAE7GZRVhyipHtIR2xEMBwPt3yk8z/eWc5n4EQSmJyY+f6mlqFsDQyipFfkwQuF1lg8
         wj9+tW9erE8T9D/1fmB1tNl/DuiuBLDpW3YTrvUxl5SYaHo/7HGKVeLIX4/UcfxK9sSV
         l7dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h23si1655386ede.4.2017.11.22.09.11.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Nov 2017 09:11:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [185.156.173.27])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D47449AF;
	Wed, 22 Nov 2017 17:11:56 +0000 (UTC)
Date: Wed, 22 Nov 2017 18:12:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Cc: netdev@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>,
	cocci <cocci@systeme.lip6.fr>, outreachy-kernel@googlegroups.com,
	"David S. Miller" <davem@davemloft.net>,
	Andreas Kemnade <andreas@kemnade.info>,
	Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
	Philippe Ombredanne <pombredanne@nexb.com>,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH] net: usb: hso.c: remove unneeded DRIVER_LICENSE #define
Message-ID: <20171122171201.GA6528@kroah.com>
References: <20171117141939.GD17880@kroah.com>
 <1511370336.6989.100.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1511370336.6989.100.camel@perches.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Wed, Nov 22, 2017 at 09:05:36AM -0800, Joe Perches wrote:
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

Agreed, I did that for a bunch of USB drivers, need to do it for others
as well.

thanks,

greg k-h

