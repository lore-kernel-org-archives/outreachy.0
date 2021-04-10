X-GM-THRID: 6949457058068430848
X-Received: by 2002:a05:600c:2945:: with SMTP id n5mr18308397wmd.42.1618061086159;
        Sat, 10 Apr 2021 06:24:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5348:: with SMTP id t8ls454431wrv.2.gmail; Sat, 10 Apr
 2021 06:24:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzduJxWOHXkhXPWSqlvFHtLUpfRw2fDkMy1A48RIAWIkgWyrlAZXjQLb6ndCqcoQX3re/gB
X-Received: by 2002:a5d:5047:: with SMTP id h7mr23143936wrt.111.1618061084662;
        Sat, 10 Apr 2021 06:24:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618061084; cv=none;
        d=google.com; s=arc-20160816;
        b=s0NK2oJmbjjXvuxcE0LijJwDTQ52Lhw1DDx2Y2o77CReS69j1nR/y8xCW6Mk5RHv3x
         0yy00QzXy0sQRxsNOq0M1eKMFdJe7imFVRBKquw0ZeoK5M5/7fw3jVwtJmV6ioK7UI39
         /z+tflXiDBL0XSs4UloVHFqn45knevDjDMLaPoIxEe19tZi2toXc7fH7UWEN8TGbSWHx
         FrJ0up30V38Crpk/v9xqpU4bKMkt41suBvcD+jmf8m2KaCNz2ikklKuXrwKa4fekJY9B
         sHyCyCeognSsqNT1Z3vQQOZFEt05zrKf9uuS/LwGr35GV9y/rrljT4jCGuJdUt+ULOsO
         /g3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=mha4v7/MjCK+qKEHH41hSdViHSA8a0ObR1kNhzG6XGM=;
        b=U26t9BWvwFDhHymLCa7+oNwDYuju8tfgbXrY94U9bolQWN75eeRwO14WpXxLNXw47u
         iUPIVCqxnDjcNfzNjPVaSynisd9+0Xa27vNz5XFLYFaIH3+Mutp4+3nAIocNmWjj6r4f
         yM3ZrYhOr16KOWLCowwiwi/5SxPGC1kL4JUEX2JKoztRg+o9E06NoTgvsM2ubnJrUKzd
         f2KogGX62ckUsAcCYgVYkxFQnjqUJHDDqHHQJFI+9nQYQohul5Eiz7Pz5Jrfk5QbyPER
         bcjqV/VXN/kSgUHTJAhiPq35jJVFuDc/Ffl3L3Bipc5fOx7PmX3ZyhklS4jjj19gqnS0
         vWTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p20si522466wma.0.2021.04.10.06.24.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:24:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ABdwoz6MqyiEZXMBcTiCjsMiAIKoaSvp033AA?=
 =?us-ascii?q?0UdtRRtJNvGJjszGpoV+6TbYgCscMUtKpfmuI6+FKEm3ybdU5s0rMa6mTE3avg?=
 =?us-ascii?q?KTTb1KyavH73neFzbl9uhbvJ0QFpRWLNHrF1B1gYLbzWCDc+oI+9WM/KC2ieq2?=
 =?us-ascii?q?9R4EcShQZ65t9At/AAqAe3cGJzVuP4YzF5aX+6N8yQaIRHJ/VKiGL0UeU/OGj9?=
 =?us-ascii?q?PGk4+OW29lOzcXrDjLtz+u5bLgeiL04j4VWVp0rosfzQ=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378286961"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 15:24:44 +0200
Date: Sat, 10 Apr 2021 15:24:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
In-Reply-To: <2186059.xkuF2sVEJi@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104101524260.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <2763630.ZYQqkGPH9U@localhost.localdomain> <alpine.DEB.2.22.394.2104101410350.2975@hadrien> <2186059.xkuF2sVEJi@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:

> On Saturday, April 10, 2021 2:12:28 PM CEST Julia Lawall wrote:
> > On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:
> > > On Saturday, April 10, 2021 1:37:30 PM CEST Julia Lawall wrote:
> > > > > That variable has global scope and is assigned at least in:
> > > > What do you mean by global scope?  None of the following look like
> > > > references to global variables.
> > > >
> > > > julia
> > >
> > > I just mean that fw_current_in_ps_mode is a field of a struct in a .h
> > > file included everywhere in this driver and that the functions whom
> > > the following assignments belong to have not the "static" type
> > > modifier.
> > OK, but a field in a structure is not a variable, and this is not what
> > scope means.
> >
> You're right, a field in a structure is not a variable.
> >
> > int x;
> >
> > outside of anything is a global variable (global scope).
> >
> > int foo() {
> >   int x;
> >   ...
> > }
> >
> > Here x is a local variable.  Its scope is the body of the function.
> >
> > int foo() {
> >   if (abc) {
> >     int x;
> >     ...
> >   }
> > }
> >
> > Here x is a local variable, but its scope is only in the if branch.
> >
> And you're right again: I needed a little refresh of my knowledge of C.
>
> I've searched again in the code for the purpose of finding out if that
> struct is initialized with global scope but I didn't find anything. I
> didn't even find any dynamic allocation within functions that returns
> pointers to that struct.
>
> Therefore, according to Greg's request, I'll delete that stupid 'if'
> statement in the patch series v2 that I'm about to submit.

I'm really not clear on why the if should be deleted.

julia


>
> I've really appreciated your help.
>
> Thanks,
>
> Fabio
> >
> > julia
> >
> > > Thanks,
> > >
> > > Fabio
> > >
> > > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:368:
> > > > > pwrpriv->fw_current_in_ps_mode = false;
> > > > >
> > > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:380:
> > > > > pwrpriv->fw_current_in_ps_mode = true;
> > > > >
> > > > > drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:433:
> > > > > adapter_to_pwrctl(padapter)->fw_current_in_ps_mode = false;
> > > > >
> > > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:981:
> > > > > pwrctrlpriv->fw_current_in_ps_mode = false;
>
>
>
>
>

