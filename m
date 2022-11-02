Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D59B2582
	for <outreachy@lists.linux.dev>; Wed,  2 Nov 2022 14:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=wbonFraSAG68N2mLVkrkcmUjK+tBvSQmln7LrFwwhtg=;
  b=si5VWHJTJe1RUqs8FV0nCgUXxA0bh/achSScTtqjF2qdeOlHVtJ4+Jg8
   SldIHWkbc8/hKBcs4B/V5BXLJGV4P50RZn5dyl784CIZaBrUBT5BDxWmS
   CxX1o15OVUDdMB15TCrvec/+YNwgFf6mkpqi+SnSiAJHe5Ys2taGBCgWp
   c=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,234,1661810400"; 
   d="scan'208";a="36271447"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2022 15:11:52 +0100
Date: Wed, 2 Nov 2022 15:11:51 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Deepak R Varma <drv@mailo.com>
cc: Outreachy Linux <outreachy@lists.linux.dev>
Subject: Re: patch set resubmission
In-Reply-To: <Y2JqfFXB8AciDKRB@debian-BULLSEYE-live-builder-AMD64>
Message-ID: <f34efd4b-fa7d-ff2c-7095-8a675a2919da@inria.fr>
References: <Y2JqfFXB8AciDKRB@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 2 Nov 2022, Deepak R Varma wrote:

> Hello,
> I had a patch set with 2 patches. One of the two was accepted and applied to the
> staging tree, whereas the other patch needs correction and a revision.
>
> I did refresh my local branch to match the staging-testing tree commit level.
> Now, my patch-1 from the set is 9 commits down the patch-2 commit. Patch-2
> commit is the top commit in my local branch.
>
> In this case, do I still need to send the patch set with both the patches? If
> yes, How can I format a patch set from two distant commits?

You don't need to resend what was already accepted.

It shouldn't be necessary in this case, but you can use git rebase -i
HEAD~N to reorganize patches in the last N commits.

julia
