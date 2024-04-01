Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567BF47A76
	for <outreachy@lists.linux.dev>; Mon,  1 Apr 2024 19:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711999749; cv=none; b=B7k80uLQsFNJO+fUHKQVfuN4k4e6ycmWNH2Sn+W1ZM9CJsmKJ5fglq3frm8gTLF2FYkuZfpBxNpwq/mTImn0ZOw84z/ZyQV6qBWdyM7QgjPCMAEvjdVec4R3FBIVg6z8XPARENlAneGOOVO/wbucSpkMwlbjAoQN9lmJV2JO4C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711999749; c=relaxed/simple;
	bh=wXFlu5P2j8TqAQG66K9yET6LEnIqrdUPx89PTO0tpcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XUcZXa5qxw3zO/XrmcrgLoRH8iKPU59Ey3397ae79h3eFlHAxJ4d3A8RQmKOgLUJMGZBkhlW4zUcZQUnqq/x3V0PcyaKTIfbO8a7HyIoYu41q6cdT2VgkU2hYkm2r0WExqtgZx/InM+HpJooYN3Km9YZ9hIBHGnRmM8KMr9GtAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=aj3JFmkp; arc=none smtp.client-ip=198.175.65.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="aj3JFmkp"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711999748; x=1743535748;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=wXFlu5P2j8TqAQG66K9yET6LEnIqrdUPx89PTO0tpcU=;
  b=aj3JFmkp94TxhVQT6TYJyGlMFvMBvPrhtFNO6Cx+jo0jEX8ZzuBNz6In
   8G/Yv90DSFHinn5pnjRJ7Ib1lix2D2o9zIKnMp9GLZp4DsOw6X/fbAKsr
   GzmYx6LSSA3H5kJWgm0tBweBFl0SJ8j4e4/xLOCxlMVzNmadPt2TT6hiJ
   vCXLK+cMbyG4iiMIQmSjRufXn2yCsgwa22JmX3LaKqgiEIHTAmsNENbYi
   S10ax1nAWsWExTqlxkigTPzrA2hewSRPWo2YFfQ0px6ei2LBl2pDXKqz8
   5VlyFsUrg0usGA/3CYgR3hhvGjtQuK3T71uj32KLExSlNMJwWl2QhgTEv
   g==;
X-CSE-ConnectionGUID: 6lpkEn/5R+y+qW5zJddEWA==
X-CSE-MsgGUID: 5YauS2+/RsGekUjsgo4D9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="18293050"
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; 
   d="scan'208";a="18293050"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2024 12:29:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; 
   d="scan'208";a="17708302"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.66.56])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2024 12:29:06 -0700
Date: Mon, 1 Apr 2024 12:29:04 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Saasha Gupta <saashaa1122@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: unable to submit patch with git send email
Message-ID: <ZgsLAL2sELdJ9/h2@aschofie-mobl2>
References: <CAN=P6FPod=+6zTPKy03oxCVYXzgcnnr6AFpwjZp8qap4bxod8w@mail.gmail.com>
 <Zgry0gfhKL8+iv/q@aschofie-mobl2>
 <CAN=P6FPOSOW6uKoYrmEB_7tHub8Ba09Vftjw0eeniL_MK01CPw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAN=P6FPOSOW6uKoYrmEB_7tHub8Ba09Vftjw0eeniL_MK01CPw@mail.gmail.com>




On Tue, Apr 02, 2024 at 12:56:06AM +0530, Saasha Gupta wrote:
> Dear Alison,
> 
> Thanks for the advice. I do indeed have a format-patch available,
> which I tried sending via "mutt -H pkgname.patch"
> 
> Mutt throwed error 70.

How did you send this email?  Are you using mutt? 

(please don't trim recipients in an in progress thread)

--Alison

> 
> Saasha
> 
> On Mon, Apr 1, 2024 at 11:15 PM Alison Schofield
> <alison.schofield@intel.com> wrote:
> >
> > On Mon, Apr 01, 2024 at 10:43:53PM +0530, Saasha Gupta wrote:
> > > Dear maintainers of the outreachy team,
> > >
> > > I am trying to submit a patch using `git send-email --to
> > > outreachy@lists.linux.dev` with a few other emails cc'd.
> > >
> > > My SSL version is: 2.085
> > >
> > > When I am send the mail, I get the following error:
> > > > DEBUG: .../IO/Socket/SSL.pm:851: local error: SSL connect attempt failed error:0A00010B:SSL routines::wrong version number
> > > > DEBUG: .../IO/Socket/SSL.pm:854: fatal SSL error: SSL connect attempt failed error:0A00010B:SSL routines::wrong version number
> > >
> > > I am on Arch Linux, and I have installed the correct version with:
> > > cpan Authen::SASL, and installed the correct perl package:
> > > perl-io-socket-ssl 2.085-1
> > >
> > > My .gitconfig looks like this:
> > > [sendemail]
> > >     smtpencryption = ssl
> > >     smtpserver = smtp.gmail.com
> > >     smtpuser = saashaa1122@gmail.com
> > >     smtpserverport = 587
> > >     confirm = auto
> > >     supresscc = self
> > >
> > > [user]
> > >     name = Saasha Gupta
> > >     email = saashaa1122@gmail.com
> > > [core]
> > >     editor = vim
> > >     compression = 0
> > >
> > > I am not exactly sure why this issue is popping up, as all the
> > > required dependencies are installed. Can you please point me to where
> > > I might be going wrong?
> > >
> > > PS: Regarding the previous mail, I have solved all the problems, and
> > > created a patch.
> >
> > Hi Saasha,
> >
> > A couple of thoughts here. I'm not familiar w your SSL version issue,
> > maybe google that specifically.
> >
> > - https://man.archlinux.org/man/git-send-email.1.en  suggests using tls
> >
> > - And as a work-around, if you have used git format-patch and have the
> > patch file ready to mail...you can simply do "mutt -H yourpatchname.patch"
> > When it opens in mutt you can edit the To/Cc if needed.
> > Send to yourself first to test.
> >
> > --Alison
> >
> >
> > >
> > > Thanks, Saasha
