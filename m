X-GM-THRID: 6208412714735239168
X-Received: by 10.180.79.68 with SMTP id h4mr3715552wix.6.1445517439481;
        Thu, 22 Oct 2015 05:37:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.132 with SMTP id m4ls627691wif.12.gmail; Thu, 22 Oct
 2015 05:37:18 -0700 (PDT)
X-Received: by 10.180.221.227 with SMTP id qh3mr3717544wic.2.1445517438954;
        Thu, 22 Oct 2015 05:37:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cm6si115087wib.1.2015.10.22.05.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:37:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,182,1444687200"; 
   d="scan'208";a="151432489"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Oct 2015 14:37:18 +0200
Date: Thu, 22 Oct 2015 14:37:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: coreconfigurator:
 Drop unneeded wrapper functions
In-Reply-To: <CAKHNQQFTZtBPjC7=ffib8iORubFKSo_B0GNKvJSbUXuGx6ryUQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510221436380.2607@hadrien>
References: <20151022101158.GA17223@ubuntu> <alpine.DEB.2.10.1510221232200.2607@hadrien> <CAKHNQQHxMbQtwVhA8uVkP8uZqX-q_HwSWNmKRPhXwFYsXpve-w@mail.gmail.com> <alpine.DEB.2.10.1510221310400.2607@hadrien> <CAKHNQQHP7dpLZdz6E=CC+ziN4df1Cdtb7Es-qc2KCFVnXrpF6w@mail.gmail.com>
 <alpine.DEB.2.10.1510221342290.2607@hadrien> <CAKHNQQE-rMmuZ-UyzLyYkaS4kcT7UMqLRec-kzhKODA+zX8bAw@mail.gmail.com> <alpine.DEB.2.10.1510221430190.2607@hadrien> <CAKHNQQFTZtBPjC7=ffib8iORubFKSo_B0GNKvJSbUXuGx6ryUQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:

> On Thu, Oct 22, 2015 at 6:00 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
> >
> >> On Thu, Oct 22, 2015 at 5:13 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >
> >> >
> >> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
> >> >
> >> >> On Thu, Oct 22, 2015 at 4:43 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
> >> >> >
> >> >> >> On Thu, Oct 22, 2015 at 4:04 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >> >> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
> >> >> >> >
> >> >> >> >> Remove the wrapper functions get_address1, get_address2 and get_address3
> >> >> >> >> as they are not required and replace their calls by suitable functions.
> >> >> >> >
> >> >> >> > The existing functions serve two purposes:
> >> >> >> >
> >> >> >> > 1.  They make clear that an ethernet address is being copied
> >> >> >> > 2.  They hide the offsets
> >> >> >> >
> >> >> >> > To preserve the first property, the kernel has a function for copying
> >> >> >> > ethernet addresses.
> >> >> >> >
> >> >> >> > To preserve the second property, maybe it would be possible to #define
> >> >> >> > constants that describe the offsets, if there is any way to figure out
> >> >> >> > what they semantically mean.
> >> >> >> >
> >> >> >> > julia
> >> >> >> >
> >> >> >>
> >> >> >> Right. I am thinking of writing one wrapper function instead of three
> >> >> >> where I'll pass on an offset each time which will be #defined.
> >> >> >> For example,
> >> >> >>
> >> >> >> #define ofs 4
> >> >> >> #define c 6
> >> >> >
> >> >> > #define things should always be in all (or at least mostly) capital
> >> >> > letters.
> >> >> >
> >> >> >> static inline void get_address(u8 *pum8sa, u8 *addr, u8 *offset){
> >> >> >>         ether_addr_copy(addr, pum8sa + offset);
> >> >> >> }
> >> >> >
> >> >> > I don't think this is the best idea.  ether_addr_copy is something that is
> >> >> > easily understandable to someone reading the code.  get_address, on the
> >> >> > other hand, could be anything.  If you can find meaningful names for the
> >> >> > offsets, then it would be better to say eg:
> >> >> >
> >> >> > ether_addr_copy(addr, pum8sa + NAME1)
> >> >> >
> >> >> > julia
> >> >> >
> >> >>
> >> >> #define NAME1 4
> >> >> #define NAME2 10
> >> >> #define NAME3 16
> >> >
> >> > Sorry, NAME was just supposed to be a metavariable, that you could fill in
> >> > with something appropriate.  From the comments in the code it seems like
> >> > it should be ADDRESS1, ADDRESS2, etc.
> >> >
> >> > julia
> >> >
> >> >
> >>
> >> Yes, I understand that. I was just presenting a prototype. :)
> >> I was thinking of ADDR1, ADDR2.. But, ADDRESS1, ADDRESS2,.. would be fine too.
> >
> > Either way should be OK.
> >
> > julia
> >
> Thanks. I'm sending v2.
> I'm getting implicit function declaration error for ether_addr_copy
> function. Can it be ignored?

No.  You need to find the appropriate header file to include.

julia

