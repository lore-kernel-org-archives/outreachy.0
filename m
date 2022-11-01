Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B862112
	for <outreachy@lists.linux.dev>; Tue,  1 Nov 2022 15:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=6ZdJtcLHuysuVqgpG/YVtYF/Nj3DxWktTKWZPz6m7N0=;
  b=uNo0OWXjhLoPJOmmCDTcBtzYHoc1lbJe4V+esywkLQpJfxiQJlEfIiUm
   ILQk/L+nYsI/EOsDwT7Uee3MDkup7UwZc1eqCIIedLvhc1GnEy8v+Dg6A
   3e0yGK1Dag/a2jOC4nWY58JNhrKjCJK9cTNlkw95J8g/mf4OvPl5/yWA3
   A=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,231,1661810400"; 
   d="scan'208";a="72514933"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2022 16:09:39 +0100
Date: Tue, 1 Nov 2022 16:09:33 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <drv@mailo.com>
cc: outreachy@lists.linux.dev
Subject: Re: Coccinelle based patch processing
In-Reply-To: <Y2Eyo9VMUIfzK8aU@ubunlion>
Message-ID: <alpine.DEB.2.22.394.2211011607180.2834@hadrien>
References: <Y2Epr3nxdZs/Cc6+@ubunlion> <alpine.DEB.2.22.394.2211011532430.2834@hadrien> <Y2Eyo9VMUIfzK8aU@ubunlion>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 1 Nov 2022, Deepak R Varma wrote:

> On Tue, Nov 01, 2022 at 03:34:52PM +0100, Julia Lawall wrote:
> >
> >
> > On Tue, 1 Nov 2022, Deepak R Varma wrote:
> >
> > > Hello,
> > > I have a coccicheck produced patch [attached here] using the following command.
> > > Can you please suggest how to submit this as a patch? Is there a document that I
> > > can follow to accomplish the submission?
> > >
> > >    make coccicheck COCCI=./scripts/coccinelle/misc/returnvar.cocci M=driver/staging/r8188eu/ MODE=patch
> >
> > Do what you would have done if you had made the patch by hand.
> You mean:
>    1) review and implement the patch suggested changes manually onto my local
>    patch branch

I don't understand what you mean by "implement ... manually".  Coccinelle
gives you a patch.  YOu can just apply that patch to your tree.  There is
no need to change anything manually.

But then you should look at the changes carefully in the context in which
they occur, to determine whether they are correct, or you should do
something else.

You can also study the provided patch itself and remove changes to any
file that do not seem suitable.

>    2) build
>    3) commit
>    4) generate and send patch using mutt format-patch

Yes.

> Or is simply do a "mutt -H cocci-auto.patch" and add the subject and patch log
> at the time of compiling the email?

No.

julia

> In the later case, I am not building the driver to ensure the changes are
> accurate.
>
> Can you please comment.
>
> >
> > If the changes are quite identical, then you can group changes on multiple
> > files into one.
> >
> > But in this case, even though all the changes do the same thing, it may
> > not be a good idea to group them, because the context is different in each
> > case.  In particular, you should check each case to see whether the return
> > variable really was unnecessary, or whether it actually was necessary, and
> > the developer forgot to set it to something.
>
> Okay. I will review this once again before submitting the patch(es).
>
> ./drv
>
> >
> > julia
> >
> >
> > >
> > > Thank you,
> > > ./drv
> > >
> >
>
>
>
