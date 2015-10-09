X-GM-THRID: 6202772083227754496
X-Received: by 10.180.35.132 with SMTP id h4mr179436wij.5.1444419495504;
        Fri, 09 Oct 2015 12:38:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.12 with SMTP id s12ls342174lfs.90.gmail; Fri, 09 Oct
 2015 12:38:14 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr3001198lbb.13.1444419494750;
        Fri, 09 Oct 2015 12:38:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si7286wib.1.2015.10.09.12.38.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:38:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,659,1437429600"; 
   d="scan'208";a="182018447"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2015 21:37:58 +0200
Date: Fri, 9 Oct 2015 21:37:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtl8712: Remove NULL
 comparison
In-Reply-To: <CA+5yK5EEqAUCCBskLK2ne2B4zh03SV=hOsR3gBo5cTXx_JCXzg@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1510092135460.2001@localhost6.localdomain6>
References: <cover.1444194896.git.amitoj1606@gmail.com> <e9962700480ca8590bb9386ab0217b449fc4b8db.1444194896.git.amitoj1606@gmail.com> <alpine.DEB.2.10.1510080810460.2559@hadrien> <CA+5yK5EEqAUCCBskLK2ne2B4zh03SV=hOsR3gBo5cTXx_JCXzg@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 10 Oct 2015, Amitoj Kaur Chawla wrote:

> On Thu, Oct 8, 2015 at 12:41 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Wed, 7 Oct 2015, Amitoj Kaur Chawla wrote:
> >
> >> Remove NULL comparison by using '!' operator. Problem found using
> >> checkpatch.pl
> >> CHECK: Comparison to NULL could be written "!padapter->halpriv.hal_bus_init"
> >>
> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> >> ---
> >>  drivers/staging/rtl8712/hal_init.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> >> index 957f033..081f361 100644
> >> --- a/drivers/staging/rtl8712/hal_init.c
> >> +++ b/drivers/staging/rtl8712/hal_init.c
> >> @@ -382,7 +382,7 @@ uint rtl8712_hal_deinit(struct _adapter *padapter)
> >>  uint rtl871x_hal_init(struct _adapter *padapter)
> >>  {
> >>       padapter->hw_init_completed = false;
> >> -     if (padapter->halpriv.hal_bus_init == NULL)
> >> +     if (!padapter->halpriv.hal_bus_init)
> >>               return _FAIL;
> >>       if (padapter->halpriv.hal_bus_init(padapter) != _SUCCESS)
> >>               return _FAIL;
> >
> > Nothing to do with the patch, but _FAIL and _SUCCESS don't look like
> > standard kernel return values.  Maybe it is possible to improve this.
> >
> I've been checking about this but _FAIL and _SUCCESS are used in a lot
> of places as return values.
> What do you suggest?

_FAIL is 0 and _SUCCESS is 1.  In most of the kernel, failure is indicated 
by a descriptive error code, like -ENOMEM when some kind of memory 
allocation fails.  It's probably not practical to change the whole driver 
at once.  But perhaps you could find some functions that are only called 
from a few places, and make the change gradually.

julia

