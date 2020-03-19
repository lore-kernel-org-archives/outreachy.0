X-GM-THRID: 6805826308521590784
X-Received: by 2002:a05:6000:114f:: with SMTP id d15mr2913527wrx.143.1584608321706;
        Thu, 19 Mar 2020 01:58:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:230e:: with SMTP id j14ls781176wmj.0.canary-gmail; Thu,
 19 Mar 2020 01:58:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vswVjCkifU1ZntIfQEMlL9Qpnlu/M7E0o4QFLPuTCFpG5YCv/Bknvz1MmDGLkBNNJDJ8gC4
X-Received: by 2002:a1c:3d6:: with SMTP id 205mr2563700wmd.155.1584608320329;
        Thu, 19 Mar 2020 01:58:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584608320; cv=none;
        d=google.com; s=arc-20160816;
        b=oRCLL93e4cOAxbgTumSou1e4vBdWGh1m9xd4xRfPEbebXhAFlt7GFqwTMJcD3cXEaC
         e5PLBj55APaqDhvU+KfsB+87DLK+Y1Ouq7m5w+Pws0lgh7I+UckakR5CkSKdP65CR3pb
         i8AN4EbftB5LYY4QRB0fz6nmJLX/Kwu3oxuiuUbj1q/OxrKcTkMQeW6CSVIBpwP40D7C
         sGiwTH2zBTTHbz4xCtn3eRpXQxM3gTdPF1/Tq4IX0u0x3MDlMsJO3toAVrp2sj2A/VCF
         FjwoKHobf17NvlEo/yyXxhlXRuv/cAS3lCqTJhj5Hpadmn3IRYylyCx2GgVEGDIYebWX
         DgJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Lq27gW7PQvcNEu6uhKsoJy/ikTk85BPAphMo4423eoA=;
        b=B9AbDUKZ2CyIfroqin5HIqSlaFxI/GIv2YfDmX6NHxRAmhfugdvCEB+3aSnTPpWoLc
         DuaFYmTqOhqm7eEls7h9tgl55/Bf/xzQ/jmhv1ZQhA8q+yFBCTSje+5NH0VPn2uavH3E
         qUyreW4cJbhYheZtVwtee5VlSTlYjJfZF6KT7ep55DNPmr10YEMy2JdGeyU+20VBaSK+
         9QkxklcK2mlbhsC+VLoiyE9J29bwtwZIiBEEXsVTnFWn4p+1J7As8SuhJmWWaITy0eCs
         c4nB7NheWDCB4jT02+TDXFxpsw5yjPyqmVr7ynE0HpzOmE3ET7soVKLHs/1ozLF62iRO
         WSZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n7si225273wmc.1.2020.03.19.01.58.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:58:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,571,1574118000"; 
   d="scan'208";a="342895950"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 09:58:39 +0100
Date: Thu, 19 Mar 2020 09:58:38 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
In-Reply-To: <20200319085151.GE1723@tulip.local>
Message-ID: <alpine.DEB.2.21.2003190958150.3010@hadrien>
References: <20200319080144.GA1723@tulip.local> <20200319080905.GA3489391@kroah.com> <20200319082249.GC1723@tulip.local> <20200319083600.GA3490824@kroah.com> <20200319085151.GE1723@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, R Veera Kumar wrote:

> On Thu, Mar 19, 2020 at 09:36:00AM +0100, Greg Kroah-Hartman wrote:
> > On Thu, Mar 19, 2020 at 01:52:54PM +0530, R Veera Kumar wrote:
> > > On Thu, Mar 19, 2020 at 09:09:05AM +0100, Greg Kroah-Hartman wrote:
> > > > On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> > > > > Hi,
> > > > >
> > > > > I posted patches on Saturday. But I did not got a msg from Greg
> > > > > about they being accepted. Yesterday Greg posted that he has
> > > > > seen all outreachy patches upto now. And if we do not get reply's
> > > > > for the patches we should resend. So I resent it yesterday.
> > > >
> > > > What specific patches did you submit that you did not get a response on?
> > > > I do not see any, but I might have missed some.  What is the message id
> > > > or subject lines?
> > > >
> > > > thanks,
> > > >
> > > > greg k-h
> > > >
> > >
> > > They are:
> > >
> > > Subject: [RESEND PATCH] staging: rtl8188eu: core: Correct a typo in a comment
> > > Message-Id: <20200317233020.575-1-vkor@vkten.in>
> > >
> > > Subject: [RESEND PATCH] staging: rts5208: shorten long line in func call
> > > Message-Id: <20200317235413.1656-1-vkor@vkten.in>
> >
> > I do not see any of these patches in my system at all.
> >
> > I would suggest resending all patches that you have that I have not
> > applied as I am currently caught up on all pending outreachy patches.
> >
>
> Oh.
> Perhaps the issue is I am sending email patches with
>  To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>  CC: outreachy-kernel <outreachy-kernel@googlegroups.com>, others
>
> I do not know but should I send all of them with To: field.
>
> Greg, do you only read outreachy-kernel@googlegroups.com msgs for patch
> lookup.

CC for the group is fine.

julia


>
> Veera
>
> > thanks,
> >
> > greg k-h
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200319085151.GE1723%40tulip.local.
>

