X-GM-THRID: 6211884889777635328
X-Received: by 10.28.216.206 with SMTP id p197mr831846wmg.3.1446318592264;
        Sat, 31 Oct 2015 12:09:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.91.195 with SMTP id p186ls279965lfb.28.gmail; Sat, 31 Oct
 2015 12:09:51 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr2905293lbb.17.1446318591665;
        Sat, 31 Oct 2015 12:09:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g9si265953wmd.2.2015.10.31.12.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 12:09:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,225,1444687200"; 
   d="scan'208";a="185377896"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Oct 2015 20:09:51 +0100
Date: Sat, 31 Oct 2015 20:09:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: interval_tree:
 Convert inline function to macro
In-Reply-To: <CAKHNQQEyJD+j+yNOGtsfZnTkjFcUBNxcAHsTjM=bJWqmb81hOQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1510312007450.2194@localhost6.localdomain6>
References: <20151031184544.GA27064@ubuntu> <20151031185300.GA8949@kroah.com> <CAKHNQQEyJD+j+yNOGtsfZnTkjFcUBNxcAHsTjM=bJWqmb81hOQ@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-2090568824-1446318590=:2194"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-2090568824-1446318590=:2194
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 1 Nov 2015, Shivani Bhardwaj wrote:

> 
> 
> On Sun, Nov 1, 2015 at 12:23 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Sun, Nov 01, 2015 at 12:15:44AM +0530, Shivani Bhardwaj
>       wrote:
>       > Convert the function max_u64() to macro because macros tend to
>       be more
>       > flexible than inline functions and here, the macro is going to
>       be type
>       > safe so there are not going to be any side effects.
>       >
>       > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>       > ---
>       >  drivers/staging/lustre/lustre/ldlm/interval_tree.c | 7
>       ++-----
>       >  1 file changed, 2 insertions(+), 5 deletions(-)
>       >
>       > diff --git
>       a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
>       b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
>       > index a2ea8e5..52d0afd 100644
>       > --- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
>       > +++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
>       > @@ -42,6 +42,8 @@
>       >  #include "../include/obd_support.h"
>       >  #include "../include/interval_tree.h"
>       >
>       > +#define max_u64(x, y) ((x > y) ? x : y)
> 
>       Ick, no, there is already a _correct_ macro in the kernel for
>       this,
>       don't try to create another one that does not work properly for
>       all
>       users.
> 
>       And your patch is also backwards, inline functions are better
>       than
>       macros, don't ever convert from an inline function to a macro.
> 
> 
> Alright. Thanks for explaining.

Inline functons have types, which help you find bugs.

Inline functions don't risk duplicating computations.  In your macro, if 
eg x is the larger value, then whatever x is replaced by will be evaluated 
twice.  Consider what would happen if x is eg i++.

julia
--8323328-2090568824-1446318590=:2194--

