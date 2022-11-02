Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9572C9D
	for <outreachy@lists.linux.dev>; Wed,  2 Nov 2022 14:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667400559; bh=5Wp2vSCFfbKq8qIrKKXlCVhX1u/Nh/x10JJ80y9cx84=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=CidY6QF/4/GzvVHeKv46SZ1HA0GB0JfW/FPrQxvDaZb3OvFHJHYgM/rPw/TdDHJrm
	 pBZTNIw6HJiSWcGVpIIb/jbPcKViJNjYXTduKvWRhNxmBTUqMst6McWzHGLMWK8Ce7
	 brFXVjCUogEhzp4jdAbD+drwiLw5vYY0DAAKuHP8=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
	via [213.182.55.206]
	Wed,  2 Nov 2022 15:49:19 +0100 (CET)
X-EA-Auth: hzsKL9lL1BWie/4xGZiem1sxDHbSZX2XGse/zjJiz0pt1DmEn5DQCoseluzWOTwu/IXur5mhDUSxEvZK9Nt3S0dM0HW0ZqOV
Date: Wed, 2 Nov 2022 20:19:18 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Outreachy Linux <outreachy@lists.linux.dev>
Subject: Re: patch set resubmission
Message-ID: <Y2KDbhXo1drmGpKS@debian-BULLSEYE-live-builder-AMD64>
References: <Y2JqfFXB8AciDKRB@debian-BULLSEYE-live-builder-AMD64>
 <f34efd4b-fa7d-ff2c-7095-8a675a2919da@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f34efd4b-fa7d-ff2c-7095-8a675a2919da@inria.fr>

On Wed, Nov 02, 2022 at 03:11:51PM +0100, Julia Lawall wrote:
>
>
> On Wed, 2 Nov 2022, Deepak R Varma wrote:
>
> > Hello,
> > I had a patch set with 2 patches. One of the two was accepted and applied to the
> > staging tree, whereas the other patch needs correction and a revision.
> >
> > I did refresh my local branch to match the staging-testing tree commit level.
> > Now, my patch-1 from the set is 9 commits down the patch-2 commit. Patch-2
> > commit is the top commit in my local branch.
> >
> > In this case, do I still need to send the patch set with both the patches? If
> > yes, How can I format a patch set from two distant commits?
>
> You don't need to resend what was already accepted.
>
> It shouldn't be necessary in this case, but you can use git rebase -i
> HEAD~N to reorganize patches in the last N commits.

Hi Julia,
Thank you for responding to my question. I have submitted the revised patch set
per the guideline you provided.

Extended question (not urgent):
Agree that "git rebase -i" can be used to reorganize commits; however, I am not
sure how this can help with "git format-patch -n --thread=shallow
commit#D^..commit#A"??? Won't we include everything in between commit D and A
here? I wanted to know if there is a way to only include commit D and A in
format-patch when they are separated by a few intermediate commits.

./drv

>
> julia
>


