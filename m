Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18B84DDB5F
	for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 19:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791834768; cv=none; b=qy0ZNeB3nIj9lQZLR0FVbNNm6kBN3VA/vDQ67tVes3Ki5PiokUgV4fP7x0Epi+Q7w/5WqmO6zzZ6p6gjKl3Km7A3feZSgDpV0/JY6a7qE6ZZjIHiRldvzUryxPfUm3eJ80+6Wl6gK0kz7yFSm3DkaujMSAG9KKtOq1adZivyVFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791834768; c=relaxed/simple;
	bh=Z/AgMco8mJZUVwMuNN0+Coqi7OMq3963BpoRZbUEH+g=;
	h=Content-Type:From:Mime-Version:Subject:Date:Message-Id:References:
	 Cc:In-Reply-To:To; b=mF8K465jM9WIiddWUB9Kvfty28efebxQzZQc8TL8cFpIaYjqDZsRM4WtDtLk6XHIJRnKEUGBgCcJjEJY68AKvTxCdCK11q/J1+jXelfViIi3K+9PqifyPW+bzoZR59/0FU6fNPd0ExF5G6w4WShoMKTED82wKeGH2Sla1ADE6+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=SwxRhbxU; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="SwxRhbxU"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=content-transfer-encoding:from:mime-version:subject:date:
   message-id:references:cc:in-reply-to:to;
  bh=GoNSOBQDgddSWnuLwHd0rZS3/ScOhx0bgum1vzG4Oog=;
  b=SwxRhbxUuGjNgW1cpvetb1N/sBaUdJuMuZ08Vc2S5DMOz2JWnovBVo3M
   abWawkDwAsQieSDT3NMYC25eVC9pvqLznxXVHr2+iylRahbPkhmX9LKnB
   ZXlXMtHsCSIQfZkXuEdNTs4VC20eDwZrAY4jv2qj5gJlJcR86OdVCq5dR
   0=;
X-CSE-ConnectionGUID: TvgN1eY1Tyeq/pde4N2T6A==
X-CSE-MsgGUID: ZjmAowncR9Sc8d9qN5aimQ==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,154,1787004000"; 
   d="scan'208";a="159605507"
Received: from unknown (HELO smtpclient.apple) ([37.168.179.109])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2026 21:52:29 +0200
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Julia Lawall <Julia.Lawall@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (1.0)
Subject: Re: Introduction - Outreachy Applicant
Date: Mon, 12 Oct 2026 15:52:15 -0400
Message-Id: <45F4C891-F6AF-49CE-AC12-C5A6422D4773@inria.fr>
References: <as0HUy5rtCKSJF7v@user>
Cc: outreachy@lists.linux.dev
In-Reply-To: <as0HUy5rtCKSJF7v@user>
To: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
X-Mailer: iPhone Mail (23E261)


> On 12 Oct 2026, at 14:09, Yalagada Pavan Kumar <pavankumaryalagada@gmail.c=
om> wrote:
>=20
> =EF=BB=BFHi Everyone!
>=20
> I'm Pavan, a CSE graduate. I've been selected for the Initial application s=
tage
> of Outreachy.
>=20
> I'm excited to participate in the Outreachy contribution period, learn fro=
m
> mentors and other contributors, and improve my Linux Kernel skills along t=
he way.
>=20
> Looking forward to learning and contributing!
>=20

Great to meet you.  Please check the first patch tutorial for directions. An=
d please feel free to send any questions here.

Julia


> Thank you!
>=20

