Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB4164A8F
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 17:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743355945; cv=none; b=M2r1Gl9bxayfQdmKprNmFh/D1FJHT//SDkB19j/SxNV+PJYRCwdeGqMv9I4t2JE+F8kQWtQnDgCgXADweC4ITjzXeZTYxatsEvn1Luhdm4VunClivy7gQ5gHiPz+Mqfjn8mZqZdCmNvblbDuqI4YUBF8Gib+s/fydc1LbeLQx9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743355945; c=relaxed/simple;
	bh=Q+1R4dMQmcXT54l3RgfgqqjUNWgNr0Jnc5OzVebI4+4=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=vF+30YzuhqCIeA8i9nY47VAFtJuISMFK+IajKeZNP0k6KoviwUwIdZVUy2EBOE66sLYK7+v7Fp/UnjIr4sg4D7Q0xJ/RJgO3s4+nnJmuLDUjVcUgpSNVKoWt9OMzkmRCsFRHeLXcHK5WjewdeS29pSEb+xjTRSHuKlt02gPG3Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=ZpSTx2lO; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="ZpSTx2lO"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=EFEgSddG1ioA8popXcNopIxPkvqatAxm93ju9uVIwB4=;
  b=ZpSTx2lOYKSrQ8EmRLaj1loWsNGSDy6HMPW/JfCDjmk07Up8FztjNA6d
   8dC+zrRDdUPYMDMbHihZXTkZLAWWdOMEXYkcUEkwJNw4aE4c5pC6Re2gP
   u5bCp4L+AtL0lwuSSb0xFkgj5VukigV1MiUs+cZHBw0I1G7J9o8Z/EUJi
   Q=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,289,1736809200"; 
   d="scan'208";a="112968870"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2025 19:32:20 +0200
Date: Sun, 30 Mar 2025 19:32:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Coccinelle
In-Reply-To: <CADYq+fZNk=2TVur+GyRow6STK3j4uwH+3JscvAonDPnoDJ9eOg@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2503301931040.23941@hadrien>
References: <alpine.DEB.2.22.394.2503301654260.23941@hadrien> <CADYq+fZNk=2TVur+GyRow6STK3j4uwH+3JscvAonDPnoDJ9eOg@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-803437522-1743355939=:23941"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-803437522-1743355939=:23941
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 30 Mar 2025, Samuel Abraham wrote:

> On Sun, Mar 30, 2025 at 3:56 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> > Hello,
> >
> > The actual internship project will involve using Coccinelle.  Some warm up
> > examplesin using Coccinelle are available at the following URL:
> >
> > https://who.paris.inria.fr/Julia.Lawall/outreachy25/
> >
> > These have been pre-tested to ensure that they highlight some
> > interesting changes that you can make in the staging drivers.
> >
> > Let me know if you have any questions.
> >
> > julia
> >
>
> Hello Julia.
> Thank you for always being so helpful and for your consistent guidance.
>
> I have been able to test the SmPL scripts on some drivers, though
> without making the changes in place,
> just showing the diff.
> But I would like to ask, are there specific things we should do at
> this point with Coccinelle, or should we
> send patches transformed with Coccinelle?

The goal for the moment is to install and run the tool, and then look at
the output and when appropriate send more patches.

julia
--8323329-803437522-1743355939=:23941--
