Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDED226D07
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 13:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742564342; cv=none; b=QlQU/UGKbFECh+yD4OY2YQumWNMaS2FCH1d1bPJzW8A0fL0Fu8p09mv0rL6vhVGA6Yr3pRx/qcEEbQ5UklZwFDEfAXu9Yoki3Jp1QVWUGKte7dme5DD5/9M5m3T8FT30AieW3gCSUUtARtGLX2EQmiEepeYzAp973xd2Jvv45vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742564342; c=relaxed/simple;
	bh=EWmmpyR9xiUFhCxpXI0iLTkQ6TrDho+EEwaVjVK8qNY=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=UAz/8zAiy5mTW2jpWzHv+ynqV9Dre7CzVF+A3i/hsknlb6PEa9jMsnirZ5v1KRw8MGHF35o1Fzehw6WwDb+PGEjz0gsI8xqQA+DO8ovG0S+n4C/qIbxv74ET747MXd8D0MRb+UMQIT4lAEY0dBW9bEPAgktGxX3Uo/hI8nY/6pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=Yv3EpXGK; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="Yv3EpXGK"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=MJ/byg148Csz5E5sqvNft4zxhT98Q80QLqoFgmWopYE=;
  b=Yv3EpXGKvt8iALy8tL7IYCaDxnYYRXFVEyop2Xol5PiI5MnR/qV5IfVd
   oVNHk3+uA1ZomCLctvHFxqHYjXZzB7l82XDWVEd8qg+nzuf6K7dQOIOqV
   tqX3IC23umvruA30DPDqLABKpn7g2ObKgYo9M6W2lNxgRlXgvIA53IrB1
   U=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,264,1736809200"; 
   d="scan'208";a="214139403"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2025 14:38:58 +0100
Date: Fri, 21 Mar 2025 14:38:58 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: status?
In-Reply-To: <CADYq+fbxzMXbVXG2ESpw-EfxqsBMhxEPFC0hT6U=dVuoNo07dw@mail.gmail.com>
Message-ID: <fffe51f1-2017-cf9c-caed-5b29192f687b@inria.fr>
References: <18312c4a-13ec-d7b6-d5cf-e5fd24355ee@inria.fr> <CADYq+fYGgssZ36=dCcvyZtf7LV1uR-4G9gSA7KQ7xz1tPBbujA@mail.gmail.com> <CADYq+fbxzMXbVXG2ESpw-EfxqsBMhxEPFC0hT6U=dVuoNo07dw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-189718975-1742564338=:3459"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-189718975-1742564338=:3459
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 21 Mar 2025, Samuel Abraham wrote:

> On Fri, Mar 21, 2025 at 12:53 PM Samuel Abraham
> <abrahamadekunle50@gmail.com> wrote:
> >
> > On Fri, Mar 21, 2025 at 12:40 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> > >
> > > Hello all,
> > Hello Julia
> > > How are things going with the tutorial?  Any successes to report?  And
> > > roadblocks to overcome?
> > On my part, I have been able to successfully clone, build and install
> > the kernel from Greg's staging tree.
> > I have also modified it by adding the print statement into the kernel
> > log in the psmouse_probe function in the psmouse-basic.c file
> > in the drivers/input/mouse directory. I have also been able to see the
> > message when I reboot the newly modified kernel and use dmesg | less
> > Surely I will send a patch soon.
> >
> > Thank you for checking in Julia.
> >
> > Adekunle.
>
> Hello Julia,
> Please I just want to be sure you can see my message to the list also.

Received.  Thanks.

julia
--8323329-189718975-1742564338=:3459--
