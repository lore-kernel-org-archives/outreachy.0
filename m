Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB4720C029
	for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 13:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742303346; cv=none; b=UH99FwDFRtGA8cnrVuHzPCQ6rHRiIhGQDp7JoDxCCon/hFvl6mzTaYt0gItUQPp78fnABb8n5jbTClta+e+xaafKV5slB1AavIwLeZ5e9Iwm+AOUMt6NouVQhPFgWTpxq4fGzeDt39UFtd7cd9U58lxfXfoRoQuL53o6zkTfNxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742303346; c=relaxed/simple;
	bh=nwqZHudg8hWoOcppckWZAx+UTAAvsPArHVuD+lP9VkI=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=UhODT8X1t5FVzv4CIuUMcbNS+Zq6LIW9oJvsjhKxy/6PQ3LNfN9CBW3CAT/CrqEPMvjcnu5Qd3rEi+O14sSvmB37vWXfD0jGH7SnjNfO97LVL82+MdNx3uPoeY2ucWByFhhws4GDGroyevNfMlpfTx9DYwvjzCVc0mTxoH9L+es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=uzgKpAIt; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="uzgKpAIt"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=nwqZHudg8hWoOcppckWZAx+UTAAvsPArHVuD+lP9VkI=;
  b=uzgKpAIts9SXStgxNenFvvH30mZTSyVJMQgLEMWBm/zqA9D5muRdRAne
   yvnG/K2/DXBUSbc3Uv/8ckuacDGSM1UjabolKbWVuVMhv19bBx9RAetYa
   tRRAoACKm3/R1ehBJ2ySPhLOB1aOKcwJOTh5Ob51pujzd40oSF8Z3ybnS
   s=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,256,1736809200"; 
   d="scan'208";a="111906307"
Received: from pd9ef1166.dip0.t-ipconnect.de (HELO hadrien) ([217.239.17.102])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2025 14:09:01 +0100
Date: Tue, 18 Mar 2025 14:08:58 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Nancy Enos <nicymimz@gmail.com>
cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: Hey Outreachy
In-Reply-To: <CWLP265MB44344955383DB5471A968D8DAFDE2@CWLP265MB4434.GBRP265.PROD.OUTLOOK.COM>
Message-ID: <ad3e8b11-f60-cdd-b393-2b4b3074aff7@inria.fr>
References: <CWLP265MB44344955383DB5471A968D8DAFDE2@CWLP265MB4434.GBRP265.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 18 Mar 2025, Nancy Enos wrote:

> My name is Nancy. an outreachy intern in the contribution stage..lookingforward to making meaningful contributions

Hello and welcome.

Please start with the tutorial:
https://kernelnewbies.org/Outreachyfirstpatch

Write back to the list if you have any questions.

julia
