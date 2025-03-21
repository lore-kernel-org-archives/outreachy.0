Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4147A216E01
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 13:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742564380; cv=none; b=KRYVy+SWeK7s49ExsCfjVl0PkvDdQiNNUf0Z80u8wxMzxCxQxYxumvboVDJafigIiLaemHtA+lj5bChoWrHNhQ31B71UTazuAK1SgDJJ7ZsATuZF8HeIO64NWrj94fub8R7vHAc8sElNxvqmcYgIp5cnoKpsudWgm6r9Zy/9qws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742564380; c=relaxed/simple;
	bh=RfIosncTjTFrT0vxVDpA+zp5TEme0JHIlSfNz4MdwW0=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=p/BuT8o0q7WNj5oRGIn0qNjlClXrq8oJV7bWIOgwUaKfeXut35T8Rtw6q9amklMT2Zv60ZptYtXBxjUtLoYJff+OD3bqYIgnG7HISg+17JWmAXGkS4Ahi3PTae27XejssL65WklGXnT5sqas+/29V3lDaOqn8w36LLC0F+msUEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=vy+Ley4Z; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="vy+Ley4Z"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=hZFJuaH9k8+iOdo3X/v23lnCUYguGhgJXg1jnCrsou4=;
  b=vy+Ley4ZIBSXcTIlXgbkUtHpBV+UjPFif7SZDmHvISQVV8MlUVOIKCf3
   cRD1xC7HKU6eTF4h1NNfSz43toDLG6Y1OqGjBicZ54GfzKDttiElb5DLL
   Jwl9rVblLkCsjZCDZUUS1lGYp5rA239RKRQ2P4ma/j4Nq0AHSzj3YA8+g
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,264,1736809200"; 
   d="scan'208";a="112259424"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2025 14:39:36 +0100
Date: Fri, 21 Mar 2025 14:39:35 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: status?
In-Reply-To: <CADYq+fYGgssZ36=dCcvyZtf7LV1uR-4G9gSA7KQ7xz1tPBbujA@mail.gmail.com>
Message-ID: <10bca736-10c8-97c6-c795-18b9b62f8852@inria.fr>
References: <18312c4a-13ec-d7b6-d5cf-e5fd24355ee@inria.fr> <CADYq+fYGgssZ36=dCcvyZtf7LV1uR-4G9gSA7KQ7xz1tPBbujA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1787218722-1742564376=:3459"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1787218722-1742564376=:3459
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 21 Mar 2025, Samuel Abraham wrote:

> On Fri, Mar 21, 2025 at 12:40 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> > Hello all,
> Hello Julia
> > How are things going with the tutorial?  Any successes to report?  And
> > roadblocks to overcome?
> On my part, I have been able to successfully clone, build and install
> the kernel from Greg's staging tree.
> I have also modified it by adding the print statement into the kernel
> log in the psmouse_probe function in the psmouse-basic.c file
> in the drivers/input/mouse directory. I have also been able to see the
> message when I reboot the newly modified kernel and use dmesg | less
> Surely I will send a patch soon.

I got this one too.  Sounds good!

julia
--8323329-1787218722-1742564376=:3459--
