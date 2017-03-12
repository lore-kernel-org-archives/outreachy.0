X-GM-THRID: 6396667328901152768
X-Received: by 10.46.76.17 with SMTP id z17mr4756064lja.13.1489342155077;
        Sun, 12 Mar 2017 11:09:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.193.69 with SMTP id r66ls220334lff.34.gmail; Sun, 12 Mar
 2017 11:09:14 -0700 (PDT)
X-Received: by 10.25.26.80 with SMTP id a77mr3791412lfa.18.1489342154418;
        Sun, 12 Mar 2017 11:09:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n128si386490wmf.2.2017.03.12.11.09.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 11:09:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,154,1486422000"; 
   d="scan'208";a="216456702"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2017 19:09:13 +0100
Date: Sun, 12 Mar 2017 19:09:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Alison Schofield <amsfield22@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] simran singhal
In-Reply-To: <CALrZqyMST31oTsi0zJDoG3PZsvQGRDmc46F2hFgOe7g1vzv9Kw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703121907340.7649@hadrien>
References: <4356b92a-36b0-48b6-b4eb-f1d1df878262@googlegroups.com> <20170312174439.GC3711@d830.WORKGROUP> <CALrZqyMST31oTsi0zJDoG3PZsvQGRDmc46F2hFgOe7g1vzv9Kw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, SIMRAN SINGHAL wrote:

> On Sun, Mar 12, 2017 at 11:14 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Sun, Mar 12, 2017 at 10:36:10AM -0700, SIMRAN SINGHAL wrote:
> >> Hi,
> >>
> >> I want edit privileges.
> >
> > Done. Let me know if it doesn't work.
> >
> >
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4356b92a-36b0-48b6-b4eb-f1d1df878262%40googlegroups.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >
>
> For sending the patches regarding Coding Task 2, we have to send
> them normally on outreachy mailing list or follow the instructions given on:
> https://kernelnewbies.org/IIO_tasks

Follow the instructions, which include the Outreachy mailing list.

You can use the get_maintainer command in the tutorial, but drop the --nol
(no lists) argument.  Then check that all of the people mentioned on the
IIO_tasks page are included.

julia

