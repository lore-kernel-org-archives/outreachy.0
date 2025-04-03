Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0192505CE
	for <outreachy@lists.linux.dev>; Thu,  3 Apr 2025 14:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743691646; cv=none; b=H0j0ZJEEgtSaVPmh1BjNmTiYQy9V4XaMlV6LyBdoUKHIE90FJdfQY36Xr219ZiaOzC77DhQ8klNuHKwACrnXLHkynhc9K44jfETFfEU5wME2KVBz+fUv4nMVXmEuRTn5T+hQbzDQtyAkQ8XTvrprnakfZDTytFDKVciHP3QyZtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743691646; c=relaxed/simple;
	bh=mfsMO1t9Ct1zfC21KCewwTeMVHpbVbNrw/UswlPhOko=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=u7dlyI5qK/slJXdbFUkOMpiO6SZCxwfUaLqSDRJs/+ToaOucS1OTQe/o+581rrxhlfFXRG4OBLXIpYtefm+qqYPtayhVoXrw0F2RYx8+bWIOFdXZFPHg6nD1gI/atlD8M3G0t1vX5vorYoryrNlLy4AoARvTePkhXTjY/Av47gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=svKSkIKj; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="svKSkIKj"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=X4BzDyPmHcfGykUgVmn7h/c6b2iaXODtHMgDzPeYyrw=;
  b=svKSkIKjmT9MbYSoNIXl9pH0L1epb633bBFYJn2HYkpWuvBixUFevqZs
   b8ff42r5J+1TkxkCJIYbPd6BSUj5g5tg0uZFCDESFVrzx2LGA506nSctV
   3EcztLg5VKXRFZXOfWfAVgfi+rqk2D+80zLaL9NSPP7K1TuP1pNG7qtNA
   k=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,184,1739833200"; 
   d="scan'208";a="113385320"
Received: from a81-173-67-6.dsl.pocosnet.nl (HELO hadrien) ([81.173.67.6])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2025 16:47:21 +0200
Date: Thu, 3 Apr 2025 16:47:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: patches applied
Message-ID: <7ebfe5f5-d6b-bb13-795f-f7e61196cf99@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

Greg has applied all of the applicable patches now.  You can check his
staging-testing branch, and if you find your patches, you can update the
outreachy application patch with information about your contribution.

If you don't find your patch in his tree, please try to fix it up and try
again.  If you need to resend a patch series, you should rebase against
his tree and omit patches that have already been accepted.

julia
