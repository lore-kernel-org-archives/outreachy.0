X-GM-THRID: 6205970063032320000
X-Received: by 10.194.83.169 with SMTP id r9mr2611520wjy.6.1444940641454;
        Thu, 15 Oct 2015 13:24:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.211.137 with SMTP id k131ls124941lfg.53.gmail; Thu, 15 Oct
 2015 13:24:00 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr2628737lbp.24.1444940640764;
        Thu, 15 Oct 2015 13:24:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w4si158493wiz.0.2015.10.15.13.24.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:24:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,687,1437429600"; 
   d="scan'208";a="183012603"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Oct 2015 22:24:00 +0200
Date: Thu, 15 Oct 2015 22:23:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_ptlrpc: Replace
 simple_strtol with simple_stroul
In-Reply-To: <CAKHNQQGPX=Ku867t8UWX59hqta6e8EidrLX7H=M+Gfc_+GL+1A@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1510152222460.2027@localhost6.localdomain6>
References: <20151015201311.GA45040@ubuntu> <alpine.DEB.2.02.1510152215180.2027@localhost6.localdomain6> <CAKHNQQGPX=Ku867t8UWX59hqta6e8EidrLX7H=M+Gfc_+GL+1A@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:

> On Fri, Oct 16, 2015 at 1:46 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:
> >
> >> The variable inst is a __u32 type and hence the function used should be
> >> simple_strtoul.
> >> Semantic patch used:
> >>
> >> @@ type T;
> >> T e;@@
> >> e=
> >> - simple_strtol
> >> + simple_strtoul
> >>   (...)
> >
> > The semantic patch is not really helpful here.  Certainly you don't want
> > to replace all calls to simple_strtol by simple_strtoul.  I guess that
> > something around the call should have type __u32.
> >
> > julia
> >
> @@ __u32 T;
> T e;@@
> e=
> - simple_strtol
> + simple_strtoul
>   (...)
> 
> Like this?

No.  You want e to have type __u32.  So it would be

__u32 e;

You don't need T at all.  In some other semantic patches there has been T, 
but that was a metavariable to hold any possible type.  Here you want to 
specify a specific type.

julia

> 
> >>
> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> ---
> >>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> >> index ec44b3c..415817c 100644
> >> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> >> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
> >> @@ -1251,7 +1251,7 @@ int lprocfs_wr_import(struct file *file, const char __user *buffer,
> >>               *ptr = 0;
> >>               do_reconn = 0;
> >>               ptr += strlen("::");
> >> -             inst = simple_strtol(ptr, &endptr, 10);
> >> +             inst = simple_strtoul(ptr, &endptr, 10);
> >>               if (*endptr) {
> >>                       CERROR("config: wrong instance # %s\n", ptr);
> >>               } else if (inst != imp->imp_connect_data.ocd_instance) {
> >> --
> >> 2.1.0
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151015201311.GA45040%40ubuntu.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQGPX%3DKu867t8UWX59hqta6e8EidrLX7H%3DM%2BGfc_%2BGL%2B1A%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

