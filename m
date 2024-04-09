Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FD8153826
	for <outreachy@lists.linux.dev>; Tue,  9 Apr 2024 17:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712682618; cv=none; b=l0AtcPZgabkHM2eC1Woaj1oSFF18ktnaI56sYYA0SsSAfv3IKAG+5iKh9ZK2LHkiDlDCjr3s7mVW8c48QESfGKVKzNfJvDKJRLOahuaGL/21e+kH26hAbQM1SAFcLpCqrYRMDA7zAjogeg7HDlxOaJdXP0qX7mfSHmuz7HbXcKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712682618; c=relaxed/simple;
	bh=AvtrSVg8ba19zH8OqHTXIoJzzvKoZt9W5St7gIdRNBI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=n9Ichc2GvIu985WX5WN5y89Z2rwly3eiZURkWHvRrJ1hcUVVKJ2HjdootrsWR/Rg6s7GBVBQ9BxRwhumPPuOe3EQ7Lxlv7JQGmRulaVgY3ftXZoTB/dFEULBxkcDW4plQ6i2yKoBlYOhjNAoP7cr3pDlK4XctZCjpW7PibutEVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=KLCYJv/1; arc=none smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="KLCYJv/1"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1712682617; x=1744218617;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=AvtrSVg8ba19zH8OqHTXIoJzzvKoZt9W5St7gIdRNBI=;
  b=KLCYJv/1NAPzU7V5wS3A/gXC/ZiYt9xlyh+ke+cTztThupXhRuJKAtjM
   n7wtWHCUZSB5yaEr+A2zP8/JdJDUEE1Mtzbfg0maz+P70VLb1+gMtUbAg
   53iGYRtkpwhhIp8ZQ9o0XzREXxVvcCW+6Sv5eUbK4cIgcnzOoTqwbBZpc
   iuTiOzT6WfLkWNeKsAqt9DrhLCFPSfu+BZ/x1SuDLgcjbLaK1lh7JGif9
   07pmjH8Yaj/+3mRJLhsXkayVP6F8cPQHgzALKtFtQD9PxVX+hPlGWNRaO
   c31qRM/eWO86bbrltN0UiguMJWG3UUx02phkHPciSLVarza0vJihld2cY
   A==;
X-CSE-ConnectionGUID: sYYcoeFETjuUlpkFepN4og==
X-CSE-MsgGUID: bpkA+2peRyi0tB71DLoWuw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18575161"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="18575161"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Apr 2024 10:10:16 -0700
X-CSE-ConnectionGUID: XYaFcFBJReOph56GOhQ8tQ==
X-CSE-MsgGUID: 8C8M74h0SKOyejuOcU8K/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="24778549"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.89.148])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Apr 2024 10:10:15 -0700
Date: Tue, 9 Apr 2024 10:10:13 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Cc: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Outreachy Panel at OSSE Vienna
Message-ID: <ZhV2dYUQnOfOjmje@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


To All Outreachy Alumni: Interns & Mentors,

Response Due: April 20th

The Open Source Summit Europe is in planning for September 2024 in Vienna,
Austria.  https://sessionize.com/open-source-summit-europe-2024

Our Outreachy Linux Kernel community traditionally submits a panel
presenation to one Open Source Summit event per year. The last time we
presented was in Vancouver in 2023.

The last few presentations have been remote. We'd really like to get some
folks to an actual conference so that you get the full experience!

Who wants to present in Vienna?

Here's how you get there:

- Request to join the Outreachy panel.
  Panelists are interns or mentors, each telling their story. The total
  time allotted is usually just 40 minutes. We seek 4-5 panelists, so 
  you may be allotted at most 10 minutes to present.

- Telling their story usually means presenting their intern project, but
  it can differ.

- If you presented virtually and now would like to present in person,
  you are welcome to throw your name in the hat.

- If you did or didn't present virtually, and would like to present
  something a little different - ie - tell the tale of how you got
  the job you have now because of Outreachy - that would be welcomed.

- Once the proposal is accepted folks needing travel assistance (ie money)
  apply to Linux Foundation for a travel scholarship. Note that if you
  don't get the money you need to travel, then you are not obligated to go.

- You'll get a presentation template and pointers to previous presentations.
  In late August we can get together and do a practice run virtually.
  Ultimately, the panel has creative control over the presentation.


I've appended the Outreachy accepted proposal from Vancouver 2023 for
your reference.

Please ask any questions!!

--Alison



OSSummit Vancouver 2023
------------------------
Come learn about the great accomplishments of our Outreachy Linux Kernel
interns!

Outreachy offers open-source internships to people subject to systemic bias
and impacted by underrepresentation in the technical industry where they
are living. Alison Schofield, the Linux Kernel Community Coordinator, offers
a program overview, followed by intern presentations showcasing their projects
and experiences with Outreachy!

Karolina Stolarek describes laying the groundwork for memblock simulator, a
test suite for boot time memory allocator. Next, Rebecca Mckeever shares her
work extending the memblock simulator to increase test coverage and usability.
Sevinj Aghayeva and Jaehee Park each present their projects in the networking
subsystem where they contributed API and self-test improvements. And Deepak
Varma shares his experience using Coccinelle to improve the Linux Kernel.

We are excited to have Outreachy mentors joining the virtual panel this year.
Linux kernel experts Stefano Brivio, David Hildenbrand, Roopa Prabhu, Mike
Rapoport, and Ira Weiny, offer reflections on the mentorship experience.
