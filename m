Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03B5149C4A
	for <outreachy@lists.linux.dev>; Sat, 12 Apr 2025 23:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744501569; cv=none; b=upTRmNLXbsyp8lD0nrkGFMB4pfYBpoe2EUvNf/p44SmSWPPiq5NaFgm2V9qXz15RcUqnLqhK1cE3QRYaMMyztqXHdEDnMSV7+strlF3yyyqoZEes5dRkfGBBt6qg9/fYFkMO7GN0srx8N5wgfokFVogt+hgCEg4gvAXl8Ulg+9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744501569; c=relaxed/simple;
	bh=dqlLgccm5cI33EuLpYAiIoc7dCxqOtnM4+o2ac4b4Hs=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=cupCRxwVTQF5WrQlbpwsVZaQgFOujJwxeKLeht1jcbP7UZahwi5jynOibEkWRqh5hWh0FF3N6gRGC8VIATvUPlHSbj6/O2ml5iMpIru3zjp14YIMY9az/61QaErDKh5cqSwgi1KVm43D51f2vlRqzjXLvNuuHwWtbFGD1GrGRlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=LH4KzHpH; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="LH4KzHpH"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=jO47dMQwhOCkiGPOMsrg8yVX4z/pFwgEwXlkOgIYmcE=;
  b=LH4KzHpHahHGsXg7Q96ir8ec7Fgppwa84LxIAi4G4Do9cTgDl5tFIfrf
   ETxqEZ69jeyH+syeD6qq3KtOMOF9n8vDmPTn4ELVFnZcykeiIBRg4vEAx
   zNH5QoGgtpKuvtuoZn3+xnebxdIGViVtEzHdRt2IBOfekOUP2LG0Wcf2Z
   g=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,209,1739833200"; 
   d="scan'208";a="217594362"
Received: from 74-95-99-105-richmond.hfc.comcastbusiness.net (HELO hadrien) ([74.95.99.105])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2025 01:45:57 +0200
Date: Sat, 12 Apr 2025 19:45:54 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: application
Message-ID: <3b183d22-55e9-60f6-aa7f-e0d2a27cae7@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

The application period is coming to a close.  Applications must be
submitted by April 15 at 4pm UTC.

The focus of the project is to find opportunities for using the new
cleanup-related macros such as scoped_guard and
for_each_child_of_node_scoped.  Please take a little time to look into how
these are used, and include a small writeup about them in your
application.

Your application should include a timeline.  I would suggest to identify
several of these cleanup operators and plan to spend 1-2 weeks on each of
them, to write a relevant semantic patch, test it on various Linux kernel
code, and submit patches.

Let me know if you have any questions.

julia
