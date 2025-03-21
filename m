Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA6022AE71
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 12:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742561357; cv=none; b=N7lQv3GVqbMlC3If/IOZ+H24K0+EwU+ShsVXLoENyfYSU0fy1dN6VK5BxuumNA9SKczH8ttfVMT4n9YCWkaPJ0VNzSGoIAHfbK8aAmjaoJXvoz39KvI3djwPNs+vdynjUnoTOeAlLCLzOqnMSfxSRzJFSK4l401BAZI3KH+1p6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742561357; c=relaxed/simple;
	bh=abBv0opUjavP1EorW7eu8vkvJDRHWlJfEnpzY066hEU=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=OopzLUGmyizQh2lBZR6fsMuW7F92soPFw6omqy1Ly381N0cI5uCirdskhTbQ6LeBTozDR+ElinJhEL7CKT8eltvZYNRU/ehDpxJDQDzd9KAtuwq/U9mHOFTvQ1GnldzZOiDcfisWzZhFBH/BADWnv6rz8aYJkUtqYdQ9QHJRHME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=rt6G+xZV; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="rt6G+xZV"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Wcv2C3HLf5uNsGbrHt+P71QmOIWUhfmOdtg5vcIlR6g=;
  b=rt6G+xZVanjl+fv6cSDhD588N3igI3YceU/Z3Uzv39wZuWKzmKgS/rMB
   7lC+eaunJG4jAQDSmzYekDYcWhayFeY6jxgwJX4paHWQFMqA0hJ8+dhXs
   7MXxq7EsEUVrAPKANCBAOvi0QBfhCBr7JpufjsBDsq3uUnmnjzs6LilKb
   I=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,264,1736809200"; 
   d="scan'208";a="112253258"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2025 13:49:13 +0100
Date: Fri, 21 Mar 2025 13:49:13 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Nancy Enos <nicymimz@gmail.com>
cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: status?
In-Reply-To: <CWLP265MB44344D951D471C5624C30EA6AFDB2@CWLP265MB4434.GBRP265.PROD.OUTLOOK.COM>
Message-ID: <baeff439-c3b9-cf9f-e9e4-8173def11e2c@inria.fr>
References: <18312c4a-13ec-d7b6-d5cf-e5fd24355ee@inria.fr> <CWLP265MB44344D951D471C5624C30EA6AFDB2@CWLP265MB4434.GBRP265.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1067084767-1742561353=:3459"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1067084767-1742561353=:3459
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Fri, 21 Mar 2025, Nancy Enos wrote:

> Hey Julia,
> Thank you for reaching out. Personally , i was struggling with the initial setup, but after taking time and going through the documentation, i thing i have the hang of it. I will ask questions soon, once i
> try out my first patch. Hopefully today..Let me formulate the question.thank you

Good to hear about your progress!  Looking forward to seeing the first
patch.

julia

>
> _______________________________________________________________________________________________________________________________________________________________________________________________________________
> From: Julia Lawall <julia.lawall@inria.fr>
> Sent: Friday, March 21, 2025 2:32 PM
> To: outreachy@lists.linux.dev <outreachy@lists.linux.dev>
> Subject: status?  
> Hello all,
>
> How are things going with the tutorial?  Any successes to report?  And
> roadblocks to overcome?
>
> thanks,
> julia
>
>
>
--8323329-1067084767-1742561353=:3459--
