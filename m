X-GM-THRID: 6200896862154653696
X-Received: by 10.194.156.193 with SMTP id wg1mr5955493wjb.3.1444107626158;
        Mon, 05 Oct 2015 22:00:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.165.199 with SMTP id o190ls554010lfe.60.gmail; Mon, 05 Oct
 2015 22:00:25 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr5874561lbp.24.1444107625578;
        Mon, 05 Oct 2015 22:00:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si513576wib.2.2015.10.05.22.00.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 22:00:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,642,1437429600"; 
   d="scan'208";a="181243313"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 06 Oct 2015 07:00:24 +0200
Date: Tue, 6 Oct 2015 06:00:23 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
In-Reply-To: <c6724038-bdcb-4813-b49b-22b9d8f5af2b@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1510060558150.3038@hadrien>
References: <20151002040637.GA41415@ubuntu> <alpine.DEB.2.10.1510020959500.2633@hadrien> <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com> <20151002102819.GD9346@sudip-pc> <775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com> <20151002125909.GB32540@sudip-pc>
 <71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com> <alpine.DEB.2.10.1510041457450.2661@hadrien> <20151006040800.GA30304@ubuntu> <c6724038-bdcb-4813-b49b-22b9d8f5af2b@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-492208883-1444107625=:3038"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-492208883-1444107625=:3038
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 5 Oct 2015, Shivani Bhardwaj wrote:

>
> Done. Seems like those folders didn't have much to compile, only one file whose dependencies were compiled.

Before you send a patch, at least check that you have a .o file or the .c
file that is affected by your patch.  You can also compile by saying make
path/to/file.o.  The only risk with that method is that it won't find
missing dependencies between files, if you eg change a function name in
one place but not everywhere that it is used.  But changes inside
functions often don't relate to that.  And with make path/to/file.o you
will see immediately if it is able to compile your file.

julia

> Thank you
> On Tuesday, October 6, 2015 at 9:38:25 AM UTC+5:30, Shivani Bhardwaj wrote:
>       On Sun, Oct 04, 2015 at 02:59:17PM +0200, Julia Lawall wrote:
>       > On Sun, 4 Oct 2015, Shivani Bhardwaj wrote:
>       >
>       >>>
>       >>> Hi Julia, Sudip! I think after I have used make allmodconfig,
>       >>> something is not working right. Now, when I use sparse, it shows
>       >>> messages and warnings for arch/ and include/ , is this dues to some
>       >>> change in configuration file? Please respond.
>       >>> Thank you!
>       >>>
>       > > Thanks, Sudip! And for last two messages I did make use of mutt, I don't
>       > > know why doesn't it show up.
>       > > And, does this mean that every time I compile, I must use allmodconfig?
>       >
>       > You have top posted again.  Once you make allmodconfig, it should be good
>       > enough to leave it as is, at least until you update your kernel and get a
>       > new Kconfig file.
>       >
>       > julia
>       >
>       > > Thank you
>       > >
>       > > On Friday, October 2, 2015 at 6:29:15 PM UTC+5:30, Sudip Mukherjee wrote:
>       > >       On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj
>       > >       wrote:
>       > >       > Hi Sudeep! I'm having trouble with inline mode of
>       > >       communication, I think
>       > >       > I'm doing it wrong. I'm not getting exactly difference between
>       > >       top-post and
>       > >       > inline way, I've been warned about this before as well. I'll
>       > >       learn as soon
>       > >       > as possible. I've sent my .config file. You can check it.
>       > >       Ok, now I understand why you are getting the warning. :)
>       > >       In your .config CONFIG_STAGING_BOARD is not selected. So
>       > >       staging/board
>       > >       is not included in the build and as a result the modules on
>       > >       which board
>       > >       is dependent are also not built. So in this scenario when you
>       > >       try to do
>       > >       make M=drivers/staging/board it gives warning. To test properly
>       > >       try with
>       > >       make allmodconfig.
>       > >
>       > >       regards
>       > >       sudip
>       > >
>       > > --
>       > > You received this message because you are subscribed to the Google Groups
>       > > "outreachy-kernel" group.
>       > > To unsubscribe from this group and stop receiving emails from it, send an
>       > > email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > > To post to this group, send email to outreachy-kernel@googlegroups.com.
>       > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/71611fa2-5d15-4032-bd55-
>       > > b7991ea55a5b%40googlegroups.com.
>       > > For more options, visit https://groups.google.com/d/optout.
>       > >
>       > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c6724038-bdcb-4813-b49b-22b9d8f5af2b%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-492208883-1444107625=:3038--

