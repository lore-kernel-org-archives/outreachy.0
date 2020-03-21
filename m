X-GM-THRID: 6806516278512058368
X-Received: by 2002:adf:e78e:: with SMTP id n14mr17224607wrm.363.1584781901927;
        Sat, 21 Mar 2020 02:11:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:230e:: with SMTP id j14ls4180110wmj.0.canary-gmail; Sat,
 21 Mar 2020 02:11:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtlDGztRzZe9GGQ0pD2kjYREn5ofdYJuI3PS/kASys6QEPmRS8YRtdo3CFe6dBYVYZqblgk
X-Received: by 2002:a1c:25c5:: with SMTP id l188mr15859915wml.105.1584781900555;
        Sat, 21 Mar 2020 02:11:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584781900; cv=none;
        d=google.com; s=arc-20160816;
        b=xeQkr/88xdgUTwcDwK3B+fnxNjUEt6TGCIqpMX8IOQse1abM7M9vzmi+p1hbwtK4Tr
         H4AExBCRa3rWZB1wsnoxIOF71XsATj27RzQ2h6ROIgBVMUCVFjwwUnPmbHkIqomBKizh
         SKiYDnSo1PY75TAVLpOlLnwylOky9vmHH1qAw+uyOCGvwReWp7WSt3dmIIVHkV8wtVB4
         B+qmAJjKNBzbxfYNV0guKW9u/I8u+kW46lI5xa/WHg67gGCjDCY2uYWKVb8EXxp+xX7s
         ez3FCJOZleLNeYxb90J3x9BupByaTTSNV07+dQH8Gd2QexcwX5nEsJ9OnMInNDNKa+RB
         vFNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Pyyfl/JlqQeljG53sVIM4WcdCa0bWQSIOoUr16gMHOg=;
        b=WDzmOdRuDOyHoeYgAmifLsOVmysoszWllZOYjq80TXSF8Ft0vo3SValGHKYChzWaia
         EV1KjTN5m5hkARsVlD/RS3MVO+SsknNpuOPVk/SJka7SFxON+r0bWCJ7Sfa6O8Gm4pY5
         JI+huT88XxVlRrF9sD7o+3vYx9IHhE8xX367VfIzRYvs7arhSgv38MDjEQyA7LUtKde9
         Edf6RYCtClP1ykW7voUhgawcpFzNDOikKZ6cS+zCG8Kyym89oc5zedcG5yhcLvHatcaJ
         j8HAJVvEXLrOjBmBjDCA0zgu5hTZ6JFZhHTSBc9QPHhZn9ImevgtiZP/KdDkkFt/YIzb
         2r0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e12si334980wru.1.2020.03.21.02.11.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 02:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,287,1580770800"; 
   d="scan'208";a="343143409"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 10:11:40 +0100
Date: Sat, 21 Mar 2020 10:11:39 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: rtl8723bs: os_dep:
 Remove commented out code lines
In-Reply-To: <20200321091018.GA1978@tulip.local>
Message-ID: <alpine.DEB.2.21.2003211011180.2522@hadrien>
References: <cover.1584764104.git.vkor@vkten.in> <a62d2fbb77990210b939a5ec99ee27cfa5749a09.1584764104.git.vkor@vkten.in> <alpine.DEB.2.21.2003210832000.2522@hadrien> <20200321080741.GA1942@tulip.local> <alpine.DEB.2.21.2003210945070.2522@hadrien>
 <20200321091018.GA1978@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 21 Mar 2020, R Veera Kumar wrote:

> On Sat, Mar 21, 2020 at 09:46:01AM +0100, Julia Lawall wrote:
> > On Sat, 21 Mar 2020, R Veera Kumar wrote:
> >
> > > On Sat, Mar 21, 2020 at 08:32:49AM +0100, Julia Lawall wrote:
> > > >
> > > >
> > > > On Sat, 21 Mar 2020, R Veera Kumar wrote:
> > > >
> > > > > Remove multiple commented out code lines.
> > > > > Remove blank lines next to them.
> > > >
> > > > You don't have the change it, but mentioning removing the blank lines was
> > > > not really necessary.  It is normal that you should clean up the
> > > > adjacent whitespace when you clean up the code.
> > > >
> > >
> > > Sorry I can't make out: "You don't have the change it"
> > >
> > > So I keep those commented lines or remove them.
> >
> > I was commenting on your log message, not on your changes.
> >
> > There was no need to include "Remove blank lines next to them." in the log
> > message.
> >
>
> Okay.
>
> Since that log msg is going to be included in git repo commit log,
> do I have to remove it and send a new patchset revision.

No.  It doesn't harm anything.  It is just not necessary.

julia

>
> Veera
>
> > julia
> >
> > >
> > > But Greg said in comment to patch:
> > > Again, this is not a long-line comment, it is a code line that is
> > > commented out. "Remove it in a patch previous to this one please."
> > >
> > > Veera
> > >
> > > > julia
> > > >
>

