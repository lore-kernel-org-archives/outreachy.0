Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6D61F95C
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 17:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743011725; cv=none; b=ETm3uWHQIm3czFTcO/poV7uac7C8aUaCSzSGY3KpYXoKIv6C0Kq+d0A3Kmg9aOQ8eeBJzzj07mU679sEHF+f910U3spjJvvaHXWNm6pK05PtX6KORzsS3QAQvbco40YNV5uDjqjXBZBMGXOHNAQYqBRxgJFF1sHUvLJwi4J8NPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743011725; c=relaxed/simple;
	bh=aKK86b4LKPY1yj6u652FGwXwaMQ1G91saw0xrTW8VqI=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=AFZbWOItwC7kifmeBM7AvZUgCNPuv+qA0VvscWbI2sLfw0a5ixoIK4KOypW6BLt3Gm9G19hYHg8u4dQcDKnKYwZye/5LVmcnp+4QMIpG2V6TkY2SpmwF+i5ZyglqF4JhGDS5PV76e93eHqsJ7rRWCFc9AtMjNNzGUQUWI6M+0vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=Wn5EjcwO; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="Wn5EjcwO"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=eVK0w+jUetR0iJrDla8lqqHq7TforG0jBS+jzrnv3pg=;
  b=Wn5EjcwOSGLjF85N+Kn+Wjn0HC/8O3bOovA0K8a8aP8JZilT1PkX2U/e
   yiIJBP7APOATyAM2k15J2NxkHMCQRCj9d28O80OBb8lHawa6nZnqO7NWj
   GdEYsp4wrndpgL4jK5Pa+D5qH8ZTeNidjkb641Pua/PFxAg0rkDdCKIMz
   w=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,278,1736809200"; 
   d="scan'208";a="214936430"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2025 18:55:21 +0100
Date: Wed, 26 Mar 2025 18:55:20 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Confirmation on next steps for contribution
In-Reply-To: <CADYq+fa76jcWrs-qJVEmMJ1-GCYx59N1V3Wtj+YARTXnqNQB2w@mail.gmail.com>
Message-ID: <d22f7ea4-a311-dedb-4479-a6dbeb82835b@inria.fr>
References: <CADYq+fbMox6e7AJMkoEmYjjt-V4L29oy9WyDcL0W8pw_KL3b=w@mail.gmail.com> <ff7f6d0-3efc-d977-d1fd-2349f331a6d0@inria.fr> <CADYq+fYrDqmFS=+U2jhGAqNr19rp1ChFaog6C=o5DCQFS7FxCA@mail.gmail.com> <d273923a-3833-9bcb-9771-dca770d0d8a8@inria.fr>
 <CADYq+fa76jcWrs-qJVEmMJ1-GCYx59N1V3Wtj+YARTXnqNQB2w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Okay Lastly, please do we continue sending more clean-up patches we find or
> we should wait for your pointers on the weekend before we continue.

Please send more cleanup patches.  The more the better.  By cleaning
things up you learn about sending patches properly and also about what is
the desired Linux kernel coding style.

julia
