Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F4D64F
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 01:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648691320; x=1680227320;
  h=date:from:to:subject:message-id:mime-version;
  bh=fiLmT/ky+fNb+2dQi4BokvihGxqFOucKz+T9/ngEONs=;
  b=b6/B4VJWG6YaG4ihHYnC46LZwtAzv61e2fv3tGgDGo48k2P/gWZHFwPN
   xeLxsQKVeg5FRuQy6imlc62UU2bSE/pztJ6sX0HG4vX60I1aEs1Da+e1C
   LnRhheyj8/3S08b1EFfDcXC4W/SHYOwyawWm5FmBTWe5mjql5BwiVPfWW
   GXz+3BkTz3GBMi7lhjdCs+0BcKc8+YueLx0/I/lN1k1fhx6hRZt2r4pxG
   oVOGJjqOeuCyizMx1S+yeuSewfSD66VK/DiYDeA4XADAZ895tntCIvfbP
   F7ymDqhN75sei/59mrWu52ydUD0bUnYVgxXhdVmNZU/tYQBeq+S74o2hc
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="284602387"
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; 
   d="scan'208";a="284602387"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2022 18:48:39 -0700
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; 
   d="scan'208";a="788217006"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2022 18:48:39 -0700
Date: Wed, 30 Mar 2022 18:51:01 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Tracking your PATCH submissions
Message-ID: <20220331015101.GA1179236@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


In case you are wondering the status of your patches -

When GregKH accepts your patch you get an acknowledgment email directly.
If he specifically rejects it, you also get feedback from him on what
to improve. Occasionally a patch gets missed in a flurry of patches.

He won't accept a patch where another reviewer has already requested
an update. So, once you get any feedback, revise and send the new 
version.

You can follow the staging-testing tree [1] and see if Greg has pulled
patches since your submittal. That might make you think about RESENDing.
You can always ask on this list for help too.

For example, at this moment I can see that Rebecca & Sevinj had patches
accepted 16 hours ago, and that seems to be the last time Greg accepted
anything. I expect to see a few more Outreachy patches taken the next
time Greg works his queue.

Hope that's useful,
Alison

[1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing

