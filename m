Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793491552;
	b=YaUj6ehYqIDG9FZCZTioWgrbVX35bQYyIiSQASSEls8EIuzQuzDlwbw5n/J5WZE/UrZO
	 umcFQulr1OjRdcx9744d8FTa/Lff+b8e8xAeYzXfJhc0jhgwyWm9DOMCfRLy4QRXyYXcE
	 Av/nSiBrpZjgYNZ0HhcHWYglFwL59nbzLCE+s+IcE1+9lhN8MrzQjosnnooAfT7Qyxxq4
	 AKW70vE9XhC3uOJhdnpP881T9e0ATH0SW9uxGncmg21CdYNA7SKutXWLo4jH4pnbzUT9Y
	 CxB9LVMcD1hWX5IdXTgCzqDmHc7ZQw1zD6dhoGKnjIsGB/UCe9hOtjf62QHfcpR4+AQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793491552;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	bh=H1bO3YsbpKjqNOic03VeckKAmzjhShzGwa5XPuSMHvg=;
	b=b8UCgFXhXQ3kJGTMydy/tmGHbz0bxh6iJUECQ5B6RndNJ4w8QPbBi3GFTxELAyHq8avG
	 cKzgU7WJr1Zo9Cv3M8/rYMsVzbrTp7Teytho9Xt09xP8+ivPm/3UVwm3zQbfncUf/Y8sQ
	 M8OS5S9pYZD1zCbdh6DMxQ2ylwqldmSOBnLwc0fegAu8Vde1xE+Re3ZaW91CM8jhwD23y
	 r1YtxPvRpGKO4Og1IAxxobzlIAt79G63eMsJWJgkeWOBim2DRzO09/btzMDeOvA+zPo1x
	 XMO69qkfH3fQk68FRSfqIFUHN2dK/2svL9Xt9tgrY7raP2GnDUa37bau/ftqBr04fqA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=QwJjvpDZ;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E655F606A31A
	for <outreachy@lists.linux.dev>; Sun,  1 Nov 2026 00:05:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E655F606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=QwJjvpDZ
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=H1bO3YsbpKjqNOic03VeckKAmzjhShzGwa5XPuSMHvg=;
  b=QwJjvpDZAD8X6XFAwvi2Xb/68M9NO7ol4obSoFExRKoC/SH2eZIyPfRl
   KpwL9K+iJctYy8DUF0BHi7AyfAistvamp/kgieEZIFnM6O3Ecp2igHvqA
   9f1Brpxe054ViMVwWPpaUZsKYjDz3WVKMQBgN0fEd882PQU5DP9UZt8gJ
   8=;
X-CSE-ConnectionGUID: jHPhM8ZNT/qXjS7Q1D0S7A==
X-CSE-MsgGUID: loMUbIVlRJyN+ouD+pFjjg==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,188,1787004000"; 
   d="scan'208";a="161389271"
Received: from 205.153.92.155.ipyx-135073-zyo.above.net (HELO hadrien) ([205.153.92.155])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2026 01:05:41 +0100
Date: Sat, 31 Oct 2026 20:05:40 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: application
Message-ID: <f169c986-285-30df-0a-808fd0489033@inria.fr>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

Please remember that the application period ends in a little over one
week, on Nov. 9, 2026 at 4pm UTC.  If you haven't started on your
application, it would be good to do that soon.

julia
