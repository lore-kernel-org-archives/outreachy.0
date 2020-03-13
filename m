X-GM-THRID: 6803014756528553984
X-Received: by 2002:a05:6512:308d:: with SMTP id z13mr7561014lfd.74.1584092451266;
        Fri, 13 Mar 2020 02:40:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4bd6:: with SMTP id y205ls1202646lfa.8.gmail; Fri, 13
 Mar 2020 02:40:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt03xa+a+nVTnc2+pGBsgMHwYRBm6/izjWo7Jm9B0l23YJ9fiWTX7r8FFOFEAyCELLqw+Dc
X-Received: by 2002:ac2:4c18:: with SMTP id t24mr7966675lfq.54.1584092449721;
        Fri, 13 Mar 2020 02:40:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584092449; cv=none;
        d=google.com; s=arc-20160816;
        b=TJkWFgvd/1IlQ4cd8rKibVn1T9IH66w6poahdzQLENLospZIkyCqS7s6LMHspfmJL5
         OG9Esh5pzLZ2+VY/ivELpXjY2Bg4AkxWCJtYI0eO21tRjtrg+1eeqOM+U4lsplq+8s5Y
         z2cC99JHQptF0bPKp6mK2yM99PJUOoWx03E/mjXFrqiQvB1X+dbjm2KQ1iFGyW54rwcX
         it9tAWeBt4EdVzcUfNgPKfhwm29v3U6gvwC9GtskzlJH2aLDjl4hKePbnFUqk9OidAZo
         GpDJNttwppji+J6afjADp97wDrpJRP+i5F7VWfDkEkG4RIZPmZgHxWiaGUZpHrG9c+nT
         gAdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=giY8zgjj0xJ3m1gV8wvRRnF6D+jc8BeA00OiTqMtFZo=;
        b=ov3hO+f0KZhjLALTMDPgyB43JDSr8/Jv6Qb/xv7oUrQ8mqeTLP3WhDTumewKOqBnZI
         UYRHWK6xwpkbHPsQcqSQhLsas3Exa8AiAoIT9TPci4qayO1b+83clVYIn3Zhim8y3B8M
         BH6rsik/7QnYqGvwXsljHUgB6jkfT8zw+eAmqY6NAC/oZgUyns1MydFdF2Gg+mcntuyC
         N/7TIbKKr3DJ5X9XxXWV2jfqKxWZmPdbW/McLPbYrJEnajtOw83DO0v+LK4+Kn4dJU9U
         lJIQQda6afmBDueh+D/6j0C3UviYLHE3UKImVhu0F2dDygNbiq6NiD5uAtG5QDcRaeM/
         7nvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="BDnII/tk";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m11si205386ljj.2.2020.03.13.02.40.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 02:40:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="BDnII/tk";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x544.google.com with SMTP id a20so11124090edj.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 02:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=giY8zgjj0xJ3m1gV8wvRRnF6D+jc8BeA00OiTqMtFZo=;
        b=BDnII/tkYEiJ6W7+buYwJjxGtMi3jt3TL1mEFATahBaAMfbWsZcVlzgOlm1aogRLjW
         w9+AsVuOoWmylzBpXx9ZL7U/W+pqjgbReETKBoTpJgjq7HxLNHeL28b1peh4n0HW3y5z
         2wIrkgXi3CGdogeconKK46W/XAOoR61ld1kSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=giY8zgjj0xJ3m1gV8wvRRnF6D+jc8BeA00OiTqMtFZo=;
        b=TBi2sxDYmiJCC2Peee8cZZucjyHu7kIwc0K3zOnkF6ZpjksMYe70jSaKgntWOxJUpm
         R3Y/z45kBhQL7pB+/N5Rgp6Ld7qUbzF9T/QotH/JIMyZJ/6CbA9giOsbhOJhA6rJbO1o
         0ra+8c+WmYd0S0Wo9LsZqEuL1ujLsMAUS68m9ikkqXHeg+jXgXY+fouYdOkRGSPf4UNR
         7QDpssTTlcsor3rvxdeqwSbj9pPN8GDDMqRW8L/3sHVhEqeoQBuLW6zMwvHW8mI2KlZ6
         bR/YcUCnZxk3+2OoQk1266C0ng+tDz5y4hTRBBbzvwnV5NJSN0eUyd5ua4mXfaqgmE0z
         9kVA==
