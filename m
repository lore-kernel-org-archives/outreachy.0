Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358731D6A9
	for <outreachy@lists.linux.dev>; Tue, 24 Oct 2023 19:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="scdQumx7"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=aEW4gHBZP8YNN5oX1yx4K+gg7u5zCgNsvcT9uDiEODc=;
  b=scdQumx7dD/uA1T6DB9jHkXP4EtLFSrogXoYzL3KVwXWarB0HxZBXJQA
   6KwCIMuu4aAOMAt1rxOElXzq2lb9+3RGpTjFXW8hFnzUijXd1u4vONr8+
   mOgftDCyAxFDN4l1tA09XNQsQQpoLqNMgCHz1E5hFaU4oWepX1tQ4kngJ
   Q=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,248,1694728800"; 
   d="scan'208";a="69657747"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2023 21:41:10 +0200
Date: Tue, 24 Oct 2023 21:41:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: outreachy@lists.linux.dev
Subject: more about applications
Message-ID: <alpine.DEB.2.22.394.2310242138570.5310@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

In the application form, you should see an optional text box for community
specific comments.  Please use that box to give the ranking of the
projects you are applying for.  It would be good to put the list in the
applications for all of the projects you are interested in.

julia
