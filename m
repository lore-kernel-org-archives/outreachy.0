Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24522BAF7
	for <outreachy@lists.linux.dev>; Sun, 23 Mar 2025 17:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742751416; cv=none; b=sDDVyoDufpLysOPSuc5G8Gz8cK8d7z7LaET8rhJu6pnE+yi31OtdyBpPl9sraEj/iFXA55Pp/pi+k7ZOSUfaBgcGVnIyTqc4FAWWezqw2p7fHbpQPc+Kp4YkdHvdHGLfonSOg8ZxOBUFlmoEdddbHFGrK/QvnVki9MwurA5LSXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742751416; c=relaxed/simple;
	bh=n77mJ0NGr/07xLSPOFnotvWKdKWTdeW0gORG0dkI4RM=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=fM1JJidBv/HXbe+sz5WMk+amqxvi1E3SRr1llJxtQBOX7zY2iBXB1lBA2X6uwqN+wa1orsmcK7EM1MS4n2renhbFTLry9npE0FsItNJ8PGah9+d5/GBZU7gz17KuZn9hHYdunXjl95SL1mMtXyRe6Fhl4L3BROZVkCGJiujeHBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=mj5SBVfU; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="mj5SBVfU"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=bT00t+1zl9dDJ9ks0il+AWIyKQiOV5xIrofLttw5IJ8=;
  b=mj5SBVfUWVCaZCRIvfbqKstCxj5IKkixP9spaLukQVpj0OhGv25wcrti
   yfDggSC5NVRvS50r1fyp8JTA7rsGHjMRqoPxY63YtThrofoMoAJe4t1yp
   HAXzl85X9cy7ak+xhZage7XoKKUP7+KJAy5o2YnTrmygbI3+EHOk8T1ZH
   8=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,270,1736809200"; 
   d="scan'208";a="214305040"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2025 18:36:52 +0100
Date: Sun, 23 Mar 2025 18:36:51 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: outreachy@lists.linux.dev
Subject: IRC
Message-ID: <alpine.DEB.2.22.394.2503231829300.3562@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

The kernel-outreachy channel listed in the welcome message is out of date.
You can join the ##kernel-outreachy channel on libera.chat.  If you are
not familiar with IRC, you can try Libera's web chat:

https://libera.chat/guides/webchat

There are various IRC clients available:

https://libera.chat/guides/clients

julia
