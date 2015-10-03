X-GM-THRID: 6200357690588266496
X-Received: by 10.112.164.1 with SMTP id ym1mr3295225lbb.15.1443853123761;
        Fri, 02 Oct 2015 23:18:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.223 with SMTP id 92ls314949lft.101.gmail; Fri, 02 Oct
 2015 23:18:42 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr3406330lbs.18.1443853122590;
        Fri, 02 Oct 2015 23:18:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o5si65367wib.0.2015.10.02.23.18.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 23:18:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,627,1437429600"; 
   d="scan'208";a="180810368"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2015 08:18:42 +0200
Date: Sat, 3 Oct 2015 08:18:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: olpc_dcon: Replace timespec
 with ktime_t
In-Reply-To: <CAL7P5jKVpNLPA318dgyw=wnA0kBxaXkVjgBsRU+-cV2dq00K2Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1510030818271.2022@localhost6.localdomain6>
References: <1443806645-16504-1-git-send-email-ksenija.stanojevic@gmail.com> <20151003055909.GC4428@sudip-pc> <CAL7P5jKVpNLPA318dgyw=wnA0kBxaXkVjgBsRU+-cV2dq00K2Q@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1702266376-1443853122=:2022"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1702266376-1443853122=:2022
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 3 Oct 2015, Ksenija Stanojević wrote:

> Hi Sudip,
> 
> On Sat, Oct 3, 2015 at 7:59 AM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
> > On Fri, Oct 02, 2015 at 07:24:05PM +0200, Ksenija Stanojevic wrote:
> >> Struct timespec will overflow in year 2038, here it will not cause an
> >> overflow because it is used with timespec_sub, but still has to be
> >> removed as part of y2038 changes. Replace it with ktime_t. Also use
> >> monotonic instead of real-time by replacing functions getnstimeofday
> >> with ktime_get.
> >>
> >> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> >> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> >> ---
> >> Changes in v4:
> >>       -fix checkpatch.pl errors/warnings introduced by changes made
> > You missed one more checkpatch warning.
> >>        in v3.
> > <snip>
> >> +             delta_t = ktime_sub(now, dcon->load_time);
> >> +             if (ktime_to_ns(delta_t) > NSEC_PER_MSEC * 20) {
> >>                       break;
> >>               }
> > braces are not required for single statement if block.
> 
> I didn't know whether snould I change that or not, because that change is maybe
> for another  patch?
> Should I fix it  and resend?

I think it would be OK.

julia
--8323328-1702266376-1443853122=:2022--

