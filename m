Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D9A53E16
	for <outreachy@lists.linux.dev>; Mon,  1 Apr 2024 21:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712006211; cv=none; b=EfidxXzCavPH5YPiejb0kvXdz4hDSosCshbzDRJ5+KXYhqrwHlLN7QaLDmaF+tqWQT+kivcJlAtz0H1Mnw3HwKTTbv0iN64fP7SjJ/+Q4+h8sUo8sXPgYY3D1nRoeleFSbIB76tnTCK7Xncr//uthnikBC5DpsrShL5HriodvY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712006211; c=relaxed/simple;
	bh=GM+CVwavA7piPEbJBmLaj4CH9m8HW5BYuyBqKiD+AXU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EIV0fZM2WIGzi24h/MUzjJcPf0/4McJ40DE5092zteNdlmUEnI7qD+FNHR/4xNKxb8xydlSIds0z6Vh/nn7I/1h2yctUJoA2Docd3YjG/um3KfWo6uAYxVdS5F9gcHaD+gznLXq+eEhbVsoK2M+ld8gbHUgfuFR1w1Cdo80kGFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=IpVdH4fY; arc=none smtp.client-ip=192.198.163.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="IpVdH4fY"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1712006208; x=1743542208;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=GM+CVwavA7piPEbJBmLaj4CH9m8HW5BYuyBqKiD+AXU=;
  b=IpVdH4fY3tvaDoNICfmhQCKlCLiuu7aZKGt3kdlKmN9sRQF1aPw0u5L1
   11c3RigXwLyOeU6tHCplCtF5qc3dHghPhzKylf1rpCrqVFvwmsdZ63uG0
   pAhOz8e9cg3Jn//p6DG3YzLtToX4vDPHWjSdIMOxzeyvWmvefGPF/biH3
   99uwVh1txt+tNCXYagK4mnNjlEPeL4kq13hm3wmM4mly6/W4ZTd2MVpuG
   oWjDDr3TnHygg1IxyK/0SN/M+CaROhwRfjUWLNeIAAG48mu2tvIGjDDAb
   49JavaUfuHqC96aJcIitusJhI+hiDA6oRS3SgOQa+oFYzwi4mGSt79gIq
   A==;
X-CSE-ConnectionGUID: 1DlpSNuSTCGCW3a2d86YIw==
X-CSE-MsgGUID: 9o9C4eY1SLu/DsMYGYnuZg==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7016368"
X-IronPort-AV: E=Sophos;i="6.07,173,1708416000"; 
   d="scan'208";a="7016368"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2024 14:16:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,173,1708416000"; 
   d="scan'208";a="22523806"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.66.56])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2024 14:16:47 -0700
Date: Mon, 1 Apr 2024 14:16:45 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Saasha Gupta <saashaa1122@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: unable to submit patch with git send email
Message-ID: <ZgskPa8w3Wzf/LwO@aschofie-mobl2>
References: <CAN=P6FPod=+6zTPKy03oxCVYXzgcnnr6AFpwjZp8qap4bxod8w@mail.gmail.com>
 <Zgry0gfhKL8+iv/q@aschofie-mobl2>
 <CAN=P6FPOSOW6uKoYrmEB_7tHub8Ba09Vftjw0eeniL_MK01CPw@mail.gmail.com>
 <ZgsLAL2sELdJ9/h2@aschofie-mobl2>
 <CAN=P6FOtZUeOGKPSBP4gTUH3aAQc_AF8nN9AWCOWELEB2_1WpQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAN=P6FOtZUeOGKPSBP4gTUH3aAQc_AF8nN9AWCOWELEB2_1WpQ@mail.gmail.com>

On Tue, Apr 02, 2024 at 01:21:21AM +0530, Saasha Gupta wrote:
> I used gmail to send and reply to this email, using plain text.
> 
> Saasha

Take a look at First Patch tutorial 'Email Software' section:
https://kernelnewbies.org/OutreachyfirstpatchSetup#:~:text=your%20new%20kernel.-,Email%20software,-The%20following%20instructions

It has mutt setup directions and also some special instructions for
Arch users of git send-email.


> 
> On Tue, Apr 2, 2024 at 12:59 AM Alison Schofield
> <alison.schofield@intel.com> wrote:
> >
> >
> >
> >
> > On Tue, Apr 02, 2024 at 12:56:06AM +0530, Saasha Gupta wrote:
> > > Dear Alison,
> > >
> > > Thanks for the advice. I do indeed have a format-patch available,
> > > which I tried sending via "mutt -H pkgname.patch"
> > >
> > > Mutt throwed error 70.
> >
> > How did you send this email?  Are you using mutt?
> >
> > (please don't trim recipients in an in progress thread)
> >
> > --Alison
> >
> > >
> > > Saasha
> > >
> > > On Mon, Apr 1, 2024 at 11:15 PM Alison Schofield
> > > <alison.schofield@intel.com> wrote:
> > > >
> > > > On Mon, Apr 01, 2024 at 10:43:53PM +0530, Saasha Gupta wrote:
> > > > > Dear maintainers of the outreachy team,
> > > > >
> > > > > I am trying to submit a patch using `git send-email --to
> > > > > outreachy@lists.linux.dev` with a few other emails cc'd.
> > > > >
> > > > > My SSL version is: 2.085
> > > > >
> > > > > When I am send the mail, I get the following error:
> > > > > > DEBUG: .../IO/Socket/SSL.pm:851: local error: SSL connect attempt failed error:0A00010B:SSL routines::wrong version number
> > > > > > DEBUG: .../IO/Socket/SSL.pm:854: fatal SSL error: SSL connect attempt failed error:0A00010B:SSL routines::wrong version number
> > > > >
> > > > > I am on Arch Linux, and I have installed the correct version with:
> > > > > cpan Authen::SASL, and installed the correct perl package:
> > > > > perl-io-socket-ssl 2.085-1
> > > > >
> > > > > My .gitconfig looks like this:
> > > > > [sendemail]
> > > > >     smtpencryption = ssl
> > > > >     smtpserver = smtp.gmail.com
> > > > >     smtpuser = saashaa1122@gmail.com
> > > > >     smtpserverport = 587
> > > > >     confirm = auto
> > > > >     supresscc = self
> > > > >
> > > > > [user]
> > > > >     name = Saasha Gupta
> > > > >     email = saashaa1122@gmail.com
> > > > > [core]
> > > > >     editor = vim
> > > > >     compression = 0
> > > > >
> > > > > I am not exactly sure why this issue is popping up, as all the
> > > > > required dependencies are installed. Can you please point me to where
> > > > > I might be going wrong?
> > > > >
> > > > > PS: Regarding the previous mail, I have solved all the problems, and
> > > > > created a patch.
> > > >
> > > > Hi Saasha,
> > > >
> > > > A couple of thoughts here. I'm not familiar w your SSL version issue,
> > > > maybe google that specifically.
> > > >
> > > > - https://man.archlinux.org/man/git-send-email.1.en  suggests using tls
> > > >
> > > > - And as a work-around, if you have used git format-patch and have the
> > > > patch file ready to mail...you can simply do "mutt -H yourpatchname.patch"
> > > > When it opens in mutt you can edit the To/Cc if needed.
> > > > Send to yourself first to test.
> > > >
> > > > --Alison
> > > >
> > > >
> > > > >
> > > > > Thanks, Saasha
