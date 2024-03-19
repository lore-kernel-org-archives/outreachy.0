Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6716E18C05
	for <outreachy@lists.linux.dev>; Tue, 19 Mar 2024 17:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710868420; cv=none; b=BwAE9rG2+SmimZ9Eq2oEdDwjzxMPqR/pnhrxz431uf/709SzcCfiaD9MIaHPkgbal86Mac8KEXl171/IkyV1j+jAnGjV7vlnjbc+CZC1tjT07Ls0l2hy9Ts/6Do1Q1ozd66Qc8uLnlcROKGmJsixVQ9Q2KAiOsCrmpLKrCaE3+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710868420; c=relaxed/simple;
	bh=vK3j9cYPKzaZ8gBRGhAeK6t9nq2QYoKMnl2KBJsGQ2A=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Gta1Dp4jYcN+VFBsYlAFjnZA3G1g2U+CNd1pAJyfSKD9oExwRma5pOPJ7Q0nOUVq3tC5Wm3CTrWqlCezui5T23/YjCdaPKtwMYE0zfe7WPXJaX+pW2u6smsnfEhnU5UmXw1oZ5PvHDzT9+VxLGdPAa1ZDs5lUGSYVRlBpbNUhKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=iA6ZqP47; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="iA6ZqP47"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1710868418; x=1742404418;
  h=date:from:to:subject:message-id:mime-version;
  bh=vK3j9cYPKzaZ8gBRGhAeK6t9nq2QYoKMnl2KBJsGQ2A=;
  b=iA6ZqP47GU5hkpWGfsE8jpTdhPNEvpU9pG/gKnKzufBcLOXdZa70m4oM
   brdZg/HY8zH8wYI0rTyTBegN+yQf6wPmHmaxVx0r/8bXi4L72Wxrzu2CG
   01oXbGLaE2cURB/IUft+p6Tt6UupMjg4TTTbBuXxE7f65GTALsSwzKqlJ
   DmFN2W+McZxAUbm9fZ5Fw2gBPKH1wW0ctCPYVLkXz3DrI4MFZqVQ0HEON
   Wz7fTnmbtaYfpWuQuAJ9jkZYNwlXyJH1oQw9xBeo/RYXa1mpwPcYgubqy
   2yUTBVZ5S1anw0VSnDyx7hW2TyToxZyNe/XuoNmIuA/9j3dMOFR3VQhqC
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="23259708"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="23259708"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2024 10:13:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="44835630"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.17.40])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2024 10:13:37 -0700
Date: Tue, 19 Mar 2024 10:13:35 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Outreachy Mid-point Update
Message-ID: <ZfnHv5p7ZPBxCn9n@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Applicants,

We have passed the midpoint of the 4 week contribution period. Final
applications are due April 2nd.

There are several patches on this list that have ACK's or Reviewed-by
tags that GregKH has not looked at yet.[1] Please keep working any of
your in progress patches until you get that Ack or Reviewed-by tag.

I realize that without GregKH's acceptance you are not adding the work
to your Outreachy application. That's OK. Let's stick with that rule
for at least another week. I'll reconsider in another week whether you
should add items to your dashboard that have been reviewed but not
merged yet by GregKH.

Meanwhile, if you and I haven't exchanged email about when to move
on to project specific tasks, and you feel ready and want to, please
email me.

Thanks for all your work!
Alison

[1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing
