X-GM-THRID: 6250414434247770112
X-Received: by 10.112.162.101 with SMTP id xz5mr344199lbb.20.1455291772787;
        Fri, 12 Feb 2016 07:42:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.9 with SMTP id w9ls141172wmd.26.gmail; Fri, 12 Feb 2016
 07:42:52 -0800 (PST)
X-Received: by 10.28.129.210 with SMTP id c201mr450967wmd.1.1455291772328;
        Fri, 12 Feb 2016 07:42:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si94619wmd.1.2016.02.12.07.42.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:42:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="164498147"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 16:42:51 +0100
Date: Fri, 12 Feb 2016 16:42:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: rtl8192u: ieee80211:
 rtl819x_BAProc: Replace MSECS with msecs_to_jiffies
In-Reply-To: <CA+5yK5FqSaMvdFCXthhWODoVmkgsNcXx-PP0TTMidYsBZMs0-w@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602121642330.2510@hadrien>
References: <20160212144011.GA1274@amitoj-Inspiron-3542> <alpine.DEB.2.10.1602121600160.2510@hadrien> <CA+5yK5FqSaMvdFCXthhWODoVmkgsNcXx-PP0TTMidYsBZMs0-w@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 12 Feb 2016, Amitoj Kaur Chawla wrote:

> On Fri, Feb 12, 2016 at 8:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>       pBA->bValid = true;
> >>       if(Time != 0)
> >> -             mod_timer(&pBA->Timer, jiffies + MSECS(Time));
> >> +             mod_timer(&pBA->Timer,
> >> +                       jiffies + msecs_to_jiffies(Time));
> >
> > I think that the call would fit on one line.
> >
> > julia
>
> Yes it does. I assumed it wouldn't. My bad.
>
> Is this the only change required in this particular patchset? For the
> other patches, your suggestions seem to be best incorporated as
> separate patches?

I agree with you on that.

julia

