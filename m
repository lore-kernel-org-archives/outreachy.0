Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710BD10E9
	for <outreachy@lists.linux.dev>; Sat,  2 Apr 2022 02:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648866456; x=1680402456;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=E/zMTK6n9gljXZK+Xday6j7Es/JRg+TldT9N/gh6YYk=;
  b=hjpcxskf+ez7HFAnjzkiUiWY/5s+/zFlDRvov8e3XDjvZqDegMYvztrz
   4/yx1kSAUi0XfHzLNan9fQY88s7PL1LXdspxAfJjmq1M3PpSFDuL/OTl4
   1fH2BbQi1tqe2ugxA7hXlogpFxULzSvCpNKUKT9tZtuM7/NrL4o9Y/x2J
   4W7YgloyKXsQieIILtrlw0d6uCSZBGfeptMW0BdV7/bcimA3HuGDkhBz/
   4ZMOUom1NSuSWT6Bh5YLxcGwkoQ/yUmEzplMWXH+3XSSyVLR60WM558sd
   6rnnnkxOcbtCBoYlMGXZmxtKuQPPzQd1nORlRW/1OoRticIg+/KLAXDSc
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="323444418"
X-IronPort-AV: E=Sophos;i="5.90,229,1643702400"; 
   d="scan'208";a="323444418"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 19:27:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,229,1643702400"; 
   d="scan'208";a="522989929"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 19:27:36 -0700
Date: Fri, 1 Apr 2022 19:29:54 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Rebecca Mckeever <remckee0@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] RebeccaMckeever
Message-ID: <20220402022954.GA1189513@alison-desk>
References: <YkeuMR49KKGhLma9@bertie>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YkeuMR49KKGhLma9@bertie>

On Fri, Apr 01, 2022 at 09:00:17PM -0500, Rebecca Mckeever wrote:
> Please grant me edit privileges so I can improve the wiki.

You're in the EditorsGroup now.
Thanks for helping out!


> 
> Thanks,
> Rebecca
> 
> 
