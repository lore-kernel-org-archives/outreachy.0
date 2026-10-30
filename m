Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793397924;
	b=J0pDrQeNT40Rc3Oou7HSkQ3Iat4tPxZSeUFffALEzGIERTSE5ddiZTIL0rBkSAKHckR3
	 E74gW7JMfAtRFpODDdb/8M8trRfhuFa6qkPBQz5U89RdQb8FDGob/6sHOfri5COL+MDL2
	 n5DO5+MYVWw3xp0KFFZpgV/0Gzvjo1B6htiMK8N7fiZKNnAr2ujk7PVsBoHcjuJEksGBy
	 MkYArji+9BUum/kTfM2z5T2dUrJgIv5sWQWdwaYiDhmjcSInCdULsmN8gffU+AHnsyFPh
	 /R5tFh3BTFMdp5NWwjEJHc6yE/6rMzNIxga8TdVf8NvMnkLdvkaPQgp5/mCiHDJ9NcQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793397924;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Content-Type:Content-Transfer-Encoding:From:
	 Mime-Version:Subject:Date:Message-Id:References:Cc:In-Reply-To:To:
	 X-Mailer;
	bh=wdIxfdyesRQw7DAECcAdvcPwRXj/7bIegaRg2UbfTVU=;
	b=y12gDerQ0kLr+hjnaxzd+ZNL2g3trNWjH31cwLyPI+I4WG/HSEJYz74oDzYsnrzbWWsE
	 lqcEE/8L9NrDxJFqOAuRZatXAHmWklyaFnbM+JDcFQKlyf2oWji5MjQJ8EEG0bx8NmPst
	 iey/LXamxwnM2nTMGPE+w/3TIHBGauxGYgwj6swKIakkrEfDmscMOSa3p431Lc/XXfwWh
	 ovMJuqprZ/qBnlumXKRhYjBE78REW4ZPoiLjZIc3Eu0LBs/jVw3s/1krQMNnhzZ4yWld3
	 YDMliDMZKon7T2BceUMppd5OGrgPhva2ORR/flH8Tf9Sr4M3wX6U6CS9N2NK4cjWMzg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95777606A31E
	for <outreachy@lists.linux.dev>; Fri, 30 Oct 2026 22:05:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 95777606A31E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=content-transfer-encoding:from:mime-version:subject:date:
   message-id:references:cc:in-reply-to:to;
  bh=wdIxfdyesRQw7DAECcAdvcPwRXj/7bIegaRg2UbfTVU=;
  b=pFkM8JJx84GrFNy8sXmGcmotX4Bo2iO9wIa+Bjw6Jrr2XCYe2k0CzHpX
   f4FAMF8jgBC97WDBDf1udxv1oYwAE56eaK27GoVycC0LIpr4HFxZwV+0e
   AcWQYIwpVxAsH250uuy+NnOVZ71IajiBnNiMKL6UnTgFjjf6N4ZzFpMEL
   0=;
X-CSE-ConnectionGUID: J4fqoeuOTjay9bxGSlJ9sw==
X-CSE-MsgGUID: c/SdYGOwSCKrHemotgE3dg==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,186,1787004000"; 
   d="scan'208";a="161339684"
Received: from unknown (HELO smtpclient.apple) ([37.168.194.80])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2026 23:05:11 +0100
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Julia Lawall <Julia.Lawall@inria.fr>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
Mime-Version: 1.0 (1.0)
Subject: Re: Tracepoint project: starting host1x_syncpt_wait_check
Date: Fri, 30 Oct 2026 18:04:56 -0400
Message-Id: <1BD35224-C414-494B-B995-9ADA81B68239@inria.fr>
References: <20261030205216.24718-1-obabitemitope765@gmail.com>
Cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
In-Reply-To: <20261030205216.24718-1-obabitemitope765@gmail.com>
To: Temitope obabi <obabitemitope765@gmail.com>
X-Mailer: iPhone Mail (23E261)



> On 30 Oct 2026, at 16:53, Temitope obabi <obabitemitope765@gmail.com> wrot=
e:
>=20
> =EF=BB=BFHello,
>=20
> I am starting work on removing the unused tracepoint
> host1x_syncpt_wait_check (include/trace/events/host1x.h).
>=20
> I found no callers of trace_host1x_syncpt_wait_check() in the tree, and
> a lore search shows no recent patch removing it.
>=20
> If someone is already working on it, please let me know.

You can probably use git log -S to find where uses were removed.

>=20
> Thanks
>=20

