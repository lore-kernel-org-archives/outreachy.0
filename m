Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C434367
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 06:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743576190; cv=none; b=uo7mY+Kn+A+z40uH3erxnm4P7puj+9mPUsYQeYR2mW3/O6DMImg+xG5sY9amIHxPl2Mr08MPI716gJ7OdnOZXEWkWz/A8f7nCJCMaeocTrvc8y1cOXRXDIfu924H6xelx9lNfW0jMTFPucQTtdFN2LTrUH60ZpozyF86daVkzs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743576190; c=relaxed/simple;
	bh=pkbUh9vw9kdrLxV3Tp0leBGNGfIuMcKH8eJcQEwypu8=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=GDJB0/4zrDyOL15BtmYsRozplMyddzBCGlF/i29g1Yxfq0ylPNO4idICbRv1QGnSaj2RzCUpBmFR2rdjO65LjBipYcgJTap++UynqBR+nVURVZnNwzHGklCSDWoqvXW+xhebxEFBXE3FhLoyZRRcsi2V0JE2/1eGMZMoH6T2B3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=D6bebKjw; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="D6bebKjw"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=gGOXuo4nveZ2/CUPCZcjHE+K1Yi3t71+QGvtKUGpnFM=;
  b=D6bebKjwjsmJPHmwdvztS+CeUuWqR+xkZzR86qeT3kwd5FGXFA+3G2ZW
   iQJTaQ2TiKFnldjvzpmN8uFp7RojR7nGDadM0yAIbh97Z2TsSLAl63uC8
   D9cONnZPJkc+VRaZMZmChR0r6NaRcBNJPBH6Dxa1GkuottfVuXrx6wUKx
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,295,1736809200"; 
   d="scan'208";a="215915094"
Received: from static.ip-78-108-136-42.signet.nl (HELO hadrien) ([78.108.136.42])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2025 08:43:05 +0200
Date: Wed, 2 Apr 2025 08:43:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: patches
Message-ID: <cd684867-6bd3-f7ef-9672-6513e0efa336@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

Please send more patches.  Greg has been busy with a conference in the
past few days, so it's not necessary to wait for feedback.  Generally, I
will send some feedback if there is a concern or suggestion for further
work.

If you have sent some patches already with no issues, try running
Coccinelle and sending some patches according to the suggestions.  It is
not necessary to send such patches at a large scale.  Working on one file
at a time is fine.

julia
