Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A568E23A3
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 20:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665433912; x=1696969912;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=g5U2X/6HSub7yyHk682Pi0TZBlLwzABxWfLMH4Tu+2M=;
  b=bAZ74s7RlCeXyHA3N31JUys/XpUKFJZRhV9XT1+50kNjP00WmUVnx1sC
   hd6OfAntXjVInL+plMgCn030Uj1Sxwl5fCS6bpdce9Po3AoeuUFKlcXoI
   ceOwwZ0OJU2oJDCKpUsmhxdrjrbM26dUdSay32kg50ClkHzSaH50D3Tbq
   TNGWfKvK0flWiFPhc8AGQNNNyfVAf17kVbCLCJz7rLIULdSydXy6CP44s
   C21nUeyFkOxqfMopBp0nyPcct3QF6j+2mXpiXKkpmRmfbITkHjBTiX1rU
   pvi/lZwMlgLOu+XhWsYxKOr5zca+vYANCtM+b9xWFcreO/U4/KGZulelc
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="305952652"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="305952652"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 13:31:52 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="628428381"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="628428381"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.255.228.180])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 13:31:51 -0700
Date: Mon, 10 Oct 2022 13:31:49 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Hunter Chasens <hunter.chasens18@ncf.edu>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2 1/2] Staging: greybus: Fixed whitespace style issues
Message-ID: <Y0SBNeoQDfWmJcZi@aschofie-mobl2>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu>
 <78af8ab0297e0af46835937d73dee23f187650a1.1665430031.git.hunter.chasens18@ncf.edu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <78af8ab0297e0af46835937d73dee23f187650a1.1665430031.git.hunter.chasens18@ncf.edu>

On Mon, Oct 10, 2022 at 03:51:58PM -0400, Hunter Chasens wrote:
> Fixed multiple whitespace and alignment code style issues.
> 
> Signed-off-by: Hunter Chasens <hunter.chasens18@ncf.edu>

Hi Hunter,

Checkpatch CHECK complained about this patch. It's not something you added,
but since you touched the line, it's going to show up when checkpatch
is run on your completed patch. 

Correcting this would be another patch in your set, since it's a
different type of cleanup - removing useless parenthesis.

CHECK: Unnecessary parentheses around 'backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS'
#92: FILE: drivers/staging/greybus/Documentation/firmware/firmware.c:122:
+	if ((backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS) &&
+	    (backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE)) {

CHECK: Unnecessary parentheses around 'backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE'
#92: FILE: drivers/staging/greybus/Documentation/firmware/firmware.c:122:
+	if ((backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS) &&
+	    (backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE)) {

--snip

Thanks,
Alison

