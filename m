Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302E9328A6
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 17:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="GY/b4rVx"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696614844; x=1728150844;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=V++wDrhamX+Dj0yz9tFTy7dpc9lElioQl0gVCPEXMbI=;
  b=GY/b4rVxOLMa0FKqZNhyoKMvgoJ7Lq59F48iFrfSmiWDCMwsNkoYNn5U
   kVhw1V+PVO4XybIdJB9a1Xl30qf+EoMdL0TdefvVy4GlN/fwV6khD8OiZ
   GBCTa4ncZozt6AhXYTEcd4+DvH0Y52LU7dWlxQEdgVlZzfFrhk9kJXFFd
   ho8ZVO5iEi+bsNJ/3Llevusm3oYbLyQ0qBtaPMW9FzG/EZhurj/Fa7MKL
   KZjZskyonZ0W3SYDZ+LYdRj0VMO6+g1Uw1HjJ3vkcE/87VjQwzk4Yoq7g
   n5eTvpBm41VIRtUdq6z08zK9qv2ecRxXpsIdVofYxJ1brjxbn6OmtZYM5
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="382663681"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
   d="scan'208";a="382663681"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2023 10:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="781724890"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
   d="scan'208";a="781724890"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.22.238])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2023 10:53:57 -0700
Date: Fri, 6 Oct 2023 10:53:55 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: maduechesik@gmail.com
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Emailing the Outreachy List
Message-ID: <ZSBJs4vfqwfjD4Ww@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Kenechukwu,

I'm seeing a message directly from you including a message forwarded
from the "mlmmj program managing the <outreachy@lists.linux.dev> mailing
list."  The issue seems to be that your mailer is sending mail that 
includes 'some' HTML.  Please configure your mail client to send
only plain text mail.

Your mail should be addressed to: outreachy@lists.linux.dev  as I have
done here in the 'CC line.

I suggest you start a new email with your VMware issue and see if folks
on this list can assist.

Best,
Alison
