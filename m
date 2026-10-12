Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B2A26656D
	for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 22:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791844113; cv=none; b=BVtaatGK6TECOndOMFuprPwiT+t0F9WOxVp/zSy56QBZf8PDhiybf0ye76uEM0PJ+wY/fBxjCzNIK6laxCKaRVQEDtacNAsgUi2T1VQA07ktW2lY//YKqsTuN9XSukoeG36qummbEd2si77sOc+jvr6Fme5d6oktm6e3QVSBAnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791844113; c=relaxed/simple;
	bh=eHsre9+Nctx8QI0UH5QuO++LGKvxQlyXkziU0XjPpSA=;
	h=Content-Type:From:Mime-Version:Subject:Date:Message-Id:References:
	 Cc:In-Reply-To:To; b=jhqLe8EJoA6W2NCNM3hFhvkEHPg93irFZruhNF9idifH+FyQ8RozapGJHTlkDIyAS9rONqd4Gj+7Kl0c6MvTcX0R7JB9HZVCIV/NcM94OGz5ZMptqIKMip+DV9geDkiD1w9PduXAq3r7UE9/nqH7/1U/zosws5QurVv/7FI/+zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=uH4ht/Q9; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="uH4ht/Q9"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=content-transfer-encoding:from:mime-version:subject:date:
   message-id:references:cc:in-reply-to:to;
  bh=eHsre9+Nctx8QI0UH5QuO++LGKvxQlyXkziU0XjPpSA=;
  b=uH4ht/Q96eT3V/hpRROe1rTYQCPEAUaT00y9rEUWvy78oM1rPpgAiVWD
   UHkhwMzmII0gsAfMPLUoUupFmMt8Dl9Wotx2OlB/3MLnluPNos7nJvcJr
   snBlQssFhpkebTNgKJ5O0AAthBIJKuFSQOZ/jpq6NkkFnW9IvsR8u1X27
   k=;
X-CSE-ConnectionGUID: Cz6zAZxaQxmVNDHWhqq3gg==
X-CSE-MsgGUID: 710agtwOSR2kDrgGtdI41A==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,154,1787004000"; 
   d="scan'208";a="159614912"
Received: from unknown (HELO smtpclient.apple) ([37.168.210.91])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2026 00:28:26 +0200
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Julia Lawall <Julia.Lawall@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (1.0)
Subject: Re: Intro to Outreachy
Date: Mon, 12 Oct 2026 18:28:13 -0400
Message-Id: <7C526C66-707A-4509-82B8-837DC2D7B0BF@inria.fr>
References: <77a36fee-7b04-4913-84b5-40a84dc05060@yahoo.com>
Cc: outreachy@lists.linux.dev
In-Reply-To: <77a36fee-7b04-4913-84b5-40a84dc05060@yahoo.com>
To: Jeremy Clifton <deaner92@yahoo.com>
X-Mailer: iPhone Mail (23E261)


> On 12 Oct 2026, at 17:54, Jeremy Clifton <deaner92@yahoo.com> wrote:
>=20
> =EF=BB=BFHi Outreachy,
>=20
> I am Jeremy Dean Clifton. I have recently completed an apprenticeship
> teaching me about programming and databases.
>=20
> I want to improve my teamwork skills and linux kernel knowledge.
> Outreachy could be the perfect place to accomplish this. I am eager to
> read your responses and thoughts. Feel free to message me.
>=20

Welcome!

Julia=20

> Jeremy
>=20

