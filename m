X-GM-THRID: 6250021302893019136
X-Received: by 10.25.210.201 with SMTP id j192mr5667448lfg.6.1455206036633;
        Thu, 11 Feb 2016 07:53:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.72 with SMTP id f69ls252425lff.31.gmail; Thu, 11 Feb
 2016 07:53:56 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr5651117lbb.23.1455206036038;
        Thu, 11 Feb 2016 07:53:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 141si134933wmy.2.2016.02.11.07.53.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 07:53:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,431,1449529200"; 
   d="scan'208";a="202677807"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Feb 2016 16:53:52 +0100
Date: Thu, 11 Feb 2016 16:53:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tejun Heo <tj@kernel.org>
cc: Aybuke Ozdemir <aybuke.147@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: usleep_range is
 preferred over udelay
In-Reply-To: <20160211155049.GZ3741@mtj.duckdns.org>
Message-ID: <alpine.DEB.2.10.1602111653060.2508@hadrien>
References: <1455196470-4026-1-git-send-email-aybuke.147@gmail.com> <20160211155049.GZ3741@mtj.duckdns.org>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 11 Feb 2016, Tejun Heo wrote:

> Hello,
>
> On Thu, Feb 11, 2016 at 03:14:30PM +0200, Aybuke Ozdemir wrote:
> > @@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
> >  	 * Presumably, this is a bug in this UART.
> >  	 */
> >
> > -	udelay(10);
> > +	usleep_range(10, 100);
> >  }
>
> So, one important difference between udelay() and usleep_range() is
> that the former can be called from any context while the latter only
> from a blockable context as it's asking to be scheduled away.  These
> uart functions seem to be accessing hardware directly which usually
> indicate that they need to be synchronized somehow.
>
> grepping for flush_uart_ shows that these function are called under a
> channel_t->ch_lock spinlock, so this patch will end up triggering a
> sanity check in the scheduler and leave the kernel in a buggy state
> when the usleep_range()'s are called.
>
> Please don't forget to cc the original author or maintainer of the
> code being modified.

Actually, no, they should only write to the list.

Thanks for the explanation otherwise.

julia

