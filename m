Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF80828F4
	for <outreachy@lists.linux.dev>; Wed,  9 Nov 2022 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667981482; bh=Fivre+mgv/LVpsJcy50CbmMYzc5Is80ORdQPgaIdI9A=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=K6ZTSDURoJ03LGs+P4DGPMwLqqLoCpyFZWq7UdGnsSYmZfesDzhjcP7HFR+DTD2XA
	 4xUsVqZYvVjUPOACID4F5CeUNEtZmtQckHSGqygcAGQFA1FJNx6MExBSMdSld4jXz5
	 iTcWnntxqSMDEbJj+Jk6GRa4H1EbGnsnrUY1aAoQ=
Received: by b-4.in.mailobj.net [192.168.90.14] with ESMTP
	via ip-206.mailobj.net [213.182.55.206]
	Wed,  9 Nov 2022 09:11:22 +0100 (CET)
X-EA-Auth: VNmHrm2M5xncxv4B4UBUi3GiUu+JgTFUEph/je5J24szAgmcmC6pvfmHAvVreHtnVYE/aXErA5/hBH0kS/F4Ox2RoAk0K/wI
Date: Wed, 9 Nov 2022 13:41:17 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] How to update the First Patch Tutorial
Message-ID: <Y2tgpfnESq0aCuy6@qemulion>
References: <Y07K+awYX+9wLq9q@aschofie-mobl2>
 <Y2YAMRWzu1CRGe7a@qemulion>
 <Y2r85DJfNMshwg1R@aschofie-mobl2>
 <Y2snIKWiYerNPLGf@qemulion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2snIKWiYerNPLGf@qemulion>

On Wed, Nov 09, 2022 at 09:35:52AM +0530, Deepak R Varma wrote:
> On Tue, Nov 08, 2022 at 05:05:40PM -0800, Alison Schofield wrote:
> > > Hello Alison,
> > > Can I add this "Updating Newbies Wiki" suggested section to the wiki pagexi
> > > now? If yes, who should I share my updates with?
> > >
> > > Thank you,
> > > ./drv
> >
> > Hi Deeva,
> > If you haven't already done so, go ahead and update the Wiki directly.
> > I will look for and review the changes in the wiki.
>
> Okay. I will get to it once I finish working on a patch feedback from yesterday.

Hello,
I have added a new section titled "Updating the Firstpatch Tutorial" and
is ready for your review. Let me know if you have any comments.

Any new updates will be shared with you on separate email as review
request/reminder.

Thank you,
./drv

>
> >
> > If you think of other changes going forward, make them and send me
> > an email reminder to look.
>
> Sounds good. Will follow the instructions.
>
> >
> > That goes for anyone updating the wiki with learnings from this round.
> >
> > Thanks,
> > Alison
> >
> >
> > >
> > > >
> > > > Thanks,
> > > > Alison
> > > >
> > >
> > >
>
>
>


