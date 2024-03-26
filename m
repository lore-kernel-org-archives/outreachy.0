Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C163A95B
	for <outreachy@lists.linux.dev>; Tue, 26 Mar 2024 17:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711474662; cv=none; b=RHHF7WDCZF0PUPZIgl4IzR+cLnXX9C1Xl1UPcUVICAl50JrFGk/gQ3H1XnqLzh9fWlI1bz7uno3r/L42ni/ndNoCQT0kH5itFnA4gkkZfrWxv8KN7+t5zTaVkFw/bDuWVVgQLycxxltWd79Hvi/t9jPyB3F6mmA/K2CzOGKb6ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711474662; c=relaxed/simple;
	bh=kvjjoVMACYUlgZiip9Gb+1IJlLdlYcS9znSddxRTAl0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jRCEypsn+/6iodjeTymlJMNgjbjrYwTRAt4HQScRv014Yiaw0IDUFk4tJsMslIZNPZyn38/1YOk6nwOzpvVJLhM3+8Tuk5mHkHYk2B+40jdIQX+enk53/HT1XPfifDO1bvA1pJrlaLkG8aJmTgMqSllo2OC7IcKFhjwlRnVdtXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ZMR5QqH7; arc=none smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="ZMR5QqH7"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711474660; x=1743010660;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=kvjjoVMACYUlgZiip9Gb+1IJlLdlYcS9znSddxRTAl0=;
  b=ZMR5QqH7IayfsoO/0Igv6HybPpGIfEQ50ee0IVqliuEAXaNGPc34BB2H
   Yupm4RodxJMRE+73N4x08AAb3VZW62ekbN45Rm5SzxLq1/2grErCbIX/2
   a+RUvq+zWpsYwkEDQ9QD3SWigiuOcJnWjKA5sJAzjlO/7LFQxvFVnqPyw
   G8PC70A5HT5nHB6+paJbTKMga9KzvbyS0MauoaOxvjajGaFnTRNRTdZxt
   Sr+KniTD9QXQaCTiAXHeOyRmivUsrKJ5/oJdSA6f+ZRFhpsSUgARvgJ0V
   OsO/4hR0UQi/LzBEcX2//qDgqYXhff4tcbhzey1nPwRRIkRtiM5GpE8bg
   g==;
X-CSE-ConnectionGUID: 3bRSxvL4SrGDp4je9fxeCA==
X-CSE-MsgGUID: if8M4Fr9TKiHOnjB1Kfxbw==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="17090513"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="17090513"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2024 10:37:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="20754415"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.255.231.154])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2024 10:37:41 -0700
Date: Tue, 26 Mar 2024 10:37:39 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Cc: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	Paul Moore <paul@paul-moore.com>
Subject: Outreachy - Log your contributions
Message-ID: <ZgMH4zPt9rHC45Pc@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi All,

GregKH seems to have caught up on the staging backlog of patches.

I see a bit of disconnect between who is posting patches for 
review to this list and what I see in my Outreachy Dashboard
of interested applicants. Please try to sync that up in the
next couple of days.

If you have patches merged by GregKH, please add those to your
Outreachy online application. That is your application expressing
interest in the Landlock project. It does not need to be 'final'
until April 2.

Why it matters to start an application before April 2:
- If we close the project to new applicants, only those who've
started an application can be considered.
- It may help the Landlock mentors tend to their Outreachy applicants
versus other folks interested in contributing to Landlock. (ie. Outreachy
has deadlines)

All contributions are welcomed! I'm just asking for your help in
focusing our attention now through April 2.

Email any questions.

--Alison

