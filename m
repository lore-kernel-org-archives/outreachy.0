Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5AFF12AAC0
	for <outreachy@lists.linux.dev>; Tue, 23 Jan 2024 00:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705971053; cv=none; b=P6memXi1pT9Bl5cgnF9sgKI1kcaDBIY/T3ShY1ltRjMUDhmJjtoXpna9wC/7pHqxWQVZkCU45mBXQcb5MP4B8IonGG/bOhLVE0KLwxwselFVn4bh8h7wmur3PngfF1dXl2v6sz9WKUf3e65JMG41/HlDmKmcA8WNGBFd/ggqtt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705971053; c=relaxed/simple;
	bh=fLUALRotx0QrxJDQPa47Y8FD57Px4U1IGx0UeW4Qpts=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=GjxkOBy9qed8TmZ/5KsxzqeNjOK/tfq+5BpJSIrOVzw+C4i6z3BClO2+sbIvS+vzpfdRrCefqKXOIii9h549+kbjlITEC3HJkvXwgDjQbcnv8FUJ3FFt2nvqlYCWo+aKd6U7Pz0RXhBcEJY3Cj4qawRdBv1T9ZHfMChkkg4/Xj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=f31Hikes; arc=none smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="f31Hikes"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1705971051; x=1737507051;
  h=date:from:to:subject:message-id:mime-version;
  bh=fLUALRotx0QrxJDQPa47Y8FD57Px4U1IGx0UeW4Qpts=;
  b=f31HikesADmAQoEoJBB9uRZ49W6KU2txvLnI+VOcchO3KLIYkAIBc+0u
   63X1aEoNOyIBrxpH47qv3OVHUFgUqLqpxVUCmRWl6b+FfdyD5v8YA9zX1
   XcmkXxiSLARXkgRsGZPfX1DGFZUOiJPS8saTuAbUdim6Ti0yuL1gS+mEW
   e26c0UxoYOoxAHxLwQRAZO9o3Vu/ksDX8CsXjNugPeGRrXuz0wYrlr758
   OZYhIZ6+yuB73w3Q0GL/i9mOUSYKMa4LdBR/T1uEnyFpXBIJEPvvma0dT
   SNUElUys/I27yQi5cgZrxzaZsZEEpglZBdECG3G3JnG6sZgmLpBt4r3Ma
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="8128935"
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; 
   d="scan'208";a="8128935"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jan 2024 16:50:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; 
   d="scan'208";a="27542118"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.36.231])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jan 2024 16:50:45 -0800
Date: Mon, 22 Jan 2024 16:50:42 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Linux Kernel: Call for Outreachy Mentors
Message-ID: <Za8NYg2X1dy2uL3S@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi All,

It's Outreachy time again - Summer 2024 Cohort 

Outreachy's goal is to support people from groups underrepresented
in the technology industry. Interns will work remotely with mentors
from the Linux Kernel community.

We are seeking Linux Kernel mentors with project proposals.

Key Dates:
Project Submission Deadline:		Feb 23
Application/Contribution Period:	Mar 04 - Apr 02
Internship dates:			May 27 - Aug 23

Submit project proposals here by Feb. 23, 2024 at 4 pm UTC: 
https://www.outreachy.org/communities/cfp/linux-kernel/

Mentor FAQ: https://www.outreachy.org/mentor/mentor-faq/

Full details about the Outreachy program and the internship timeline:
https://www.outreachy.org/communities/cfp/

I'm happy to iterate on project proposals with you. Also, I have a few
experienced kernel developers who'd like to volunteer but don't have a
proposal. These folks make terrific second mentors for your project.

Thank you for welcoming new contributors to the kernel community!

Thanks,
Alison Schofield, Outreachy Coordinator for Linux Kernel
