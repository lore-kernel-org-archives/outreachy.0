Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A024F5FD
	for <outreachy@lists.linux.dev>; Mon,  1 Apr 2024 17:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711993559; cv=none; b=WVneIN68L4Y2EGf7NX4Yckq4oKjextqqVbu/NsB709O5EiXA7YUepiEaOhnvw2KdPMm8hc3FIaU9rfZqckGddF6etvzdwUZBRXFYIQBckKx8pT9G9btLvlB9fpvfnaVWIpNQyH5p0cmXCeTDlyb1uC0x1zvXU1U04STh+v/Gnfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711993559; c=relaxed/simple;
	bh=+pTAJkCDDXd3jYqwZsbodkw9YPuMpl4wCi/90osYqog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tRgOiU+VRJ3rqzEhsj8X5s26lmcKuRF8cD4exakSEi9GD7w25Iod7UdJPs/FLiYuFMXgmaaR5G+tranjm9m1y3lo/Poe7+uBzmbBkFhFoGMDiGY/ufYiJPREClNNWfCk99Vy6NOkvrUWbxcHhHijWr3jELEVtdx0KHOJWeAP/uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=eLNPQAaD; arc=none smtp.client-ip=198.175.65.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="eLNPQAaD"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711993557; x=1743529557;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+pTAJkCDDXd3jYqwZsbodkw9YPuMpl4wCi/90osYqog=;
  b=eLNPQAaDhrw7HrIWlIhePlbAWaiwrviqqDCAyCF5UXzStQHxlcijZmAG
   3f0cog/H6/feT/4lvWXIw5qjIYS8IiYmVIda+Nu2EjQCjcpG6k0+1vSBF
   Te3LlW3ZeYgodG6mkgz8oD6mrplgl3FwxvLlyp/xpnH74SLwDmdyBRtOM
   YaTbRM9RxIivFNWRa0Pt0RMcuwnmNFcoMSMzUJJmAy+Qr5wFCuLQl7J3J
   7woIV/SuMYALFYxXFMZbKi4ZnrYzT7GeM2eMnks3V36W7JAAi0Zo6+6am
   ESJcIFawrUtCgbAn9roxBxQGcvpM8ugk8VPfivQiv2HFVMbzul+pJKTdx
   A==;
X-CSE-ConnectionGUID: KUhmTXg4STyuqJ70yxFDmg==
X-CSE-MsgGUID: guxtFsEvTSqCK7iLi/jdrQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7249752"
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; 
   d="scan'208";a="7249752"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2024 10:45:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; 
   d="scan'208";a="17676184"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.66.56])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2024 10:45:56 -0700
Date: Mon, 1 Apr 2024 10:45:54 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Saasha Gupta <saashaa1122@gmail.com>
Cc: outreachy@lists.linux.dev, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: unable to submit patch with git send email
Message-ID: <Zgry0gfhKL8+iv/q@aschofie-mobl2>
References: <CAN=P6FPod=+6zTPKy03oxCVYXzgcnnr6AFpwjZp8qap4bxod8w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAN=P6FPod=+6zTPKy03oxCVYXzgcnnr6AFpwjZp8qap4bxod8w@mail.gmail.com>

On Mon, Apr 01, 2024 at 10:43:53PM +0530, Saasha Gupta wrote:
> Dear maintainers of the outreachy team,
> 
> I am trying to submit a patch using `git send-email --to
> outreachy@lists.linux.dev` with a few other emails cc'd.
> 
> My SSL version is: 2.085
> 
> When I am send the mail, I get the following error:
> > DEBUG: .../IO/Socket/SSL.pm:851: local error: SSL connect attempt failed error:0A00010B:SSL routines::wrong version number
> > DEBUG: .../IO/Socket/SSL.pm:854: fatal SSL error: SSL connect attempt failed error:0A00010B:SSL routines::wrong version number
> 
> I am on Arch Linux, and I have installed the correct version with:
> cpan Authen::SASL, and installed the correct perl package:
> perl-io-socket-ssl 2.085-1
> 
> My .gitconfig looks like this:
> [sendemail]
>     smtpencryption = ssl
>     smtpserver = smtp.gmail.com
>     smtpuser = saashaa1122@gmail.com
>     smtpserverport = 587
>     confirm = auto
>     supresscc = self
> 
> [user]
>     name = Saasha Gupta
>     email = saashaa1122@gmail.com
> [core]
>     editor = vim
>     compression = 0
> 
> I am not exactly sure why this issue is popping up, as all the
> required dependencies are installed. Can you please point me to where
> I might be going wrong?
> 
> PS: Regarding the previous mail, I have solved all the problems, and
> created a patch.

Hi Saasha,

A couple of thoughts here. I'm not familiar w your SSL version issue,
maybe google that specifically.

- https://man.archlinux.org/man/git-send-email.1.en  suggests using tls

- And as a work-around, if you have used git format-patch and have the
patch file ready to mail...you can simply do "mutt -H yourpatchname.patch"
When it opens in mutt you can edit the To/Cc if needed.
Send to yourself first to test.

--Alison


> 
> Thanks, Saasha
