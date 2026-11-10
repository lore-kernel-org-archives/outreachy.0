Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794305815;
	b=GVQ58vSTnDk9nr8sjuPvXDZvZ9arvz9XtKylVrx4lfoRAzLXTojGPOz08EYjWOMhjq7z
	 MooI7VUa/2F8p+Bz8TI90YaV85fs0LGiEN+vtMz+Mda1ODtyrGqjpmY2Ia/AbDxlo9le4
	 dlKH7t/Es9cJLoEDKGO9EMXfuRV4U9QfMSSZd2vXbZ6zkzKxSdFiAv4xq+WvKjGRpsC+Z
	 XGGeuZ8svWPjn8qEcYJjcVeXzac7vQ2HrpN9buiii8tcjub62TXg2MbhxiJ9y0o+WRs3U
	 uhqblY3wFaO5GQBSlujOm/FOQhF4O5+mIPFQqm9f6npM5jJ48GxUcDlR1E9HR1E1pAQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794305815;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:Message-ID:
	 MIME-Version:Content-Type;
	bh=D6TLnEpp46ciuGz6lOk0RNVIxVk3twQwUE/WTEsJJuo=;
	b=5o1hw/PtLti88vJllqczbEIcvidD7mBvi97dIQwtaIJEGJS2tHKL2jqARMsl/sTtci+E
	 2iMq6vcBa+nQzx2+/zlDcksIzYGAXpkOhHksKdrvQzgInNEsJi9IoQRoAOd9PV/SlC5Dy
	 F+vQDBWnKlMWbNbV6PoxzvLmMLbSfv/lBe2MQmKMOr0qh3OGUMH5l1bEO+RhhInFW8jb5
	 BuiRGnArN3uMcOINgqec/DtSZW13jqswzDpu6Nby821whLwhsYJQ3VyKBdfQqQz8IMAU4
	 gRsy5V4Iv07hp8pSnbTP9vOU7d3oqFS399iGzrJvB5+U3qhneRjC93r/zklqZd21Ang==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=NNy282DL;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D130606A31C
	for <outreachy@lists.linux.dev>; Tue, 10 Nov 2026 10:16:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 0D130606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=NNy282DL
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=D6TLnEpp46ciuGz6lOk0RNVIxVk3twQwUE/WTEsJJuo=;
  b=NNy282DLrmdTasVB2wlPrhWgtvEdxSU5yvUfqp/aNqOgt16Yj5XilM5c
   jowMzx4rlSO/DFah9pcaLpIIUdz+ILPqYkEIt6QUv1uiuC8sBtbkoNs2p
   ZSYhAayFpIohCWlYtKB2uLpeQJaI0MO5k+s1G15ixy+1BdvqOphfontec
   I=;
X-CSE-ConnectionGUID: 2rN/KAfVR6+Zakzy/PzYAw==
X-CSE-MsgGUID: QUxlRKwrSwmPrkO2mtb/5w==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,205,1787004000"; 
   d="scan'208";a="162267013"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2026 11:16:44 +0100
Date: Tue, 10 Nov 2026 11:16:43 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
cc: elder@riscstar.com, andy@kernel.org, gregkh@linuxfoundation.org, 
    johan@kernel.org, error27@gmail.com
Subject: Application period
Message-ID: <a9b4abc1-de7c-26e2-4b10-3bc730534ba1@inria.fr>
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

The outreachy application period is now over.  Thanks to everyone for your
contributions, both applicants and reviewers!

Applicants, you are welcome to continue contributing to the Linux kernel.
But it is no longer necessary to CC this list.

thanks,
julia
