X-GM-THRID: 6801966173715955712
X-Received: by 2002:a05:6512:6f:: with SMTP id i15mr10345832lfo.45.1583783141726;
        Mon, 09 Mar 2020 12:45:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:3cd:: with SMTP id f13ls1989114ljp.4.gmail; Mon, 09
 Mar 2020 12:45:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuhdC6wo2LYBLETGbFSpEW6BP/ACh1pkxiM68ER8Df4XG/wuIiMf2Ga4K0XOuhqCoWSFdME
X-Received: by 2002:a2e:a312:: with SMTP id l18mr1996750lje.229.1583783139647;
        Mon, 09 Mar 2020 12:45:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583783139; cv=none;
        d=google.com; s=arc-20160816;
        b=vLv0nzlNWH/ZqjYD860fd6V6NGBQQ8U0R8RpjyPy+qRfaOHY0LyjQFS/aUabACAIn4
         1mFwRUS3O+KcXcg7bUW7FkvgfGFV5cCJm2lbc2IVmW+sJtNzN75pF1hz6feEiRbNR/D1
         kkovzFfa2k/KT+1hoXLymno/DXH9iizZWVQxvKoKDd5LDSUGpMmBrnsOxRink7Nsmc8g
         gAR8fOYJkEFqF+kyugWts+D357d/jbtgJzRAQeG7BEn/KdtkUxSix9JpxzSrYNbWTQ3m
         O3W1elOJ7C4lYpT2SGA2tP1btbqGyIx0ZI0X0xRA84k5sn5hUbj74GuQsdNxthPmkNUK
         K4bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3WMDTP1Y/bfCNhT6ckcYt41+vi8RvqZAoPoJtqc+4Bk=;
        b=tMWTrgJBanyWJN61G07lf5m0PiXOX5ndei4BYjBpGcz5/1a+1Seb+8iRk5EVKWFs4n
         jg5M1139VZFjXTXcRiC96Xk/HjqeGouPoJsNNlxRfFDijBuBpm9Z4u6A64wZstNgfZEW
         ZSd+YDTLh1CHmZ5IZobcS/qZucz0joxx92XMGf1iNQKu0MjZ0vGHiiq/BZGg+cPvRTAa
         c6M2hPwa34TLZ7NgPjvQOaodK6xTYMGB4QS+jTt2FmI4bom9EP61KS2kg6W0pKHeqvab
         GFGt0jg9K9fjsBvxEEFMayivxRswcnhbG5D4p4CcCNaSnyw9V5QyZr4iLP7fenL3GlRU
         mYcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=hXCAY3mn;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t3si257141lfq.5.2020.03.09.12.45.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 12:45:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=hXCAY3mn;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x543.google.com with SMTP id g19so13406374eds.11
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 12:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3WMDTP1Y/bfCNhT6ckcYt41+vi8RvqZAoPoJtqc+4Bk=;
        b=hXCAY3mnfYLEVjOF7ymjnZ3eDvCWMKL0ujlBqAlpF9/7XIljHrPbTevTmKZftUejll
         vYTPQmC897DQPv+1bpZmHdKdQZrrg+E6WxX/WhYnL7IoC0WdJtTv8hTR3QUdNgE/H41J
         KdCSDeOS04xcNRlA/3ilogQIjp29g7csOaXOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3WMDTP1Y/bfCNhT6ckcYt41+vi8RvqZAoPoJtqc+4Bk=;
        b=BhOf4gzSKkKg1kJNF4UMLpk6j0i5KgR8+JxrSqhv4RMX+gpflB7OiD1BbU7UX9xDue
         BmE39+gQkK/Xq5u71V6ufU86z50NMTHCpLlVh3aVdrQrLSfM+RXmFP6bYGAWOmNyOLY0
         C6TAP+fBHZZqxQtZURmKNnEve26peYsKrW6A0tVhXF1s/x2Iyr6HHTe9ugPT9TojWOZ2
         /MzOzH3Od6C5NFEFqKznCyVVcotOzHkkxn9k6F05RgcSyyZo6pVQLbC2iQw6XgQoidYa
         YhbT7mPqk8J7qOBiQWTJgzZF+ccJ68SLNtPqNRKLXVA4qRmszLaVYMRoVpbUK1+Ompzr
         k60w==
X-Gm-Message-State: ANhLgQ2h6+eB2URCbNt130Fsna9wS8sXyPeidwpemGHgOGZVovkjlgP5
	ol3bCIW+YuyN+kV3Mr8Bpkc1TQ==
X-Received: by 2002:a17:906:bb04:: with SMTP id jz4mr16286977ejb.183.1583783137902;
        Mon, 09 Mar 2020 12:45:37 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id e25sm366434ejl.4.2020.03.09.12.45.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 12:45:37 -0700 (PDT)
Date: Mon, 9 Mar 2020 20:45:30 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Stefano Brivio <sbrivio@redhat.com>,
	Outreachy <outreachy-kernel@googlegroups.com>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove commented
 out function
Message-ID: <20200309194530.GA6565@supernova>
References: <20200308222218.16031-1-lu@pplo.net>
 <20200309125327.422a1807@elisabeth>
 <20200309162655.GA3949@supernova>
 <CAK-LDb+gx+c2oBaujvj8KSw8TvoRN=bKJTxEE_GZVHQVTZ8-cQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDb+gx+c2oBaujvj8KSw8TvoRN=bKJTxEE_GZVHQVTZ8-cQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 09, 2020 at 10:49:09PM +0530, Vaishali Thakkar wrote:
> On Mon, Mar 9, 2020 at 9:57 PM Lourdes Pedrajas <lu@pplo.net> wrote:
> >
> > On Mon, Mar 09, 2020 at 12:53:27PM +0100, Stefano Brivio wrote:
> > > On Sun,  8 Mar 2020 23:22:18 +0100
> > > Lourdes Pedrajas <lu@pplo.net> wrote:
> > >
> > > However, you should at least Cc: the maintainers returned by
> > > get_maintainer.pl.
> > >
> > Yes, I was about to ask because I read somewhere in kernelnewbies wiki that
> > Outreachy paths hould no be CCd to everyone in the get_maintainer.pl list,
> > but I was wondering if this was really correct. So thank you for the hint!
> 
> Hi Lourdes,
> 
> Could you please tell me which part of the kernel first patch tutorial says that
> no other email addresses should be CC'ed? I thought we had cleared the
> instructions under 'submit the first patch' part some rounds ago but given
> that the tutorial is quite big, we might have missed some part(s).
> 
Hi Vaishali,

My bad, I was in a rush to read the instructions and this line:

On the other hand, the maintainers of staging/vc04_services would prefer not to
be CCd on Outreachy patches.

In https://kernelnewbies.org/Outreachyfirstpatch confused me. I am so
sorry!

Lourdes.

