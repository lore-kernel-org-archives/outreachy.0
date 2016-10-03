X-GM-THRID: 6336950026186522624
X-Received: by 10.28.209.129 with SMTP id i123mr580239wmg.1.1475505447207;
        Mon, 03 Oct 2016 07:37:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.78 with SMTP id x75ls1521031wma.4.gmail; Mon, 03 Oct
 2016 07:37:26 -0700 (PDT)
X-Received: by 10.194.175.166 with SMTP id cb6mr1229195wjc.15.1475505446606;
        Mon, 03 Oct 2016 07:37:26 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si1118640wmg.3.2016.10.03.07.37.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 07:37:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,438,1473112800"; 
   d="scan'208";a="195462604"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2016 16:37:19 +0200
Date: Mon, 3 Oct 2016 16:37:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>
cc: Rehas Sachdeva <aquannie@gmail.com>, outreachy-kernel@googlegroups.com, 
    Julia Lawall <julia.lawall@lip6.fr>, Johan Hovold <johan@kernel.org>, 
    Alex Elder <elder@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [Outreachy Kernel] [PATCH] staging: greybus:
 Constify local struct gb_loopback_stats
In-Reply-To: <1475497775.28319.95.camel@nexus-software.ie>
Message-ID: <alpine.DEB.2.10.1610031636550.3509@hadrien>
References: <20161002192224.GA5295@toblerone>  <alpine.DEB.2.10.1610022135511.3327@hadrien>  <1475489763.28319.85.camel@nexus-software.ie>  <20161003104414.GA18762@toblerone> <1475497775.28319.95.camel@nexus-software.ie>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-750997066-1475505439=:3509"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-750997066-1475505439=:3509
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 3 Oct 2016, Bryan O'Donoghue wrote:

> On Mon, 2016-10-03 at 16:14 +0530, Rehas Sachdeva wrote:
> > On Mon, Oct 03, 2016 at 11:16:03AM +0100, Bryan O'Donoghue wrote:
> > >
> > > On Sun, 2016-10-02 at 21:36 +0200, Julia Lawall wrote:
> > > >
> > > >
> > > > On Mon, 3 Oct 2016, Rehas Sachdeva wrote:
> > > >
> > > > >
> > > > > The local declaration "struct gb_loopback_stats reset" is not
> > > > modified
> > > > >
> > > > > throughout its scope and hence can be made const. Done using
> > > > Coccinelle.
> > > > >
> > > > >
> > > > > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > > > > ---
> > > > >   drivers/staging/greybus/loopback.c | 2 +-
> > > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/staging/greybus/loopback.c
> > > > b/drivers/staging/greybus/loopback.c
> > > > >
> > > > > index 7882306..fb5a068 100644
> > > > > --- a/drivers/staging/greybus/loopback.c
> > > > > +++ b/drivers/staging/greybus/loopback.c
> > > > > @@ -837,7 +837,7 @@ static int
> > > > > gb_loopback_request_handler(struct
> > > > gb_operation *operation)
> > > > >
> > > > >
> > > > >   static void gb_loopback_reset_stats(struct gb_loopback *gb)
> > > > >   {
> > > > > -     struct gb_loopback_stats reset = {
> > > > > +     const struct gb_loopback_stats reset = {
> > > > Should it also be static?  I recall this comment being made in
> > > > another
> > > > case, but I don't know what the tradeoffs are.
> > Yes it can be static too, since we are not updating it, so we don't
> > care
> > if its value is retained in subsequent function calls. I agree with
> > Bryan that
> > we might as well make all locally scoped const variables static too.
> >
> > Making it static decreases the size of text segment, without
> > affecting any
> > other segment. I don't know if its particularly useful.
> >
> > Rehas
>
> Hmm..
>
> Looking at the resulting assembler on x86 anyway - I do kind of agree
> that static makes sense. For this compound type the # of operations we
> end up executing is a fair bit less for static (v) non-static will very
> little penalty in the .text section.
>
> ### static ###
>
> somefunction:
> .LFB0:
>         .cfi_startproc
>         pushq   %rbp
>         .cfi_def_cfa_offset 16
>         .cfi_offset 6, -16
>         movq    %rsp, %rbp
>         .cfi_def_cfa_register 6
>         subq    $16, %rsp
>         movq    %rdi, -8(%rbp)
>         movq    -8(%rbp), %rax
>         movl    $80, %edx
>         movl    $assign.2474, %esi
>         movq    %rax, %rdi 
>         call    memcpy
>         nop
>         leave   
>         .cfi_def_cfa 7, 8
>         ret
>         .cfi_endproc 
>
> ### non-static ###
>
> somefunction:
> .LFB0:
>         .cfi_startproc
>         pushq   %rbp
>         .cfi_def_cfa_offset 16
>         .cfi_offset 6, -16
>         movq    %rsp, %rbp
>         .cfi_def_cfa_register 6
>         subq    $112, %rsp
>         movq    %rdi, -104(%rbp)
>         movq    %fs:40, %rax
>         movq    %rax, -8(%rbp)
>         xorl    %eax, %eax
>         leaq    -96(%rbp), %rdx
>         movl    $0, %eax
>         movl    $10, %ecx
>         movq    %rdx, %rdi
>         rep stosq
>         movl    $10, -96(%rbp)
>         movl    $11, -92(%rbp)
>         leaq    -96(%rbp), %rcx
>         movq    -104(%rbp), %rax
>         movl    $80, %edx
>         movq    %rcx, %rsi
>         movq    %rax, %rdi
>         call    memcpy
>         nop
>         movq    -8(%rbp), %rax
>         xorq    %fs:40, %rax
>         je      .L2
>         call    __stack_chk_fail
>
> #### test program ####
> #include <stdio.h>
> #include <string.h>
>
> struct a {
> 	int a;
> 	int b;
> 	int c;
> 	int d;
> 	int e;
> 	int f;
> 	int g;
> 	int h;
> 	int i;
> 	int j;
> 	int k;
> 	int l;
> 	int m;
> 	int n;
> 	int o;
> 	int p;
> 	int q;
> 	int r;
> 	int s;
> 	int t;
> };
>
> void somefunction(struct a *assign_me)
> {
> 	const struct a assign = {
> 		.a = 10,
> 		.b = 11,
> 	};
>
> 	memcpy(assign_me, &assign, sizeof(assign));
> }
>
> int main(int argc, char *argv[])
> {
> 	struct a assign;
>
> 	somefunction(&assign);
> 	printf("values of assignment are %d and %d\n", assign.a,
> assign.b);
>
> 	return 0;
> }
>
>
> So actually I'd say static is a good call

Thanks for looking into it.

julia
--8323329-750997066-1475505439=:3509--

