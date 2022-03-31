Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5A57C
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 18:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648752515; x=1680288515;
  h=date:from:to:subject:message-id:references:mime-version:
   in-reply-to;
  bh=XIQlYpoC348IHpto9ocd9FvO5Wqwikk6aSPLgT8phvI=;
  b=XSONnQ2TBHfWGLLCjwxaHVrA4bPI+qxsFpd4cDO16VD4ke//uU3Lfmfj
   T/qkJ02J09nIXQiVVYJE7Vn3lPgNvkPkmw7jmAXtvM/xe/5sTsC1amIKt
   QxF8ZzpbvlHSSPK82Qf9d2EL/gFOIE3ceaUC4HXgNSIg4PGWN4SBaPEqa
   rn6LLpBDus40/eIsIY6keCE1RdMfbZVCjvIculw5nQushOSxesXAjw2X0
   N0p+4Y+SJfqgp/IYREdu33wNgmXw2TD2bzuW0jgRvDGh98UQ9M4tyJbyf
   WUK4vnvFIujckE6r4IVr2AION2ipyY+I/zychRxm+M2IPQtvK36fYpPNU
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259632806"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; 
   d="scan'208";a="259632806"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 11:48:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; 
   d="scan'208";a="520758817"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 11:48:21 -0700
Date: Thu, 31 Mar 2022 11:50:42 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Finding Clean-up Tasks
Message-ID: <20220331185042.GA1182710@alison-desk>
References: <20220331183805.GA1182645@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331183805.GA1182645@alison-desk>

In case you didn't know...the complete archive is here:

https://lore.kernel.org/outreachy/


