Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092848F42
	for <outreachy@lists.linux.dev>; Fri,  3 Mar 2023 18:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677869580; x=1709405580;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=dQCOa8uwUCrqm/FvCNKAcAEnuAOVNN+NG620Jdyt70Y=;
  b=HdzAE4fi66N+SUmJiPW2R2gonWn9q4smhfS1BO+ouTKaN1giUhhK16Qk
   yb5XxAG8T4L2AxGAB9fACZGmgtD/TqQ2v5mA98JptVG/MIY67VHIgD+xi
   0YlduN6URSaqvDMiO7jCBZtj0b8+hSGHHwjCgM+A+PuhR5GI1nQZBP30Z
   uX1M7DfkdqCaElMIIsVQRbyn6ZeJX0SGn/mhaWLZoiWVKvQyw+r/cDZb8
   d5qcHokD5DVlFbW86PrPl7M5NAaTHUDFbTOCOaPNv6YVpm7vxNp6uGCB7
   1Iske6vR0DdCVN0r2Ha5vyMDqVK3u344XmTmPsjo/8YVLjKBQZ6opvStj
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="336644516"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400"; 
   d="scan'208";a="336644516"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 10:52:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="744331941"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400"; 
   d="scan'208";a="744331941"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.155.56])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 10:52:19 -0800
Date: Fri, 3 Mar 2023 10:52:17 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Ira Weiny <ira.weiny@intel.com>, Deepak R Varma <drv@mailo.com>,
	Fabio <fmdefrancesco@gmail.com>, Paul Moore <paul@paul-moore.com>,
	Anna Trikalinou <atrikalinou@microsoft.com>,
	Zahra Tarkhani <ztarkhani@microsoft.com>,
	=?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	James Morris <JAMORRIS@microsoft.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [Outreachy Mentors] Starter Tasks
Message-ID: <ZAJB4b4MSKIdSyDL@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This message is for Project Mentors.

It's almost here! March 6th begins the contribution period for your
projects. Please check on your projects 'Starter Tasks'.

The "Starter Tasks" allow you to get to know and select a good fit
applicant. It also lets the applicants get to know your project, and
you all, as mentors. Please check your project view [1] and define a
couple of starter tasks as needed.

It may be helpful to toggle between editing your project forms, and
then view the result here. [1] This allows you to see how the community
info flows into the project info in the final view. FYI: I recently
updated the community info.

It is perfectly fine to update the starter tasks during the contribution
period. You might change tasks based on how they are working out. Note
that applicants will likely be busy with their community-wide contributions
for the first 2 weeks and not give projects much attention.

In the 'Define-a-project' page [2] it says: "You should have around 10-20
small newcomer tasks and 5-10 medium-sized tasks." You are not responsible
for defining that much, because the Linux Kernel community, has already
defined starter tasks called "Cleanup Patches" as a community-wide
contribution.

Samples of past project tasks: setup/run a project specific tool and share
output; review a topic area and write a blog post; and sometimes actually
submit a patch to the project.

Mentors are welcome to include a pointer to a personal page where
tasks are defined. Please don't make the first starter task 'email me
for starter tasks'.

Application Period == Contribution Period

[1] https://www.outreachy.org/outreachy-may-2023-internship-cohort/communities/linux-kernel/
[2] https://www.outreachy.org/mentor/mentor-faq/

Questions, please ask. Thanks for volunteering!

Alison
