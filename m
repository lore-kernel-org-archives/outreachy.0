Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E0820F6
	for <outreachy@lists.linux.dev>; Tue,  1 Nov 2022 14:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667314344; bh=4CMH4Koo92OLem9aDq5yO5gU1dlLw97HRXJuA8D0M6o=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=Fj2Sl+wiB4y0n3j6iBpmLif+H5RyWaMkYRoMX7FEt+R2/QRndfTE7pCF2ScGQ88z4
	 MOKp6wk3PFwMG0YqTK51GslzAtSQjxp8LxW0SBmoRr2edbad+i08UdkSp3l/E6ovQU
	 gA4YhAdtK6ofaL03qlvFsEFs8fW3NnFcdXl4ZM8o=
Received: by b-3.in.mailobj.net [192.168.90.13] with ESMTP
	via [213.182.55.206]
	Tue,  1 Nov 2022 15:52:23 +0100 (CET)
X-EA-Auth: P4kNj+ctqvx7wwMZZwwSg0Hl5MqpwSLFrNOHn+JYrxnyCnriGpRl/QFK1neH8E1Ml6Ow2foZQ6ZgGhXohg23AGIrNdtDjpiP
Date: Tue, 1 Nov 2022 20:22:19 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Coccinelle based patch processing
Message-ID: <Y2Eyo9VMUIfzK8aU@ubunlion>
References: <Y2Epr3nxdZs/Cc6+@ubunlion>
 <alpine.DEB.2.22.394.2211011532430.2834@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2211011532430.2834@hadrien>

On Tue, Nov 01, 2022 at 03:34:52PM +0100, Julia Lawall wrote:
>
>
> On Tue, 1 Nov 2022, Deepak R Varma wrote:
>
> > Hello,
> > I have a coccicheck produced patch [attached here] using the following command.
> > Can you please suggest how to submit this as a patch? Is there a document that I
> > can follow to accomplish the submission?
> >
> >    make coccicheck COCCI=./scripts/coccinelle/misc/returnvar.cocci M=driver/staging/r8188eu/ MODE=patch
>
> Do what you would have done if you had made the patch by hand.
You mean:
   1) review and implement the patch suggested changes manually onto my local
   patch branch
   2) build
   3) commit
   4) generate and send patch using mutt format-patch

Or is simply do a "mutt -H cocci-auto.patch" and add the subject and patch log
at the time of compiling the email?

In the later case, I am not building the driver to ensure the changes are
accurate.

Can you please comment.

>
> If the changes are quite identical, then you can group changes on multiple
> files into one.
>
> But in this case, even though all the changes do the same thing, it may
> not be a good idea to group them, because the context is different in each
> case.  In particular, you should check each case to see whether the return
> variable really was unnecessary, or whether it actually was necessary, and
> the developer forgot to set it to something.

Okay. I will review this once again before submitting the patch(es).

./drv

>
> julia
>
>
> >
> > Thank you,
> > ./drv
> >
>


