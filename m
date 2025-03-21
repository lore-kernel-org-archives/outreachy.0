Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D558155753
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 11:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742556745; cv=none; b=tPVjjMOvWYjTeyMI5aYjzcAw/C0mrdw/y2EdbUzU+9Ee6PRlcSElLLkDFVJUEMRYZj1G2zhxatRkOHW7t8z9y7yrNfMd1i4Gu4ymL4bS/yND/hMRPVcyzDCqAtIBGwvjOu34KO7Px7LLeYS37EFux478tQgwiox8N6pQ558j/nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742556745; c=relaxed/simple;
	bh=w3RiZW2kjxIvxM0aT+JaXLqxOwfXCNs0eB/fWWuAtik=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=p23M/FloozNn2E9r9bgAutnhduFokWh24WJb24UFUQqLjMLxAjMiuc8YNJN1gOIMKDYoQYXmLUvOo5mpK0Wr2o1gWzszD2b622AGv34poznlEMdcs51EQbAP7BG5jf5bmJM06ZGR9ohHrTE4lKBTxj3mpTpUsMDJ2gnZTAo8iSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=sqR3XmBQ; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="sqR3XmBQ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=4/1BYwS8XUZAw6SeBJVxXZ7JX6id7V/ocnI1GfCjNwg=;
  b=sqR3XmBQb72gApiO1ZlYhR1vjo/dPSifgGNx4ElzQ26cefD7SLe8udZ+
   DYes9O1YkdlL3nn5d0e7GOgkXaKRxnFvtMD7TuW5tAFR/Hu9Yr6oOQx1W
   /YKVak3+RfwZhIHJPLuONw6nGd/eNjfTYhEB3S6UTWZM1PSb78a5468pE
   0=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,264,1736809200"; 
   d="scan'208";a="112246584"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2025 12:32:21 +0100
Date: Fri, 21 Mar 2025 12:32:20 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: status?
Message-ID: <18312c4a-13ec-d7b6-d5cf-e5fd24355ee@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello all,

How are things going with the tutorial?  Any successes to report?  And
roadblocks to overcome?

thanks,
julia
