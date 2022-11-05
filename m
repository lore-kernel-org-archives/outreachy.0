Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A408185B
	for <outreachy@lists.linux.dev>; Sat,  5 Nov 2022 06:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667629109; bh=qAjW7tSgInn96o/BaLIaUaa2Oz4hYq4+rOT3b3ECgQ4=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=Y2A25hQht9uPGH9I8Pd2Vfrw4fTHSkZmpGLU/0othkTVsXjY2UNr6LagaGoNe38HE
	 XNYvk8gSaXWgeqjrtHi12o49sznWx5gCZ/OhdydQbJeHuqOFtmeYy85db3W/pLtBEW
	 xyCCLSvNI+3u+NMAaz9ZpJh3TzBVXCULXfcpfmu8=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
	via ip-206.mailobj.net [213.182.55.206]
	Sat,  5 Nov 2022 07:18:29 +0100 (CET)
X-EA-Auth: iloRdAj7GXvyUC3y8tjxqcm63hz/mi5I8giZFuMd7O05E52NjoBeET7jmYJRCjPzIJGkBnlJd8/o5R7bmWOSu/PjkCCJZ9kq
Date: Sat, 5 Nov 2022 11:48:25 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] How to update the First Patch Tutorial
Message-ID: <Y2YAMRWzu1CRGe7a@qemulion>
References: <Y07K+awYX+9wLq9q@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y07K+awYX+9wLq9q@aschofie-mobl2>

On Tue, Oct 18, 2022 at 08:49:13AM -0700, Alison Schofield wrote:
>
> We encourage updates to the First Patch Tutorial.
>
> If you update the doc, please post a message to the Outreachy
> mailing list showing the update you made. If you want your
> potential update reviewed first, ask on this list too.
>
> I am a 'watcher' of the page, so I will be notified and
> review the edits to the tutorial automatically.
>
> The directions for contributing to the First Patch Tutorial,
> is a bit buried in the wiki, so I'll point it out here:
>
> See section: Tips for Applying to be an Outreachy Kernel intern
> "Bonus points if you make a kernelnewbies account and correct or add
> knowledge to this wiki. To edit the wiki, create an account, and then
> send an email to the outreachy@lists.linux.dev with the subject
> "[KERNEL NEWBIES ACCESS] username", where username is your kernel
> newbies username."
>
> One update I would suggest is creating a sub-section about updating
> the wiki - to make it more obvious.

Hello Alison,
Can I add this "Updating Newbies Wiki" suggested section to the wiki pagexi
now? If yes, who should I share my updates with?

Thank you,
./drv

>
> Thanks,
> Alison
>


