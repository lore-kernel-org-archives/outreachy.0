Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82501EDA0E
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 20:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743626207; cv=none; b=Gm7jSCeFAlkjkH2KQWdaS2KShx9S5+JAdHYridozArDmiqSAwCCIim9hbxbXI4OmUvC1JJt2yFX34rq2z8AlGCgUGmVkgnGW07eWPnVZhYa5CwalFxhqqS3lWeo+LzM3GzEpnqNKFwHHasFKfIGnrNItewmkFsGdf/nxavP/tYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743626207; c=relaxed/simple;
	bh=4ysQwqobGrUWe/0gAYnFFZBMlUUyMTcZiVoGa4AKgG0=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=cyFdGlF57KkCKCyhTlj535JfKHpJ7Yu9lT9kgBNPdDaBwaIgbKT7JfGxZ0AGhHIqfzD2b4vBB1POVI36k7hdpfG1u31rv//WbMpHwlkljGU74D/SjKRafMgnVyrWEZlYXepddvES2mVNCXbsA9Ar4Dh++QaKRYEykmcbLgyvkkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=W/y7ojMt; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="W/y7ojMt"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=dyMyeqqsOtufggWMDgC7H1sCM/PNpY8dAHYqT/zoltY=;
  b=W/y7ojMtg53gJCazqrLFEL/1hHzzddFvzqnudlLu8wiI4lZ/A5OVrHF+
   lshj2qeEjrGbRC4N8OgJQKhiSn2svgecHOBRPMeFDLCiSmpCx5GCR+7Nm
   m8tIgaHEAlZVatDNclpH/w2aBkWs6V06lqJ4DV9CTN4YUTMduseFm4MDQ
   o=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,183,1739833200"; 
   d="scan'208";a="113302164"
Received: from powered-by.xenosite.net (HELO hadrien) ([89.255.17.162])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2025 22:36:43 +0200
Date: Wed, 2 Apr 2025 22:36:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: rujra <braker.noob.kernel@gmail.com>, 
    Richard Akintola <princerichard17a@gmail.com>, outreachy@lists.linux.dev
Subject: Re: I am unable to setup and send mail via mutt Here I am sharing
 my Here I have attached the xhci files where have found the probe functions:
 so which one should i change ?
In-Reply-To: <CADYq+fZHYzo5v0XOMBOd0iRiJzcP6v1xctbaBPH2e+H61Wh0jw@mail.gmail.com>
Message-ID: <f49386a1-9298-c82-1189-4d694cadfd33@inria.fr>
References: <alpine.DEB.2.22.394.2503301522210.23941@hadrien> <CAMyr_bLCOWsNTDrCBuLgGDYFqqpNCJ46x_ob01vL8crPC4L=_A@mail.gmail.com> <CAG+54DYFO7cEkekhQ1K_5dYLDgQjw_QedqcTRGXXSkFFQ8QySg@mail.gmail.com> <CAMyr_bKKf3Hq4fVzA9h2ZU=bpL2dHJHTU+qjhusCxYBYZXeW5A@mail.gmail.com>
 <Z-vIFv5cLEyjA2JD@brak3rDesk> <CAMyr_b+K3q5avgd7HHNbSufP5pk=-HPMjTomLLc0Rc7k=6V=kg@mail.gmail.com> <CAG+54DasAjm0StZWGithAXKJbR6SPGJ7UiD_hAcBkGMJLPSRew@mail.gmail.com> <CAMyr_bJgUjK-UMryTOqT7-G0-uduzx3J9Kg7co_owghpBiwOyA@mail.gmail.com>
 <CAG+54DbOK9sEPAwF_oHR=RzKL8xh4+X5GR0K9xmrvvOauwON9A@mail.gmail.com> <CAG+54DYK-C=bAWTueZSkHLtBpWj3urNJ64_z+Ey5uGsgr+nruQ@mail.gmail.com> <CAMyr_bLhdH27ngH95MEQFp5_XMm8NzQDd7Kf9Cx4WZY9+9tGTg@mail.gmail.com> <CAG+54Db1B1MqgErFoiLfx9bePwMXZe0zZaHzVEMcU+GTW+M5wA@mail.gmail.com>
 <CAG+54Dbc3BC8H1oLUFJ1mbRxH6K01EUsT7jVceabmeuSV3N=_A@mail.gmail.com> <d7b552d0-9d57-ab39-417c-4b1bc13a22f0@inria.fr> <CADYq+fZHYzo5v0XOMBOd0iRiJzcP6v1xctbaBPH2e+H61Wh0jw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-66223613-1743626202=:3363"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-66223613-1743626202=:3363
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 2 Apr 2025, Samuel Abraham wrote:

> On Wed, Apr 2, 2025 at 9:10 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> >
> >
> > On Thu, 3 Apr 2025, rujra wrote:
> >
> > > Hi team,
> > > Its regarding the issue which I am facing in tutorial this command line:
> > >
> > > apt-get install python-ply python-git
> >
> > What motivated you to want to install these things?
> >
> > julia
>
> Hello Julia
> This were installed when chechpatch produced the following error when
> running checks on a driver
>
> ModuleNotFoundError: No module named 'ply'
>
> ModuleNotFoundError: No module named 'git'

OK, thanks for the information.

julia

>
> >
> >
> > > OUTPUT :
> > > <
> > > sudo apt-get install python-ply python-git
> > > Reading package lists... Done
> > > Building dependency tree... Done
> > > Reading state information... Done
> > > Package python-git is not available, but is referred to by another package.
> > > This may mean that the package is missing, has been obsoleted, or
> > > is only available from another source
> > > However the following packages replace it:
> > >   python-git-doc
> > >
> > > E: Unable to locate package python-ply
> > > E: Package 'python-git' has no installation candidate
> > > brak3r@brak3rDesk:~/braker.noob.kernel/git/kernels/staging$ sudo apt-get
> > > install python-ply python-git-doc
> > > Reading package lists... Done
> > > Building dependency tree... Done
> > > Reading state information... Done
> > > E: Unable to locate package python-ply
> > > >
> > >
> > >
> > > not able to install ply. so that "checkpatch.pl" can work
> > > also have tried this command as well :
> > > "sudo apt-get install python3-pip python-git-doc"
> > >
> > > Here also we might need to change the tutorial steps for the upcoming
> > > candidates.
> > > happy to help here,
> > > thanking you,regards
> > > Rujra Bhatt
> > >
> > >
> > >
>
--8323329-66223613-1743626202=:3363--
