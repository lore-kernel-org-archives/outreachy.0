Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A13A511E66
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 17:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791911375; cv=none; b=SJczyzGbkfpQuBcYtHOZbtxUeSoYqY8I9WBifRtNBtOCdv2o5SezuK2Gzp3oJZqNlnVciS+Qrnf9Fi0EILiIkyHrKUR3wbBOupCChmXSFPLzKciZM5p0cwXCDkgPZH0eowCN8DneD5tD45uki97vJocehNexffFwORQv7vy8oC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791911375; c=relaxed/simple;
	bh=JtKdbfkXqP4esQFMo45URvqmifRBplLbrPGZ2N2Zi5A=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=tMTus6S6h8yNwswJQyvbULyQT+BLrjTF6iRebDmw7Fwa8G5N9z2skUP5dUgdoJjtWwdyFANAyDB6c85iukfFq0BjOl+x5+UbeLtgdfEkqDXcK9sEVe6c8sXt+YDytOHKU90ng8qur/tq8+22NAcWKEQcEth0xeTlAeiCrmfH1Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=ZTWZhk+N; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="ZTWZhk+N"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=JtKdbfkXqP4esQFMo45URvqmifRBplLbrPGZ2N2Zi5A=;
  b=ZTWZhk+N6LTqZDDSQhEb+VLPe6juKfbWMWCtP4L/i/T5auAmWtAE9pzq
   jRsKR0612KsSu8zkNgyZQE7R7+MI32U43TfLtt1c/VQfAm77DLIz45AY/
   huMvI5WyBPsHXwbmI9D7j2n3jYWF1X6q4Uj+x3Nxfor7joIJ4hwf3l/OO
   0=;
X-CSE-ConnectionGUID: x5KfDWGUQLy4bPKwjcmd9Q==
X-CSE-MsgGUID: IK+HMlNJSDqqq4iTij0K3Q==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,156,1787004000"; 
   d="scan'208";a="300019559"
Received: from static.host-68-71-1-178.nrbn.ca (HELO hadrien) ([68.71.18.178])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2026 19:09:28 +0200
Date: Tue, 13 Oct 2026 13:09:27 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Introduction - Outreachy Applicant
In-Reply-To: <CAFpMFfB07baJZqdHTAhJWbB6D6m-qfBoswBgmXkn_N2KkumdRQ@mail.gmail.com>
Message-ID: <67c1ef8-8ff0-f52f-319-fdf8494f94@inria.fr>
References: <CAFpMFfB07baJZqdHTAhJWbB6D6m-qfBoswBgmXkn_N2KkumdRQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Oct 2026, Okhuomon Ajayi wrote:

> Hi everyone,
>
> I'm Okhuomon Ajayi, an Outreachy applicant.
>
> I've set up my environment, cloned the staging tree and built the
> kernel, and I'm now working through the First Patch Tutorial. I'm
> looking forward to learning from the patches and reviews on this list.

Welcome!

Please take a look at the list archives to see the discussions so far.

julia

>
> Thanks,
> Okhuomon
>
>
