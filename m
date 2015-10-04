X-GM-THRID: 6200896862154653696
X-Received: by 10.112.54.197 with SMTP id l5mr4227541lbp.21.1443963561909;
        Sun, 04 Oct 2015 05:59:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.75 with SMTP id n11ls651332wik.50.gmail; Sun, 04 Oct
 2015 05:59:21 -0700 (PDT)
X-Received: by 10.180.188.211 with SMTP id gc19mr1486502wic.6.1443963561481;
        Sun, 04 Oct 2015 05:59:21 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si224412wib.1.2015.10.04.05.59.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 05:59:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,633,1437429600"; 
   d="scan'208";a="180981221"
Received: from smb-adpcdg2-06.hotspot.hub-one.net (HELO [10.110.7.161]) ([213.174.99.140])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 14:59:20 +0200
Date: Sun, 4 Oct 2015 14:59:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
In-Reply-To: <71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1510041457450.2661@hadrien>
References: <20151002040637.GA41415@ubuntu> <alpine.DEB.2.10.1510020959500.2633@hadrien> <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com> <20151002102819.GD9346@sudip-pc> <775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com> <20151002125909.GB32540@sudip-pc>
 <71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 4 Oct 2015, Shivani Bhardwaj wrote:

> Thanks, Sudip! And for last two messages I did make use of mutt, I don't
> know why doesn't it show up.
> And, does this mean that every time I compile, I must use allmodconfig?

You have top posted again.  Once you make allmodconfig, it should be good
enough to leave it as is, at least until you update your kernel and get a
new Kconfig file.

julia

> Thank you
>
> On Friday, October 2, 2015 at 6:29:15 PM UTC+5:30, Sudip Mukherjee wrote:
>       On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj
>       wrote:
>       > Hi Sudeep! I'm having trouble with inline mode of
>       communication, I think
>       > I'm doing it wrong. I'm not getting exactly difference between
>       top-post and
>       > inline way, I've been warned about this before as well. I'll
>       learn as soon
>       > as possible. I've sent my .config file. You can check it.
>       Ok, now I understand why you are getting the warning. :)
>       In your .config CONFIG_STAGING_BOARD is not selected. So
>       staging/board
>       is not included in the build and as a result the modules on
>       which board
>       is dependent are also not built. So in this scenario when you
>       try to do
>       make M=drivers/staging/board it gives warning. To test properly
>       try with
>       make allmodconfig.
>
>       regards
>       sudip
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/71611fa2-5d15-4032-bd55-
> b7991ea55a5b%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

