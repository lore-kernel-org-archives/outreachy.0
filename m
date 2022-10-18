Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639277F
	for <outreachy@lists.linux.dev>; Tue, 18 Oct 2022 05:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666069568; x=1697605568;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=bxJck4NOBRp1XUXi+ZCldK0qWBg6CBUQLUO2eYES0u4=;
  b=PylVdfTVORths2jUzsxVAW/Yv4iTsSwXm1ld4pKJws0wMQCBzifyvsAJ
   iFzuxpDgGkOy7Yc22UJFhbcd4gHv6VwYvmsVtQsIwx9cbfIa/5Hwxqz2x
   ubiglkzDJ48iA3nSGVYQ5QQs4T26ZkDO06wwk0OAMbj6ppOyLbTqKC6Gr
   RS05DwwWw6iSeyJmAZ4nkPgUa+qgbrQQKaA1zrdJo2zgP8l+PcLHawD1l
   Q0rDwRBofZ6+yTRK/jMYHiC3UBNIHhC22BC48u8FRKk+j9Drb78kbyUoY
   5kW2wLbQ+Pd2b6jG8rYNBKRADqLIsopKR32HfXAbDfd4phM4VBKm2xQLe
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="286388955"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
   d="scan'208";a="286388955"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2022 22:06:07 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="957613475"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
   d="scan'208";a="957613475"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.255.230.132])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2022 22:06:07 -0700
Date: Mon, 17 Oct 2022 22:06:05 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: patch recipients
Message-ID: <Y040PanpB2Xu7Juo@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Deepak,

I notice that you started CC'ing mentors directly on your patches.

I want to redirect you to the directions in the First Patch Tutorial
and the Welcome Announcement on the mailing list. Both talk about patch
recipients.

Given that you've started it, you cannot drop them from the current
set, because we never trim the recipient list once a set is in flight.
Sometimes we grow it.

Also, I'm guessing there is a chance that the mentors privately told
you to 'CC them.  NAK!  That should not be done. Mentors should be
subscribed to this list. Let's keep the patch recipient list clean.

Thanks,
Alison