X-Gm-Message-State: ANhLgQ3L4TgW/YaKYDMLaNoZIjTwTQmi3ldjlU/DmnnzJvanm0ullcZa
	Q0BsrVF/bgWZzV7wyYXSb41lKMEjijjZ/w==
X-Received: by 2002:a17:906:34d3:: with SMTP id h19mr10944611ejb.22.1584092449270;
        Fri, 13 Mar 2020 02:40:49 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id i13sm524562edt.71.2020.03.13.02.40.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 02:40:48 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:40:46 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200313094046.GB3844@supernova>
References: <20200311181134.GA17847@supernova>
 <20200312002348.06821daa@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312002348.06821daa@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 12:23:48AM +0100, Stefano Brivio wrote:
> On Wed, 11 Mar 2020 19:11:34 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> > Hello, I compiled Coccinelle successfully but maybe I am not getting it.
> > In order to try it in drivers/staging I ran e.g.:
> > 
> > make coccicheck MODE=patch M=drivers/staging/android/
> > 
> > and then got:
> > 
> > coccicheck failed
> > make: *** [coccicheck] Error 255
> > Makefile:1740: recipe for target 'coccicheck' failed.
> > 
> > Also tried some modifications of the command, read this documentation:
> > https://www.kernel.org/doc/html/latest/dev-tools/coccinelle.html and searched
> > how to use it, but nothing did help.
> > 
> > Only when I ran make coccicheck MODE=patch over entire sources it
> > produces some good results, but eventually I got
> > 
> > coccicheck failed
> > Makefile:1740: recipe for target 'coccicheck' failed
> > make: *** [coccicheck] Error 255
> 
> Can you share a bit more output? What comes before that?
> 
> -- 
> Stefano
> 

Hi Stefano,

Indeed, this is all the output: (this command is run in the sources root
directory)

make coccicheck MODE=patch J=8 M=drivers/staging/android/

Please check for false positives in the output before submitting a patch.
When using "patch" mode, carefully review the patch before submitting it.

coccicheck failed
Makefile:1740: recipe for target 'coccicheck' failed
make: *** [coccicheck] Error 255

Maybe I should try to use the distribution package instead? The
compilation wasn't smooth either, it gave me some autoconf errors I eventually
solved. However, if I run this command to compile all sources, it works, prints
some patches for the drivers/ directory in the standard output, but after a
little (and before descending to drivers/staging/ directory), it gives the same
error (I will skip some output and only copy the last patch it produces):

make coccicheck MODE=patch J=8

Please check for false positives in the output before submitting a patch.
When using "patch" mode, carefully review the patch before submitting it.

... (output skipped - various patches)

diff -u -p a/drivers/s390/crypto/zcrypt_ep11misc.c b/drivers/s390/crypto/zcrypt_ep11misc.c
--- a/drivers/s390/crypto/zcrypt_ep11misc.c
+++ b/drivers/s390/crypto/zcrypt_ep11misc.c
@@ -195,11 +195,10 @@ static inline struct ep11_cprb *alloc_cp
        size_t len = sizeof(struct ep11_cprb) + payload_len;
        struct ep11_cprb *cprb;

-       cprb = kmalloc(len, GFP_KERNEL);
+       cprb = kzalloc(len, GFP_KERNEL);
        if (!cprb)
                return NULL;

-       memset(cprb, 0, len);
        cprb->cprb_len = sizeof(struct ep11_cprb);
        cprb->cprb_ver_id = 0x04;
        memcpy(cprb->func_id, "T4", 2);
coccicheck failed
Makefile:1740: recipe for target 'coccicheck' failed
make: *** [coccicheck] Error 255

Maybe I am not using the command properly? I searched how to do it and
didn't get it, sorry :(

Thank you for your help!

