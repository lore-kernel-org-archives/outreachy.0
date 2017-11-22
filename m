X-GM-THRID: 6491286193203838976
X-Received: by 10.28.1.194 with SMTP id 185mr647060wmb.12.1511371298327;
        Wed, 22 Nov 2017 09:21:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.181.129 with SMTP id c1ls1114298wre.9.gmail; Wed, 22 Nov
 2017 09:21:37 -0800 (PST)
X-Google-Smtp-Source: AGs4zMbOl1rL+QlsWYoENbre2B2uBng1S3g23zBp8eKrg6f010asA1kL6ZhYC6A8vzEEKG/7qncq
X-Received: by 10.223.136.137 with SMTP id f9mr2081499wrf.0.1511371297295;
        Wed, 22 Nov 2017 09:21:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511371297; cv=none;
        d=google.com; s=arc-20160816;
        b=W9/bHZhugJaDkh2EyC/51m5wzqW9O/43LMWPa8PL+ACpEXOKx8sYLjiFy0ADjUo8jn
         0FHIe6Cb1rRI1jaNarz7hHth55XA3oOBTCqdZeUBtSYrQbcxmHMoz5EJRmNUGAkmyf+Y
         llhIYxLvBUgTY/3exKB/GTS4ogZo8UpbKowFEBtBHj23/CHJsf6NYjsP9RpG7ME3uUS9
         46a9RNWctPirQExtFa1tT0EAp4i+7h0CbOdL2fNR5vFFLm9f0eK/RmeovMDGd+BwBjfW
         eJUfcJziHmFOtr+vhV6uWqPqKXtjFrgkGRm6+feOAay2Txr6nplhhGSdWE88vYAapq4P
         qFaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=mT0+6KuMm9Q+z3hWRNtnfDPQ1wk6MFA4nHrW0Ci+dKM=;
        b=MRo0Yl20ZwRo2cRgpoDI4s5gdFO9uVljRvyUpcWIyjB2iTJ2qJ65wEjCPdq7Uy27qc
         +ldRrttetvo8yudWF96ysjl+q7NbIsODM1v4ohzHl72ZWC6nyoG1j1IEdZzNYWvHLL6C
         MbNynNwgVZG03vpzB54tQAnSJoLFLPCTSuwIyLMuxTBLGtT7TOWM9iuU9yqy0GvmV6mU
         JSPu4SFDhzzGPenuFNHDWpPqobtx6YRkimaRpjZw4GxRKXsk25SPvhauoK+paBl85Dxo
         VxF2FCSQyYLIsS/Ri02mZPApja3IsBeainxA3EbvUr2Ki7JUwxIw48gtzIXmO1LFkuyu
         D9pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c51si1101854wrc.1.2017.11.22.09.21.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Nov 2017 09:21:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.44,436,1505772000"; 
   d="scan'208";a="302077799"
Received: from lmontsouris-656-1-273-139.w217-128.abo.wanadoo.fr (HELO hadrien.local) ([217.128.127.139])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Nov 2017 18:21:35 +0100
Date: Wed, 22 Nov 2017 18:21:34 +0100 (CET)
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
Message-ID: <alpine.DEB.2.20.1711221820260.3553@hadrien>
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

It could be possible.  It's a bit tricky due to ifdefs that Coccinelle
doesn't see and header files, but perhaps in special cases like this there
is not much worry.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1511370336.6989.100.camel%40perches.com.
> For more options, visit https://groups.google.com/d/optout.
>

