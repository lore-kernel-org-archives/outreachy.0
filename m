Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66321EA65
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 14:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743346608; cv=none; b=b337g6mxqKKDJvAii1rX7dB6wPydvQ0LutOv1m5+3IAG/h5or5UyrqEqnEaK208fdxDqpGNlXS2UlAEi+JKc9V3ccbnHttYm/Rs3FwTFTMWea3t14SxqEuaoYbpE4dD7PP3lmoNM2tbE7tB+5lus7qXnKS3ztZr+Yr+1a85M5wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743346608; c=relaxed/simple;
	bh=YrID9OXDfFtVUn0zXXiIRmRIvTdwIfhpBa53l3o3wF8=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=cx2So7Ot1eYhAlGtzHnv5BGTSprXj4varq5sosVWd5T7SYKWNQOMUIALsvYFwYcpVPPTCVk1g0DgBV6cAzetXgGvZmOSpwXeUrJCc+1dFesKPrKGpzx5BZ/IlI+JIqyhkOgC5rdq8Y4QhdNYTFp7HV4OWdI2m+IRpxb4PsQEYe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=TlSmGFws; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="TlSmGFws"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=0qftHyNIvZp6goUdAUrPZynwBL7AuG3SyNWn2jznrTQ=;
  b=TlSmGFwsZoRrvhnY//28zdO0r/KnM9/EgdF87QFP3RfvpxRWeKQyLlJY
   iQmyNSxXo0Q53XvsfDHDCgglMH5ahj4rhBh/vpB2+NMrgOpTf4vNreLbT
   CKyY2s5HoLUdw1gywsIrYNDx7fSGBxF814+beH3pd/r5Bb4VjpimqUb5k
   E=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,289,1736809200"; 
   d="scan'208";a="112964556"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2025 16:56:43 +0200
Date: Sun, 30 Mar 2025 16:56:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: outreachy@lists.linux.dev
Subject: Coccinelle
Message-ID: <alpine.DEB.2.22.394.2503301654260.23941@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

The actual internship project will involve using Coccinelle.  Some warm up
examplesin using Coccinelle are available at the following URL:

https://who.paris.inria.fr/Julia.Lawall/outreachy25/

These have been pre-tested to ensure that they highlight some
interesting changes that you can make in the staging drivers.

Let me know if you have any questions.

julia
