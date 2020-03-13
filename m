X-GM-THRID: 6802694026822680576
X-Received: by 2002:ac2:51b7:: with SMTP id f23mr1148810lfk.177.1584090291751;
        Fri, 13 Mar 2020 02:04:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:211:: with SMTP id y17ls1706383ljn.10.gmail; Fri,
 13 Mar 2020 02:04:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vstOi8R2KDwGAHD6PYk24xHQkN4oSL7iHYn1aGhoTljzfmFGxX/Wof9NzdMuYhNBbFDICBp
X-Received: by 2002:a05:651c:118b:: with SMTP id w11mr7873297ljo.80.1584090290236;
        Fri, 13 Mar 2020 02:04:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584090290; cv=none;
        d=google.com; s=arc-20160816;
        b=F8pCgE7F3uwHP2TXsXcqLp/hfIpI2AkouJpcLoegvPNJ8kss5w5VS2M5JRtDgwJtxe
         br8aWEEsxY4qXMWQ06I0jAssB39pKWMfHmYtVHGeT2qVoRQNbvWMPcpT1ckUdMzKXnKX
         +SRx2Vw8yGLYkyyQiOm1K2RrbfY0cwh9W6GB8YgYIOSG2D0rNHl4t1B8HcEpf4iL2BP1
         uCOc80QoEOYwPrSnV+go8Mfo9L+6dBslFtqJmQOHcXUkgTFJLmI8Vrz87avWoc7h/apv
         rksZl5fTzodGuh+U1PgCIsrP2yGAaN2bvaWFDLGH1BJDh+aBcl7h/CaKW8EKOgVykKso
         4rpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qBxIM9EhtWXSNRWZiGohLmL4eH+kXPp+6ot7YT2ZiQE=;
        b=zx1DOk6Xw7n9JZyuUMX/LQnRZ6gOMQ92dc+LR5oHrDMWcO0r2rYhCgnh5imQ01q7Wo
         uWxrbPagW54Hjsr7NHAtBlZ1SUDu4lFlZBb2/eXe7qZQ2iWwOQsGposnbjpk2HcYDUCZ
         Ag4b8uFSlZ+ykqsrenzgKnpVQVIpP2IaVkonO54SzXgcG7VuzSgyFB+hETh2YLS+iCBN
         UWU+L8qSykCyyz5MzDJG9gwAzvD0f8AoBM08IcB7ZsGFh4oh4VMgq/ofLT6XGyy1eZlY
         tVLGxAEGhKLi7YhAL8aHzS2ltXNCv/PdDYsZVCSG4qkhbtf9l6T8rv7wcVovxKpQcdIE
         398w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Jn4t3sPP;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id s8si468112ljg.0.2020.03.13.02.04.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 02:04:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Jn4t3sPP;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x343.google.com with SMTP id z12so197672wmf.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 02:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qBxIM9EhtWXSNRWZiGohLmL4eH+kXPp+6ot7YT2ZiQE=;
        b=Jn4t3sPP7+RIb5x1S4hs2mJDW5Ofyv3nF09ndH1lYwQKbiPs5QWW8ggiyUmD16gaoo
         cFj6BrrFyDPNWy4tnRRlLZ2fbc7O+QEMuKHFnp1CyAnEI9n9T+vn8ftFkxoVXY+qBubF
         9/m+2p5yai5AquQ1q0MF7NMGWZToTZlV32doI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qBxIM9EhtWXSNRWZiGohLmL4eH+kXPp+6ot7YT2ZiQE=;
        b=LRM+DynF81/VAkWnoa1gesBKx5gUrWCc5uuyyAe8BsurDJdZFIczvN95QVxM3XYgrC
         DI0wVMa3oBwqiXUx9E1bwpZ9bNxXtsS94f64bqHOKXsmDgnM/o01Mwl7b1uOvvHIo+q8
         sfFDmCWv1YKvDAdl46LnO4lLd+U6rk4bF2Cbq1pBvScbZIIcacfx86WoApEM6UHb9b/v
         9sBFcaYqeh8obbNhwO5l51BFTRsCM68Yda/QU88xZWkVRRE6ajQEtNZAInqLuWxwQJNc
         1KqPMX0DMCG+qPt1Sw5PTRsbAlWrhFo/LmeFGN2ZC0eu63GhPZZrwLhs1c+HC3wXu/o1
         MnqQ==
X-Gm-Message-State: ANhLgQ24Oqg+YD76OKo4frJnEb9hmI1raGfQLAcve97ds2TA/AiP0ryh
	ynqp2BqNUOmG1Nr2RFIORvrfdw==
X-Received: by 2002:a05:600c:218f:: with SMTP id e15mr10373603wme.152.1584090289229;
        Fri, 13 Mar 2020 02:04:49 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id o10sm32167920wru.38.2020.03.13.02.04.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 02:04:48 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:04:40 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v5] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
Message-ID: <20200313090440.GA3844@supernova>
References: <20200312210540.9381-1-lu@pplo.net>
 <alpine.DEB.2.21.2003130803300.2355@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003130803300.2355@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 13, 2020 at 08:04:44AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 12 Mar 2020, Lourdes Pedrajas wrote:
> 
> > printk() is deprecated, use netdev_warn() instead, which is a message printing
> > function specific for network devices defined in include/linux/netdevice.h.
> 
> I still don't think that "defined in include/linux/netdevice.h" is
> necessary.  It's a well known function, and anyway if I don't know what it
> is, then grep or elixir is sufficient to find the definition.
> 
> julia
> 
Indeed, I am so sorry. Thank for your patience!

Lourdes


