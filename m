X-GM-THRID: 6440502427589279744
X-Received: by 10.46.80.18 with SMTP id e18mr1750755ljb.10.1499582034068;
        Sat, 08 Jul 2017 23:33:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.199.69 with SMTP id x66ls765460wmf.18.canary-gmail; Sat, 08
 Jul 2017 23:33:53 -0700 (PDT)
X-Received: by 10.223.134.181 with SMTP id 50mr804545wrx.1.1499582033170;
        Sat, 08 Jul 2017 23:33:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1499582033; cv=none;
        d=google.com; s=arc-20160816;
        b=nn5L3LqtF2r8PiY9gePI/dJ3+qHtzqkofXT4go+HYE9LClIAbP4cDGH6hpQofzVa8o
         N2VJlsWaHhowK8SsPPlZyUfbPEEJWnnP2XllNIdILK1SB4MUqhjYIPxcf4xmq0GiYJZt
         Wfh/zWqXN+GiLtLsyyyT+buP1PVSgDYjeb5yBa6B0W/GkAdmIyAYunXoRX2oHqxzGhUq
         /weORFTR6RcRzlo055N+7Bc3Q3FpxDPrHLPi1sCWQfWgg+2vpf8DonJU+FCugDAFfUU9
         nFKZhEY7BUmWDWRmKeKOe+Fa3MO0G2EK030fT/pphWn4BF4MXQChr98E9kv0FcnpaOY0
         D51Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=NUl6bkpZFT39Yb2dyXzZ8EGpxm+gyMPcQHr5zkqeZ6c=;
        b=JMsoy+dlZQYQzQWx9PlzjEiDfZw++CUJZZxnSJ3ettev2PyqoWkCZq9EV5hZlwibbq
         simKi4RptVJTF6lNKu7OcKYEUh2+NZkLtvDVxfhv1dvD0tYkKOfb2YT0thxkM3daSqSK
         wyLO8So7+Ca3/rWvf1fca7RPC99z3lf1KdpEIFwAt/90w8cydJBJXAEU8SDm7nCnkm8G
         dC1LZYUozXKGy/SngwOzItFizUiQ81qZqfBn+rsFoTRkWH5BvOVh+rPxBTVGxV9TOMOt
         ooOpSLPPP8zmKpJToY5tiUpHvnihZ50PiRixjR3RL4S2sTkOl5m5G8rZZP3oTfxNBpAT
         m8oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j203si950452wmg.1.2017.07.08.23.33.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jul 2017 23:33:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.40,333,1496095200"; 
   d="scan'208";a="230957761"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jul 2017 08:33:52 +0200
Date: Sun, 9 Jul 2017 08:33:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Shreeya Patel <shreeya.patel23498@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Place constant
 at the right.
In-Reply-To: <20170709062002.GC8739@kroah.com>
Message-ID: <alpine.DEB.2.20.1707090833330.2229@hadrien>
References: <1499546306-4085-1-git-send-email-shreeya.patel23498@gmail.com> <20170709062002.GC8739@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 9 Jul 2017, Greg KH wrote:

> On Sun, Jul 09, 2017 at 02:08:26AM +0530, Shreeya Patel wrote:
> > Move constant to the right of a relational operator.
> > This coding style is more common for the kernel code.
> >
> > Problem found by checkpatch.
> >
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_btcoex.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> Is the outreachy application process happening right now?  If not,
> please send this to the proper mailing lists, this one isn't to be used
> for normal patch submissions.

Not until September.

julia

>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170709062002.GC8739%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

