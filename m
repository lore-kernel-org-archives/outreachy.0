X-GM-THRID: 6254092556531924992
X-Received: by 10.112.138.98 with SMTP id qp2mr3407900lbb.4.1456144934132;
        Mon, 22 Feb 2016 04:42:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.10.10 with SMTP id 10ls353293lfk.43.gmail; Mon, 22 Feb 2016
 04:42:13 -0800 (PST)
X-Received: by 10.112.170.7 with SMTP id ai7mr3242672lbc.1.1456144933556;
        Mon, 22 Feb 2016 04:42:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si1099619wmy.2.2016.02.22.04.42.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:42:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,484,1449529200"; 
   d="scan'208";a="165561377"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 13:42:12 +0100
Date: Mon, 22 Feb 2016 07:42:09 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: obdclass: Replace
 simple_strtoul with kstrtoul
In-Reply-To: <CA+5yK5E1mFFcR6a4BKBa7Rq1UmpRUumiAiy7Wv53TD=Qe+PjdA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602220741340.2532@hadrien>
References: <20160222123259.GA24119@amitoj-Inspiron-3542> <alpine.DEB.2.10.1602220735470.2532@hadrien> <CA+5yK5E1mFFcR6a4BKBa7Rq1UmpRUumiAiy7Wv53TD=Qe+PjdA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 22 Feb 2016, Amitoj Kaur Chawla wrote:

> On Mon, Feb 22, 2016 at 6:06 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >>
> >> -     tmp = simple_strtoul(dummy, &end, 0);
> >> +     err = kstrtoul(dummy, 0, &tmp);
> >
> > This doesn't look correct.  end is not being initialized any more.
> >
> > julia
> >
> Any other way I should go about it? Or I'll have to drop this?

I don't know.  Look at what end is supposed to point to, and see if
kstroul can do that.  But it may be necessary to just drop it.

julia


>
> Amitoj
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5E1mFFcR6a4BKBa7Rq1UmpRUumiAiy7Wv53TD%3DQe%2BPjdA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

