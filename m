Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4DC322B
	for <outreachy@lists.linux.dev>; Tue,  1 Nov 2022 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667321825; bh=OFzzahgV6AdrhtOZi50rXj2beAHEJoyGKeuojwZvyMM=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=V4Mrt2AdmK11QqSAYVurcslxxwkAP2HxCc2VDsoEayidi0ZHRJv4l+ehOHn1RqWxz
	 /iP94ZTF0hEPRpXEvawbUiNIk5xJBBn460iouND7bhjNLqZytd7+sCL0fYeg333tjp
	 9afIXvzwpD7zfQv8yM4IKtfaJvmmMzLYPT4EVI5Q=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
	via [213.182.55.206]
	Tue,  1 Nov 2022 17:57:05 +0100 (CET)
X-EA-Auth: 9MMN1UKpD5Sto/Vl7UMjDXIz8p1K40RiVNYYwg8Ecb22DbbYySHM4LV5Uqhsq0hxyZBvQ2u8U4xJPU2vqYJ33z8R6HPRE852
Date: Tue, 1 Nov 2022 22:27:02 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Coccinelle based patch processing
Message-ID: <Y2FP3mIVHll0tvQN@ubunlion>
References: <Y2Epr3nxdZs/Cc6+@ubunlion>
 <alpine.DEB.2.22.394.2211011532430.2834@hadrien>
 <Y2Eyo9VMUIfzK8aU@ubunlion>
 <alpine.DEB.2.22.394.2211011607180.2834@hadrien>
 <Y2E5BIkSq/PbOwF7@ubunlion>
 <alpine.DEB.2.22.394.2211011628340.2834@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2211011628340.2834@hadrien>

On Tue, Nov 01, 2022 at 04:28:50PM +0100, Julia Lawall wrote:
>
>
> On Tue, 1 Nov 2022, Deepak R Varma wrote:
>
> > On Tue, Nov 01, 2022 at 04:09:33PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Tue, 1 Nov 2022, Deepak R Varma wrote:
> > >
> > > > On Tue, Nov 01, 2022 at 03:34:52PM +0100, Julia Lawall wrote:
> > > > >
> > > > >
> > > > > On Tue, 1 Nov 2022, Deepak R Varma wrote:
> > > > >
> > > > > > Hello,
> > > > > > I have a coccicheck produced patch [attached here] using the following command.
> > > > > > Can you please suggest how to submit this as a patch? Is there a document that I
> > > > > > can follow to accomplish the submission?
> > > > > >
> > > > > >    make coccicheck COCCI=./scripts/coccinelle/misc/returnvar.cocci M=driver/staging/r8188eu/ MODE=patch
> > > > >
> > > > > Do what you would have done if you had made the patch by hand.
> > > > You mean:
> > > >    1) review and implement the patch suggested changes manually onto my local
> > > >    patch branch
> > >
> > > I don't understand what you mean by "implement ... manually".  Coccinelle
> > > gives you a patch.  YOu can just apply that patch to your tree.  There is
> > > no need to change anything manually.
> >
> > Thank you Julia. I was not aware of the "git apply" feature. Never used it in
> > the past. Now I know.
>
> You can also just use patch -p1 < thepatch

That was super easy! Thank you Julia. I just submitted the patch for review and
feedback.

./drv

>
> julia
>
> >
> > Thank you again!
> > ./drv
> >
> > >
> > > But then you should look at the changes carefully in the context in which
> > > they occur, to determine whether they are correct, or you should do
> > > something else.
> > >
> > > You can also study the provided patch itself and remove changes to any
> > > file that do not seem suitable.
> > >
> > > >    2) build
> > > >    3) commit
> > > >    4) generate and send patch using mutt format-patch
> > >
> > > Yes.
> > >
> > > > Or is simply do a "mutt -H cocci-auto.patch" and add the subject and patch log
> > > > at the time of compiling the email?
> > >
> > > No.
> > >
> > > julia
> > >
> > > > In the later case, I am not building the driver to ensure the changes are
> > > > accurate.
> > > >
> > > > Can you please comment.
> > > >
> > > > >
> > > > > If the changes are quite identical, then you can group changes on multiple
> > > > > files into one.
> > > > >
> > > > > But in this case, even though all the changes do the same thing, it may
> > > > > not be a good idea to group them, because the context is different in each
> > > > > case.  In particular, you should check each case to see whether the return
> > > > > variable really was unnecessary, or whether it actually was necessary, and
> > > > > the developer forgot to set it to something.
> > > >
> > > > Okay. I will review this once again before submitting the patch(es).
> > > >
> > > > ./drv
> > > >
> > > > >
> > > > > julia
> > > > >
> > > > >
> > > > > >
> > > > > > Thank you,
> > > > > > ./drv
> > > > > >
> > > > >
> > > >
> > > >
> > > >
> >
> >
> >
>


