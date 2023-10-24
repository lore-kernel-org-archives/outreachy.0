Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1422033F
	for <outreachy@lists.linux.dev>; Tue, 24 Oct 2023 12:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="D8UfFoea"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=pw/UG2xqXNPkIPlnR4r8lWNWhzaxyYgIt+KQShllEiM=;
  b=D8UfFoea65aIIkeNKl7Tj0eTjR1oqzGZyDM+ZOV27r+FtihcG3BwoABe
   whdRz4CO9uYrzWHOEKpV0l6qEbFPeDLW7TLi8jjzFFik1RFZh11VkMb/0
   KbsopeCXq4VF6hxR/VehFb8iAI5dYAv1D6J3TwxtxT22JjZd6RP3hP2g8
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,247,1694728800"; 
   d="scan'208";a="69617642"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2023 14:41:22 +0200
Date: Tue, 24 Oct 2023 14:41:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Dorcas Litunya <anonolitunya@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy]Clarification on code section in qlge driver
In-Reply-To: <ZSjpGx+s6xCVOnKF@dorcaslitunya-virtual-machine>
Message-ID: <4642349f-c683-e5b-7be8-375490efd6@inria.fr>
References: <ZSjkhx+xWP9xXiAt@dorcaslitunya-virtual-machine> <388ed3fe-8e5f-9be9-4072-30ebbdd17960@inria.fr> <ZSjpGx+s6xCVOnKF@dorcaslitunya-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Oct 2023, Dorcas Litunya wrote:

> On Fri, Oct 13, 2023 at 08:41:32AM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 13 Oct 2023, Dorcas Litunya wrote:
> >
> > > Hi Julia,
> > >
> > > I am trying to edit the above macro to incorporate an inline function as
> > > macros with control flows are highly discouraged. However, I wanted to
> > > inquire about some parameters in the FILL_SEG  macro below so that I can be able effectively
> > > create a well parameterized function.
> >
> > seg_hdr and seg_regs are not vealues, they are field names.  There is no
> > way that you can pass a field name to a function.  You could pass the
> > complete values &dump->seg_hdr and dump->seg_regs, but then one could
> > wonder why not pass dump as well.  And then the calls would start getting
> > a bit large.
> >
> > Since this macro is specific to a particular function and is defined right
> > before that function, I think it would be better to leave it as it is.
> >
> Makes a lot of sense. My other idea besides defining the entire macro as
> a function was to encapsulate what the macro does in the code block as a
> function as below:
>
> #define FILL_SEG(seg_hdr, seg_regs,fmsg,dump) fill_seg_handling_error(fmsg,dump)
>
> static int fill_seg_handling_error(struct fmsg *fmsg, struct dump *dump) {
>         int err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs);
>         if (err) {
>                 kvfree(dump);
>                 return err;
>         }
>         return 0
> }
>
> Not sure if doing it this way creates some sort of redudancy or may lead to some
> unprecedented problems or  can it be considered
> as a way to make the code more readable and maintainable?

Sorry to hqave missed this mail.  I think that the goal of the original
macro was to jump directly out of the function on failure, not to
have the code cluttered with tests, so this change would not give the full
benefit.

julia

>
> Dorcas
> > julia
> >
> >
> >
> >
> >
> >
> >
> >
> >
> > >
> > > #42: FILE: drivers/staging/qlge/qlge_devlink.c:42:
> > > +#define FILL_SEG(seg_hdr, seg_regs)                                        \
> > > +       do {                                                                \
> > > +               err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
> > > +               if (err) {                                                  \
> > > +                       kvfree(dump);                                       \
> > > +                       return err;                                         \
> > > +               }                                                           \
> > > +       } while (0)
> > >
> > >
> > >
> > > The fmsg parameter and the dump parameter, both
> > > in the qlge_fill_seg_() function inside the macro, where are they referenced from?
> > > Looking through the code, I cannot see global variables in relation to
> > > this. Are they command line arguments or does is thekernel set to
> > > provide them?
> > >
> > > Any assistance will be appreciated.
> > >
> > > Kind regards,
> > > Dorcas
> > >
> > >
>
