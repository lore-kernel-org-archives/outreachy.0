X-GM-THRID: 6802257334372401152
X-Received: by 2002:a17:906:7a55:: with SMTP id i21mr8456023ejo.303.1583840844778;
        Tue, 10 Mar 2020 04:47:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:25ca:: with SMTP id n10ls8037938ejb.8.gmail; Tue, 10
 Mar 2020 04:47:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsW3CoVlwEEFO1xFNIT8oAjabgBHQHKehqlvkRg8Y7S4VhW0EYlp1m6piLD+k96i/yASdns
X-Received: by 2002:a17:907:4303:: with SMTP id nh3mr3381499ejb.24.1583840843621;
        Tue, 10 Mar 2020 04:47:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583840843; cv=none;
        d=google.com; s=arc-20160816;
        b=eWdY0dhEIsyjVSWD7Vu4EQNRdxZxmJvJtJrLJWB+uhwkLY0uQLFthZ+v87IOl6uUaM
         FdbQMcPE1fOJUDfNUDjgNsiqJapblUxRpDEHZfw5OfnpqvBHK3+krBz9yKHppY5jV5Ao
         P7vhHqlQxm6jc0jFV9IOJtizL64ODRqTudkrPt/2nUMLMLmQJ79QB8QRV8X5z5DUkysU
         ef0wFzI9Ix6dAFEzyYBP34TrU9S42nr7AMEBcdo2TmT7REHhBNqdMwEQNMXg2swS5R3q
         ORRiNIcuRYOwexXA+RpekKeabMIdqD1o+LL+wzilzqGjDn6HzHY3TAIM0FSmC98QWUJV
         f7TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wScApLMGfFUKZaqlp+jzPHhSVZ1o9RaCM1muTjkjOa8=;
        b=chuTQip8EBt7RV3paqo5GlPDmLFqJy7kPt4cbb6jkPUfAe/vsxrXeRs8KBr3zMq7Pj
         9qZChmWllRfW4GDR4Uxj6uYT7VWKOZMqGpRaTXQftWZMMl1Zfyx4g6Br6p+xXkIlcLcq
         vC4DE853JXv5l3q8/54CuzDcPQN5EPO0lI2RFM9Cfucd22vOT6BElHcyRBqyOligwTa5
         ed7Vk/TMPfgCOslOaq4xAwVkigccDWvvaqjEBhpAThvw67rYWFlobCkano4cDQvRI9Po
         pu6ssCpwu6Yb5g7OdmFWKcjyk5MkI5OpWqexD4/P38jgTlkiYvoHLWvyGHoVRi9TrYrQ
         zeYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=HKYNrzwK;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id dc25si132331ejb.1.2020.03.10.04.47.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 04:47:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=HKYNrzwK;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x542.google.com with SMTP id b23so7882838edx.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 04:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wScApLMGfFUKZaqlp+jzPHhSVZ1o9RaCM1muTjkjOa8=;
        b=HKYNrzwK+sxdLhGEckw8aVWKaq63OeArv21JOBhE6y3FSspTVX9uyvVFuUnQ9xwtxs
         iirkCPaZiRLawpa2I5M/Hf0NU2+b+jDxoz6j5d5XDBpWEi2k/bPF/1MKU7dsdYEq/lMg
         2J0AD3HoC7CwxRAF5AgGEcvtd6Iq2QXuRhzAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wScApLMGfFUKZaqlp+jzPHhSVZ1o9RaCM1muTjkjOa8=;
        b=sRGjaC2dM59cS9k6Sve6JNzMLOqQEvwESPirA5UkX4fwgI81DUH4kHl46BP/708FEK
         bCHpbjYuFpUtDBLPrhHp3QGV0nDI/MTbPg6Uh3rXYkt0WL6DcUfZ3UNcDFrttwa3KKeO
         d5/niF5xMWT+6UMj+Rx3eu8QclE/er5ysNDmuzCcvJFl2aF4Xm8yOinANqZmfOvTF2VM
         h6PTA9of7Ve945U8Yhx66FPpnFnotpIoCUCJaaRs+ku1npyeWuyqEaggAw5GQSG6rdi1
         nO+/iAUHhmHAZ6Z5ImdjCNO86zMLJzUGkhUcs+r4+vp1cHg5uTfTKedr3A4mrKdtcQmo
         Yr1w==
X-Gm-Message-State: ANhLgQ2n/bJQydLUjcCPztNRpT7xSZX4YzUGAyTsn8Sk/KFvg3OgM44A
	e29odfJJgSladJUYhYIHycx6h4tcux58qw==
X-Received: by 2002:a50:f602:: with SMTP id c2mr8207661edn.184.1583840843383;
        Tue, 10 Mar 2020 04:47:23 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id y10sm3370898edi.8.2020.03.10.04.47.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 04:47:22 -0700 (PDT)
Date: Tue, 10 Mar 2020 12:47:16 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	perex@perex.cz
Subject: Re: [Outreachy kernel] [PATCH] staging: hp: hp100.c: remove
 commented out code
Message-ID: <20200310114716.GA3202@supernova>
References: <20200309171224.5131-1-lu@pplo.net>
 <alpine.DEB.2.21.2003092208170.2324@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003092208170.2324@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 09, 2020 at 10:09:25PM +0100, Julia Lawall wrote:
> On Mon, 9 Mar 2020, Lourdes Pedrajas wrote:
> 
> > Remove unused code.
> 
> This could be a little more informative.  For example, you could use git
> blame to find out how long the code has been there.  If it has been there
> since the driver was introduced n years ago, that could be a useful piece
> of information to make clear that the code really is unnecessary.
> 
> julia
> 
I agree. This patch is being merged, but next time I'll use your hint,
it's useful. Thank you for your patience!

