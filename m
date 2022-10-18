Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1767F
	for <outreachy@lists.linux.dev>; Tue, 18 Oct 2022 05:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666072600; bh=C4nv/Hqy6f+wRp5aLlkh6W5YzB1GMDTmBikqYWe592U=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=G2nTxGVSTaR2obJ6DVYfhgqqpP4JlcZEp37oN57h/ZzbRCx4yP7e0IY8ObhwZ4Mnl
	 LX5rxytG2OF+GbPN5hHOru/ofl2CBdQDQgWyr/GHrvQWff/5zj44qikKVys35lhves
	 KC00lRI36fHtRAa700kws0lP+sC93fWDcOcvDUCo=
Received: by b-4.in.mailobj.net [192.168.90.14] with ESMTP
	via [213.182.55.206]
	Tue, 18 Oct 2022 07:56:40 +0200 (CEST)
X-EA-Auth: uLvGTaNvCF1k5jF7BWVr3IJ81tBjRKB7IWngTe/uRctTlccafpXIdxOm4x+9MVdcXxvJ4UCCWzGjAajT2idDriWPfdBe3eSE
Date: Tue, 18 Oct 2022 11:26:36 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: patch recipients
Message-ID: <Y05AFCN5w/Y2+yeb@debian-BULLSEYE-live-builder-AMD64>
References: <Y040PanpB2Xu7Juo@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y040PanpB2Xu7Juo@aschofie-mobl2>

On Mon, Oct 17, 2022 at 10:06:05PM -0700, Alison Schofield wrote:
> Hi Deepak,

Hello Alison,

>
> I notice that you started CC'ing mentors directly on your patches.
That is correct. Actually there is a section "Send your patch to your mentors"
on the following link. Hence I did that.

https://kernelnewbies.org/Outreachyfirstpatch?action=show&redirect=OPWfirstpatch#kernel-setup-done

>
> I want to redirect you to the directions in the First Patch Tutorial
> and the Welcome Announcement on the mailing list. Both talk about patch
> recipients.
Sure. I will follow the instructions from here.

>
> Given that you've started it, you cannot drop them from the current
> set, because we never trim the recipient list once a set is in flight.
> Sometimes we grow it.
That must have been a mistake. I tried to copy them on all my patches. I will
check which one I missed and ensure I am not missing any recipients going
forward.

>
> Also, I'm guessing there is a chance that the mentors privately told
> you to 'CC them.  NAK!  That should not be done. Mentors should be
> subscribed to this list. Let's keep the patch recipient list clean.
NO, they have not. It was my own assumption based on how I understood the link
mentioned above. The mentors have not communicated to me anything so far.

Thank you,
./drv

>
> Thanks,
> Alison


