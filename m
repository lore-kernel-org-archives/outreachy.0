Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E42ED1
	for <outreachy@lists.linux.dev>; Sun, 13 Nov 2022 05:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1668317623; bh=SB52LLXMQe50DbV07mZvO+jfOm/N1YnF9GnWNTnZ0DM=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=EQSVIGltUKiHUvoqr4vP64NbvnSgry4z+qlkJxFmc3V7dV9Whtyt7OzmmqYbzoB7a
	 JBATn0Qumf7hfvKyMlbxopBYNbQB20AzcyTFEE+mzRUjylUMPKd/SjQ6TKAKzSOtFC
	 sa2f7Z7jQekmJLb1oQM0eG92IIo6iOJ0mfx/wErM=
Received: by b-2.in.mailobj.net [192.168.90.12] with ESMTP
	via ip-206.mailobj.net [213.182.55.206]
	Sun, 13 Nov 2022 06:33:43 +0100 (CET)
X-EA-Auth: PUPFz63Y72LdHxy8puZcmIj/GWUKjZERPrg/R6cwjXPMSpeI+rq3dj9g4+YA4aWlkXAyXOZaHUFzvSpioQYpHbFXDEEETM+m
Date: Sun, 13 Nov 2022 11:03:40 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] How to update the First Patch Tutorial
Message-ID: <Y3CBtJ/R2eyMNqQ5@qemulion>
References: <Y07K+awYX+9wLq9q@aschofie-mobl2>
 <Y2YAMRWzu1CRGe7a@qemulion>
 <Y2r85DJfNMshwg1R@aschofie-mobl2>
 <Y2snIKWiYerNPLGf@qemulion>
 <Y2tgpfnESq0aCuy6@qemulion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2tgpfnESq0aCuy6@qemulion>

On Wed, Nov 09, 2022 at 01:41:17PM +0530, Deepak R Varma wrote:
> On Wed, Nov 09, 2022 at 09:35:52AM +0530, Deepak R Varma wrote:
> > On Tue, Nov 08, 2022 at 05:05:40PM -0800, Alison Schofield wrote:
> > > > Hello Alison,
> > > > Can I add this "Updating Newbies Wiki" suggested section to the wiki pagexi
> > > > now? If yes, who should I share my updates with?
> > > >
> > > > Thank you,
> > > > ./drv
> > >
> > > Hi Deeva,
> > > If you haven't already done so, go ahead and update the Wiki directly.
> > > I will look for and review the changes in the wiki.
> >
> > Okay. I will get to it once I finish working on a patch feedback from yesterday.
>
> Hello,
> I have added a new section titled "Updating the Firstpatch Tutorial" and
> is ready for your review. Let me know if you have any comments.

Hello Alison,
Did you get a chance to review the updates done to the FirstPatch pages? Let me
know if you have a feedback for further improvement.

Thank you,
./drv

>
> Any new updates will be shared with you on separate email as review
> request/reminder.
>
> Thank you,
> ./drv
>
> >
> > >
> > > If you think of other changes going forward, make them and send me
> > > an email reminder to look.
> >
> > Sounds good. Will follow the instructions.
> >
> > >
> > > That goes for anyone updating the wiki with learnings from this round.
> > >
> > > Thanks,
> > > Alison


