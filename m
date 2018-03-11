X-GM-THRID: 6531387623906213888
X-Received: by 10.28.3.11 with SMTP id 11mr334520wmd.4.1520765749302;
        Sun, 11 Mar 2018 03:55:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.14.148 with SMTP id 142ls1101274wmo.11.gmail; Sun, 11 Mar
 2018 03:55:47 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuayCFQwNzMXVQ6g0PFxYldn0Yjwyg7NOU235dDOnLSQkZnhp3bp4ueUkn12fkTTWHnTxLE
X-Received: by 10.28.228.139 with SMTP id b133mr315037wmh.14.1520765747704;
        Sun, 11 Mar 2018 03:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520765747; cv=none;
        d=google.com; s=arc-20160816;
        b=X9/UVMvMW39w7E9Rx9W819K/izkGmRB10OkPClneNd3vfkBUdH4AsmbQflaRSrOzab
         1Z1DiiPwFoP1hoJReyV98w5cWOj0efhYiiYNPUQnJo/HedbgJgqPC4DPlKqMgnfJuzty
         SuBXslX3M0dmYL1d765/K0jQyd9WNUV7s9Hm8IO6UUbk/Uu4wc4vUA2V7RdJFGyLt2yi
         LGdJlT2YQNcr2L84ciGS3Y15ZQam4CfyYTiGRb8CrWV3I9blgc8ajTCGcGGAGEWPVL3t
         yed8q2RtH0iVdAuEnK/UZDnBti8G2YZE0gdJGdCQjBMaHUnA89qNrEbbRtvWN8DPMvK8
         fXjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=hn0ieZymWBg0qGvxpmhqO9BLtYxq+fGwwzhnm/0U/WE=;
        b=lIySAbDLDk+mZ0BBJnvmA6EX5TtDOWbc9RnR5OBce70mTRc0HJ0T58PABCTZtrYu79
         Sv8kKWz+vbK1g0kEXjPW6084vG0b+Q95e5rGXCbP9OeNtqHxy7xoKa8qDda3nutSE9aO
         nsy41RhbtVfraNcP6SQjp+ibdO5Xg6h/Klc3AKwkjEf0DPVeY+nPlzo92MNGiWPBHqUY
         V/SENguZ4Wl2p6fWVMZGKzsW5cbOmFCmiy1+UD89bQEvLG+4hLkD60HOfBwM88WOO70v
         34HQCEeH7QkMZGbqW/tWkrtZrJMa8DdXwAH9usVcHpCL0TCL+Cp3yrjMz+d5jwDKLeSf
         vSQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a01:7a0:2:106d:670::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Return-Path: <fw@strlen.de>
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a01:7a0:2:106d:670::1])
        by gmr-mx.google.com with ESMTPS id 51si200711wrw.0.2018.03.11.03.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Mar 2018 03:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of fw@strlen.de designates 2a01:7a0:2:106d:670::1 as permitted sender) client-ip=2a01:7a0:2:106d:670::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a01:7a0:2:106d:670::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.84_2)
	(envelope-from <fw@strlen.de>)
	id 1euydc-0003dB-OS; Sun, 11 Mar 2018 11:55:36 +0100
Date: Sun, 11 Mar 2018 11:55:36 +0100
From: Florian Westphal <fw@strlen.de>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Netfilter Developer Mailing List <netfilter-devel@vger.kernel.org>
Subject: Re: [PATCH Netfilter] net: netfilter: Replace printk() with more
 standardize output format.
Message-ID: <20180311105536.GD11882@breakpoint.cc>
References: <20180310183906.GA20125@seema-Inspiron-15-3567>
 <20180310191318.nworqblow4n4k2lq@salvia>
 <CA+XqjF_sDve4uztuXD478iOs9xSMqhUcHC5mHZ6O4u-8b-e9QQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+XqjF_sDve4uztuXD478iOs9xSMqhUcHC5mHZ6O4u-8b-e9QQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Arushi Singhal <arushisinghal19971997@gmail.com> wrote:
> I''ll resend the patch according your suggestions.
> 
> Just for curiosity wanted to ask why not netdev_*().

netfilter is not a network driver.

> > >               register_net_sysctl(net, "net/netfilter", table);
> > >       if (!net->ct.event_sysctl_header) {
> > > -             printk(KERN_ERR "nf_ct_event: can't register to
> > sysctl.\n");
> > > +             netdev_err(net->loopback_dev, "nf_ct_event: can't register
> > to sysctl.\n");

This claims that the error is related to loopback device.  Its not.

> > >                       if (!nskb) {
> > > -                             printk(KERN_WARNING "nf_queue: OOM "
> > > -                                   "in mangle, dropping packet\n");
> > > +                             netdev_warn(nskb->dev, "nf_queue: OOM "
> > > +                                         "in mangle, dropping

This now points at a random network device, but again
this condition doesn't have anything to do with a network device.

