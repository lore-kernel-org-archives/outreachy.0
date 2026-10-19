Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.83
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792442472;
	b=yWxLROdc/HdSgQdNNp6gFjoudNrf2vFU1pO7IsdSU3+UWiFW4GWqHiHzlAsLQtwAjhbR
	 YkVpYyUsMNa9hA5zrkTaxYK9JtnrPoMn7Cmp81PVI8EmJIJDsDleg+SJK3gRBxad7k0Up
	 4BeTFTJf+3gLebRgPo4CdhJWR538f/BsgOHAb2bYrufCJcMrH2VqlCQXBgi7S+omWFWs/
	 ovjErpy6V6G0mVfFRhnMLnkxjjWYcsSTssSRONq25lE4TH/l7ZVaFYTxeNJXifTKqtdi3
	 A1fjG7UfR4KsLkkp3xkhXluAvJApasXEILeEjSQuXxO+nXndT+2qwCPktAFOpRl0K9A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792442472;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Content-Type:Content-Transfer-Encoding:From:
	 Mime-Version:Subject:Date:Message-Id:References:Cc:In-Reply-To:To:
	 X-Mailer;
	bh=NIGP5DdKM9ORz07Cc0kj5Ttt2H0TO/cySo3sDyKis8Y=;
	b=Czx57p+byi5/29XTaqlg8oUaSSRdlJddMZKD8jvqNecf/KWaGpqs0hYq7k61jwAu8c63
	 8vIFDMZQzc0mLm0yiO/tJIhDYdmZERIDd0mLXquSiwAyOcXZJg38Fx1W0m4ZXdbxh/5nC
	 DtYEomNC6Z2QyKKQK/1EQaF+QPm/Xa3X+HW6WyjkqQYMGdLLAakHiW40ea7qOQJ3LV34g
	 JJHEhPOHoxejTWcseAJjGgY2TWqF6/hADopXPZDH8RDDQ5g0ROYPHLJ4BmpTSSnkGhYJ5
	 znYBpX9R5+hB1HnHOWmbBSsCYhCNLyT0rp3HiYgrcTjI4l4LwJ+sJVWZ5Vx3AGJ4tmQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=ueRp5Wva;
	arc=none smtp.remote-ip=192.134.164.83
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC83F606A31C
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 20:41:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org CC83F606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=ueRp5Wva
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=content-transfer-encoding:from:mime-version:subject:date:
   message-id:references:cc:in-reply-to:to;
  bh=NIGP5DdKM9ORz07Cc0kj5Ttt2H0TO/cySo3sDyKis8Y=;
  b=ueRp5WvarWij9sl+sesz1fXEPlTL/UgAv4F75hAaSlYit3QamZTn+wWk
   GDRhBFoV5LvagAk3qg5JMHPKqXptmh33Pdu5pekfVbxfmwkY1K0TT/xUc
   5cfhCqBuJF30661TZnUk0fx4hrWqQ9J9NQO+DVdWy8wGPaxGZ6G11jEQC
   k=;
X-CSE-ConnectionGUID: 9FmzmehpTTGkvQCI323tsQ==
X-CSE-MsgGUID: /jUvpV95R8CwjBswm9QN6w==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,168,1787004000"; 
   d="scan'208";a="300978434"
Received: from unknown (HELO smtpclient.apple) ([37.168.200.108])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2026 22:41:02 +0200
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
Subject: Re: Patch Submissions During the Merge Window
Date: Mon, 19 Oct 2026 16:40:47 -0400
Message-Id: <EABA4B3B-E8DA-4A86-8667-E152AD35022D@inria.fr>
References: <atZNNOiZIhzLf2f8@user>
Cc: outreachy@lists.linux.dev
In-Reply-To: <atZNNOiZIhzLf2f8@user>
To: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
X-Mailer: iPhone Mail (23E261)



> On 19 Oct 2026, at 13:33, Yalagada Pavan Kumar <pavankumaryalagada@gmail.c=
om> wrote:
>=20
> =EF=BB=BFHi,
>=20
> staging-next is currently closed due to the merge window.
>=20
> should we continue submitting patches to mailing list for review
> during this period, or wait until it reopens?
>=20
> As the Outreachy contribution period ends on November 9, the time is
> quite limited. I wanted to check how we should proceed.

I think you should continue submitting. Then hopefully your patches will be r=
eady to go when the merge window ends.


>=20
> Thanks,
> Pavan
>=20

