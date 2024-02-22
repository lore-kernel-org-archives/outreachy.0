Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E6C6E614
	for <outreachy@lists.linux.dev>; Thu, 22 Feb 2024 19:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708631842; cv=none; b=BDiknGIBwySvHtmVUeIs/x8hOqWFCi30fRxPbcOiLLUYIZ34Q4naAclidBslkkAOdrFVVns3qL9rYaZyx9ykajyC7CG104TcIkS7yOACZHtl0Bs77ufWIijuPKkHT6yTugcRWV6cMmxkmbHjUFeaNkZRB6jjnH4vv0zGGWBc7e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708631842; c=relaxed/simple;
	bh=esY5twlYy09F0Viy/Kxcm228kLDjqWNWOqfeM0eOJF0=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=HofS3aCyFkOQC/xWu3tQIbGcq7Kx7l9oM4uVaPBPny1MthYuV21p2aVjiYP8xghLRkTcDHQ8L40Q3t96IT30kOBEEEcwvXiy3vRaceluslsjODxGgJry6KwjSAL0by4i4x/p9I3glTd/x3EeypIxBPxx5KiOS6QA/2/rn/+edqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=OPOQHdV7; arc=none smtp.client-ip=198.175.65.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="OPOQHdV7"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1708631834; x=1740167834;
  h=date:from:to:subject:message-id:mime-version;
  bh=esY5twlYy09F0Viy/Kxcm228kLDjqWNWOqfeM0eOJF0=;
  b=OPOQHdV7KS5RMtIpyNwqOJ+67Sn5HtjjCuQPdwYFiB5gssHIIc7MVKUN
   JFtkI10fk7VXfUSbYXH8Kz5w3RKYIeuwWrlYxfq0xwndI12gMVGg1fBXP
   min1Eai0ajAYXx/GlT8z13NfyB9PnHYbnxCzD+U8h3SIhixDCo2QLeoDs
   zmMfTa5DkfxwmQUKw7uizTMNONsZv76rQH1XLtitE/RIX+ur9cEbgLQub
   SGMZ18IuKYJotc7VEtJi3cF+WprjJqYLgFIVfV04banRQ+lbgUhZ7THLV
   ntsUVlhX+8Zi61ZcU+uIhzzlIIPiz5M8JMuVQrwWqMEH2myDui3ZRZRcn
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2804055"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2804055"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2024 11:57:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5572792"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.29.102])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2024 11:57:08 -0800
Date: Thu, 22 Feb 2024 11:57:06 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: outreachy@lists.linux.dev
Subject: Extended: Linux Kernel: Call for Outreachy Mentors
Message-ID: <ZdenEsFrWTk3Gm8N@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi Potential Mentors,

We had an issue with the Outreachy site that caused our project
to appear in the 'not participating' list for a short while.

We are participating in the next round! If you would like to
submit a project, go ahead and do so.

The date for project proposals is extended to March 1st. Please
let me know if you have a proposal underway, and I'll 'hold the
door' open for you.

Thanks for volunteering,

Alison

----- Forwarded message from Alison Schofield <alison.schofield@intel.com> -----
Date: Mon, 22 Jan 2024 16:50:42 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Linux Kernel: Call for Outreachy Mentors

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

----- End forwarded message -----
