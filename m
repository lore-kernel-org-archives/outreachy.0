X-GM-THRID: 6803797661564534784
X-Received: by 2002:a17:906:2450:: with SMTP id a16mr3209013ejb.348.1584218552299;
        Sat, 14 Mar 2020 13:42:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1e42:: with SMTP id i2ls7750224ejj.1.gmail; Sat, 14
 Mar 2020 13:42:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvO5zoukA7aDs8hkWI8P4DNKpnFaCCTeq6Xvd7ilKP/CzRkmItIUwdEtLgd+0ki14cK4YCX
X-Received: by 2002:a17:906:845:: with SMTP id f5mr17402000ejd.381.1584218551002;
        Sat, 14 Mar 2020 13:42:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584218550; cv=none;
        d=google.com; s=arc-20160816;
        b=BoJJbSeo/nCVVMADiOE8+aRTAjQyzbKzKh74D6KLVZI1Iw/j0Nx9GYfx3XRJHEaObp
         Xu5eL6sTZ8Z6A1JD05S3cNHCY+qlMZ8yMGZOLW1+Si5uq92aUwUoVpxF8ScjUVobvZit
         cjPTpznsHMwYUjBEoaPip0AfSCbQp0BQq7I2RZSwlt+32IuYmQ6J+4EoBqBhYNxyynFd
         3p9xazuTcwy+mtXrlfmosPXGK4MejimetJipd1BvQQyOa5qrygN2TA3RnvXiIrFLP1Z5
         1PfbFYYv4teLDPmAhXFGksHVCzim/AyEULda99hsvRdIAfo3+wSlzIE7k8IZBRL/5grG
         /SZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Fuu5piAXn1MHog3RygRdR2Xxvyp4w9A9wSRjmMkf4Hs=;
        b=d5m3VKVwGH2jUIJAmZg0mL4otIZok2eACy/qE9MAZFwx3x3+wmgo2aAdKC4x1dKLVl
         obEC4N6tQkFcALYr/MIQFDnLw8eegVHMiMcYBOST3jMha2Kog7Z96xOq9UAWWQtgG+Tl
         BZmm/WinK4ZBcHBpGJvZ7ztL9jJfoGR7imNNTRG7LDeDS/W25/Caqpy/nyDTFMr2jfSC
         X/fRkM9sOhF/ngKtfJvlGAaI9a3Ck+ga5ZEiUoWbhVYBwJ/z0g5/o9P8qKBNSHxwTH0s
         3GckZGHpCDTfo8oBVw+LT776WQerxf+hkOgeYZORCgXMdgnpRzqWhrScQuUcXDlvI/DK
         zZMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TX0+wSgh;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x7si426818ejw.0.2020.03.14.13.42.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 13:42:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TX0+wSgh;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id y2so985106wrn.11
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 13:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Fuu5piAXn1MHog3RygRdR2Xxvyp4w9A9wSRjmMkf4Hs=;
        b=TX0+wSghRRmIRGz1JcZX2u+MxawY5NXdMdImpW8z8qq2X4TnyzgZigupwKJYm4ATBE
         kEDAjrGa2e/nbxweeboj+pc2ymC5zlk8WgFBSuPIIEem/ZMqaYO7wVJ02mohpAuW91oX
         /qhDtQp9c2gLxMHeRzcYbOlkF/yBMpf4q3fIw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Fuu5piAXn1MHog3RygRdR2Xxvyp4w9A9wSRjmMkf4Hs=;
        b=IfDg2v31iUO1kPsEvRJiGpN81djDutVAOFKeYUAlZslkFAG2NwXbOzVwLuSHmSKXP+
         ZCAX5sJ1pfHJXuncIAaS5KtGZb5RoAYk6U8SjctZGQuzf0xzR/BvmSq8uPykB3Yvx09A
         k6nYhcPRRboxJaQAJVy4ePp+D8Krqtg7exUX5IP5Rauy3ZGYeZK/097YEXcLpNIhIj+r
         q+w8wg9Y+w7StGy+iYuHxoM8DcsT+5Hh4kLhftqIEvDnj7WrlGH4fRP8oLAfIrmT0Ag7
         fXJ0j54jA4+K7EHh9X9kqSgtXnnBtyeJACYd5O/h/aQ85Ao2rCgciDDX/tVXpCaJUHIv
         Ot8Q==
X-Gm-Message-State: ANhLgQ3Un9o+QXU/qq7T+G8/KuuET8mQNL/TBBo6edkpXDs4mJxOe3Oo
	uD0MyAGr9rojD5DM5q/zv3+TWA==
X-Received: by 2002:adf:cc85:: with SMTP id p5mr25235744wrj.196.1584218550709;
        Sat, 14 Mar 2020 13:42:30 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id c26sm22013946wmb.8.2020.03.14.13.42.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 13:42:30 -0700 (PDT)
Date: Sat, 14 Mar 2020 21:42:21 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, rmfrfs@gmail.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org, vireshk@kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: greybus: gpio: improve
 bit fields formatting.
Message-ID: <20200314204221.GA4723@supernova>
References: <cover.1584131593.git.lu@pplo.net>
 <88c5f940009f75813f026ebad57fc8865b242971.1584131593.git.lu@pplo.net>
 <alpine.DEB.2.21.2003132203090.2355@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003132203090.2355@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 13, 2020 at 10:03:23PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 13 Mar 2020, Lourdes Pedrajas wrote:
> 
> > Fix the formatting of bit fields on structure gb_gpio_line, in order to
> > not confuse them with unindented labels.
> 
> What do you mean by unindented labels?
> 
> julia
>
I am sorry for this error! Corrected now thank you Julia!
Lourdes

