Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019DE2108
	for <outreachy@lists.linux.dev>; Wed,  2 Nov 2022 13:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1667394172; bh=unrWr73dS6ANOJJjCBVf7KGS9teCKrF+Iv890yvl7OE=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=aBHI791/fl+cA0Dm6FZi4+ROLK8bwXshoYzeu8kB+T1oWX5cKEi22JuErrFMeHXRs
	 bVbSec6p1d87lsEKBQEhn65FZ7IEgNANDllqH6nFVD/I2DiGkbbCQo4WlxtaUgd0Qj
	 rwQv/vWuDbqNvLjgPLk/AjzzRTC4n85U1Dg1wQ0Y=
Received: by b-2.in.mailobj.net [192.168.90.12] with ESMTP
	via [213.182.55.206]
	Wed,  2 Nov 2022 14:02:52 +0100 (CET)
X-EA-Auth: rrP0mBfHe/tpmy/2P+z+Dj9/vOU44GlIgZKYjxBf1DaPmFQxTuHp0zORVPfMuBq7myGwE+pbbKtQ9PjrgNFbu0E0TsaNFp5F
Date: Wed, 2 Nov 2022 18:32:52 +0530
From: Deepak R Varma <drv@mailo.com>
To: Outreachy Linux <outreachy@lists.linux.dev>
Subject: patch set resubmission
Message-ID: <Y2JqfFXB8AciDKRB@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
I had a patch set with 2 patches. One of the two was accepted and applied to the
staging tree, whereas the other patch needs correction and a revision.

I did refresh my local branch to match the staging-testing tree commit level.
Now, my patch-1 from the set is 9 commits down the patch-2 commit. Patch-2
commit is the top commit in my local branch.

In this case, do I still need to send the patch set with both the patches? If
yes, How can I format a patch set from two distant commits?

Thank you,
./drv


