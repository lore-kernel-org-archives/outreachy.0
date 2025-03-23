Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F3D42AA6
	for <outreachy@lists.linux.dev>; Sun, 23 Mar 2025 17:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742750343; cv=none; b=F8fIs1DkhJgx23BP/jOCB+HtkqIIFv3MuW3GJyV3o0QQxtc7lU6XNAGtzc0ImLK1Q7nwwzRcnUi0HJJDsg/tEgSUXiaY5b+eDlXT5/qTmhtKmZyVjyg+x6XEQsN638Z6CFg2OrLPwptfOzPQCgo/Cen/L5dydoHglabzbtFsLuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742750343; c=relaxed/simple;
	bh=DaHWIrYsZj7Gv7ZUkGV4tObYt93OpVK+iO8cnEjrWoE=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=lHQPuDIcEFxOeBL+xSGfslm1e6B5NWctv4HGGohupclKAZuI+vi68vxd/orAf7bu/ObreSqSNmm9gcEU6NdQQ89VHdwgmcbH5gLBxOQegmT982KcFtuOkQ8y3j3K3BlnNkiAzQ0Xk0YBlve9y/IiA/KKV1wbULOH1rgbBuPp92I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=tIavgUIG; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="tIavgUIG"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=z4gQuz5DCzPQyloNubzq4Sb1RrA4V/aFpPe0Qgzgfa4=;
  b=tIavgUIGl1X1+CVOGJg87ajn0xJyf7C+fZyOflKiw1H5gISwoKwjFDK2
   u2NKPkxZmVa5Y1zbwhkLzZIeKvTzOMvNVVyIYo0nVCI+WOon9nsYsdimY
   BTx73Vgr1gQsa8m0Lg22wSvr9BXt/ZDFo35Lot4tQTX7FlcynKwkqx5z+
   o=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,270,1736809200"; 
   d="scan'208";a="214304096"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2025 18:18:58 +0100
Date: Sun, 23 Mar 2025 18:18:57 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: outreachy@lists.linux.dev
Subject: [Outreachy] cleanup opportunities
Message-ID: <alpine.DEB.2.22.394.2503231814050.3562@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

If you are wondering what would be interesting to work on, you can
consider:

drivers/staging/gpib
drivers/staging/rtl8723bs
drivers/staging/vme_user

For all of these, you can find a number of cleanup opportunities with
checkpatch.  Remember though that checkpatch is just offering suggestions.
You need to decide whether what it highlights is a real problem.  For this
it may be helpful to look at other similar kernel code.  Sometimes it may
be clear that what checkpatch is complaining about is indeed likely a
problem, but it's not clear what to do about it.  At this point, the goal
is to learn how to submit patches, write a good commit message, etc.  So
don't hesitate to make change that seem quite trivial to get started.

Let me know if you have any questions.

julia
