X-GM-THRID: 6744449794270298112
X-Received: by 2002:a05:600c:2049:: with SMTP id p9mr16684642wmg.30.1570361051180;
        Sun, 06 Oct 2019 04:24:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e90e:: with SMTP id f14ls4107377wrm.7.gmail; Sun, 06 Oct
 2019 04:24:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxom13irB1mVZrwpmQ+45+qT/4vdBFQkP9s6o1OZVZn74nD8MYCBT8Fx//3Np44kKlyG9Zb
X-Received: by 2002:adf:fb11:: with SMTP id c17mr19572424wrr.0.1570361049855;
        Sun, 06 Oct 2019 04:24:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570361049; cv=none;
        d=google.com; s=arc-20160816;
        b=wdaIM6+UvAYaPdsnJj/bBUbuTrJ58sp8sNEsR9MJglwGocyeeeHr8UaTe5gZH8vOId
         u0a4KxW2/SUZfV8g4hf22XThW4Yd6lWNTGohBAv3LxXtyxDxvdfQFXWF8efqKBhR4MPE
         ML1RZenpaojLAoi1sjC7xOIG7UuGlGtBe7XoS3yU5qP7mcPBgfxvk+vAIPM4TD2XBR08
         2YscDDZ8KgyTMmz7tTIhrQHY2JvAKdrl4NPGlv/uTCg155HeWUOQy36l1B3GSgtT/j5R
         pXTv8tyx/RdHc3xKEYFkdPRwxFdNejyrls5z5vTjyHa01OqxJYL4n73FoNNb2J2p+53h
         wOag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JzjXsiXZaCo5yxHgj2wseNPFBhT4I627FcCE4/oVkvM=;
        b=ZBYuTLQWa8MWOlTsdG/pOFxhwk5k48ZPkW3YZ3AIamiyvlxb/NMpxys2Jl//qeTxi+
         Vf4zj+lqM8TlWVQ1iCDTvANYFi6xKvEdhY1mgHO9zqLHHV9/SlgbFMvsIseXfnoKF6ZZ
         ao2oEVvF92lSDRauWqM/JoLKGehKxrawiqP1/YSU5k+tjVgYMbbSIIOhTKiCrlkFQ7O9
         cYeF0trm5EZa/9+V8dil9jBeBWM6gaXrUxc3xUtLEWnSCi/ZTEYRVpWf/mkoHBVVh3vm
         hJxeaPDsXRXqfQFZKlxszfiet1mC8c/raePJPrMqnAaxbLtU0viAhFNg/DunoOrRt77N
         3+AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u15si739126wmc.1.2019.10.06.04.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 04:24:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,263,1566856800"; 
   d="scan'208";a="321762246"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2019 13:24:08 +0200
Date: Sun, 6 Oct 2019 13:24:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    Gabriela Bittencourt <gabrielabittencourt00@gmail.com>, 
    outreachy-kernel@googlegroups.com, johan@kernel.org, elder@kernel.org, 
    greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: greybus: add blank line
 after declarations
In-Reply-To: <2ed3bf96312dbd9abcd626868ce84e01a066b201.camel@perches.com>
Message-ID: <alpine.DEB.2.21.1910061322070.2515@hadrien>
References: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>  <20191006095042.GA2918514@kroah.com> <2ed3bf96312dbd9abcd626868ce84e01a066b201.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 6 Oct 2019, Joe Perches wrote:

> On Sun, 2019-10-06 at 11:50 +0200, Greg KH wrote:
> > On Sat, Oct 05, 2019 at 06:00:46PM -0300, Gabriela Bittencourt wrote:
> > > Fix CHECK: add blank line after declarations
> []
> > > diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> []
> > > @@ -24,6 +24,7 @@ struct gb_control {
> > >  	char *vendor_string;
> > >  	char *product_string;
> > >  };
> > > +
> > >  #define to_gb_control(d) container_of(d, struct gb_control, dev)
> >
> > No, the original code is "better" here, it's a common pattern despite
> > what checkpatch.pl tells you, sorry.
>
> Statistics please.
>
> I believe it's not a common pattern.

I get 464 that have a blank line before the container_of #define and 185
that have no blank line.

Of the 464 that have a blank line, 135 contain clk in the file name.

julia

