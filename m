Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862FE4A0F
	for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 07:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742370448; cv=none; b=H1wa1FsADB9NFmUU9An4mvMk+SXssxIa2iP0Yfd+0YTEC8Kb/wDz/KUOdH8yQlfyyDOlMG7TuFHnWtwe73CXVBdZq9h5/mkd1ZJTQ1hdCFb4No4Vk5DDVrbAf5zrwOlsN3MPjF8eaYTctFiIC2JJXlHCF3CAntNNFQbztDnWKVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742370448; c=relaxed/simple;
	bh=kIvf5AYrt30Kid27/c11No8la9sG3BoNkxE33yrgvmk=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=Misnn8eae5EEkHCm7nEWWNQdL1roxfKBkyDUR3W3RtQwa94O2o556CktwnQifbslcacabPNbZLAJzvlnki54sj2yEnCZ+1sHLjlFVjloudXXf0Sidxzn48CPS2sU85NPqyU69zwjBDU56qyAPzs5NwD70tMdA1jmzFK2z43oLEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=rLS+ngZu; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="rLS+ngZu"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=cGZneDgmpMFPe1H4V5OeR1bwIBFKWyGaMO/MFT6Ev+Q=;
  b=rLS+ngZucleF1llvev95uqrmq5yxsmZSkbB7OQ8CTwpA8TrtCIlFq+iB
   SOA6VGugxKvZ803LZIqxjdN7d7X2H+Iq5x9Ul9cvcRWxonH73DEAd/9Bn
   YKJC8/yjjGDNZ57OWh8JCH+gs9EUn8gzOycC7R+WyeY0wK+PrfivNnPdH
   w=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,259,1736809200"; 
   d="scan'208";a="213619561"
Received: from pd9ef1166.dip0.t-ipconnect.de (HELO hadrien) ([217.239.17.102])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2025 08:46:15 +0100
Date: Wed, 19 Mar 2025 08:46:14 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Outreachy Applicant Introduction
In-Reply-To: <CADYq+fZz-ehjB=mFOR=EKm016Qgm1JJ4z2rxJDZdNBSF5PjBtg@mail.gmail.com>
Message-ID: <541b4abb-c347-48e4-4e31-88c227fcbd32@inria.fr>
References: <CADYq+fZz-ehjB=mFOR=EKm016Qgm1JJ4z2rxJDZdNBSF5PjBtg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 18 Mar 2025, Samuel Abraham wrote:

> Hello Linux Community,
> My name is Adekunle Abraham and I have been accepted to participate in
> the Outreachy Contribution phase. I am delighted to contribute to this
> great project and community.
> I can see that instructions on the first steps have been given by
> Mentor Julia which i will follow up on. Thanks for having me.

Welcome!  Good luck with your first patch.

julia
