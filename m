Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB6C7C
	for <outreachy@lists.linux.dev>; Wed,  2 Nov 2022 06:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667371470; bh=TuGs2wZIV0Jm3adqmSsyMaLjowE04rvWCqbC2KRNNyo=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=bmAFnFYMpZjFfHrBVZjLs7Ymb8VeNdhOYg4GeVrYXKYHTD19B98rO1UenEJM2HZ1o
	 Lt+hk3sRVeIjMaEEfgQvwiB7TL7fIgOpC51iG2fqimjnoqjAjt2exxbdula2EQuLKR
	 rMLKCczRYO3w0uxGCWx/2FAMjB+AENpfiHBDvBes=
Received: by b-2.in.mailobj.net [192.168.90.12] with ESMTP
	via [213.182.55.206]
	Wed,  2 Nov 2022 07:44:29 +0100 (CET)
X-EA-Auth: vcYfDdZ155QMkV/rL07Ez2836I0J9spK5UIC/VUlboy6ofV7WgrzJY9h0kK9h669bYpGdbdG7UN1Vwp0tYbNVRV9s4O2R8Un
Date: Wed, 2 Nov 2022 12:14:25 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: in-progress patches
Message-ID: <Y2IRydHt1s21xpag@ubunlion>
References: <Y2ANlqpqCgnt4xtY@debian-BULLSEYE-live-builder-AMD64>
 <Y2At2RNzdNYzPxXd@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y2At2RNzdNYzPxXd@aschofie-mobl2>

On Mon, Oct 31, 2022 at 01:19:37PM -0700, Alison Schofield wrote:
> On Mon, Oct 31, 2022 at 11:31:58PM +0530, Deepak R Varma wrote:
> > Hello Alison,
> > Thank you for the heads-up about the up coming deadline. I am still in the
> > middle of closing the patches and they are being actively worked upon. Can such
> > in-progress effort be included in as a contribution?
>
> Sure. Just state where you are at with those.
>
> Regarding in flight patches as of Nov 4th, we still hope that folks
> follow thru with their in flight patches after Nov 4th. Actually,
> we hope folks keep contributing to the clean up efforts in the
> Linux Kernel.
>
> I'll post more about this list quiescing on Nov 4th.

Hello Mentors,
I have a few Coccinelle based patches currently in flight. Following patch [1]
that was submitted on Nov 1s, I personally feel, to be less time consuming for
review and comment by the maintainers.

Could you please help/suggest how to request the maintainers for a priority
review since the deadline for applying to the project with an accepted
contribution is very close.

[1]: [PATCH v2] staging: r8188eu: remove unwanted variable implementation

Thank you for all your support, mentoring and patience with out queries. It was
a great opportunity to contribute to the Linux Kernel code. I wish to continue
to work on my open patches beyond the contribution period.

Alison,
I am looking forward to your next update on 4th :)

Thank you once again!!!

./drv

>
> Thanks for asking,
> Alison
>
> >
> > Thank you,
> > ./drv
> >
> >
> >
>


