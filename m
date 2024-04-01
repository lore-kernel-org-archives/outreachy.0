Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D35B17552
	for <outreachy@lists.linux.dev>; Mon,  1 Apr 2024 15:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711987118; cv=none; b=EsV0MGfomVVU6GxMb7Ls2t2Kx5IxrYEchqKGxyDlNAvVrFERsSzhmR/RenjSijqCfCqYtfJnVhCN5t9ZKpuSgYvueR5CZ9JinWHlUdQuSC49tfs8P9xBMkMXdcDlVqCKuXyvBY2FtJADiQGa/87cr6GWe8wUoebNMB5pnFk19BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711987118; c=relaxed/simple;
	bh=f5uRzwyUzjkyOiYAR3pJAcZa7vEStpEPwyijZ/ogQ1I=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bqJun3oCgI8bdhcNf9fbhtXg5jQQ2S+Dysu6AkdzbjqaBtPdDTlLcofjhjwcT/vmUfJmXu6eZPcPnjiSNwD/Z+yfWD/u3y6SIBovG9acMo39DRIXPzwFQcD3xLU53ypaBTDRTHQM0LX2P5RVS4UoOcRdOWvo8ahbHAfNHuv7LSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=kNxo4apZ; arc=none smtp.client-ip=192.198.163.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="kNxo4apZ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711987116; x=1743523116;
  h=date:from:to:subject:message-id:mime-version;
  bh=f5uRzwyUzjkyOiYAR3pJAcZa7vEStpEPwyijZ/ogQ1I=;
  b=kNxo4apZ3dMBPn4eU2wtDYtIogBNbM6oaS0H2+TCgxTCUYRFH4nAoZ6g
   5y/cRw6f9bZUvzrTEW6HnKLBzxtwh0fWrWv0t2XzkPWccarlg+9I7aUmy
   eJGgJxhR+o9HG5gnskDrfXURufkOaKi68zPrElZU/Z1wpeQVR4CByKdx9
   0ewCXl/FbwzdRJpIY2DPsHeNm3VUw4lwwvEDxRKAVNKbzuoG4eCXYqeaj
   G3PbjWRC8ICdcdNY4/YZTyh5Lv6c5UfkT+EOJXhTZm+dzl3Q2EYAxDkdb
   Zb9iGUsedGk9b+bL0pJ/YtiI89CyP7MdLyPEcxSClY730abg3L4NwUF/E
   g==;
X-CSE-ConnectionGUID: ywHecJVCQgyY/ROX0zSFWQ==
X-CSE-MsgGUID: QBu6uSnZQjSVoudwHYGd3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7708183"
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; 
   d="scan'208";a="7708183"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2024 08:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,172,1708416000"; 
   d="scan'208";a="17639119"
Received: from ngpfund-mobl1.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.66.56])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2024 08:58:36 -0700
Date: Mon, 1 Apr 2024 08:58:33 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Outreachy Deadline: April 2 4pm UTC
Message-ID: <ZgrZqXAbEhPiBzOf@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Outreachy Applicants,

Thank you for diving into the Linux Kernel community and for 
helping to clean up the Linux Kernel during this contribution
period.

Contribution period ends: April 2 at 4pm UTC
Application Deadline:	  April 2 at 4pm UTC

Your final application must be submitted by April 2 at 4pm UTC.
You can edit after submitting and up until April 2 at 4pm UTC.

Community-specific questions:
The Linux Kernel Community does not have any additional questions.
(You can write that in the box, or leave it blank.)
 
Internship project timeline:
This field is optional. If you have a proposal, please include it.
It is common for the intern and mentors to create that timeline
during the first week of the internship.
 
Neither the mentors, nor I, see your original application to Outreachy,
so be sure to answer these 3 question on the final app fully:
- Past experience with this free software community
- Past experience with other free software communities
- Relevant personal or class projects

Questions, please ask on the list, email your mentors or me.

Thanks,
Alison
