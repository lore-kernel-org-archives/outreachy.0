Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A57208AF
	for <outreachy@lists.linux.dev>; Tue, 24 Oct 2023 12:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="fXDLOFrR"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=qkENs9HgBPFGCS0OML5m9sr8UDCu+AJClgSm0fSpI9k=;
  b=fXDLOFrReDNiXhkEC8HFapnLTkb8d+GiM72XUP27F6hp2re8k8SgvYQE
   tuupaXuQsN5eBkELfwGVEmZwUyXVoWQxw6ULYKto+RUu8g0I9KUrsRV/A
   qWFr4Tg7Irc4DrmMSXaLuvcPkD5GbxYnEzFVvzmjQEvR/5jB3m1LEJtgr
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,247,1694728800"; 
   d="scan'208";a="132921169"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2023 14:44:52 +0200
Date: Tue, 24 Oct 2023 14:44:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: reminder
Message-ID: <4dfffced-351a-74ba-60b6-ef07c72e587@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

Please remember that you should consider applying for multiple projects,
and including somewhere in your application the list of projects that you
have applied for according to your preference.  We will not put you on a
project that you have not expressed interest in, so if you apply for only
one project, you reduce your chance of getting an internship in this
round.

julia
