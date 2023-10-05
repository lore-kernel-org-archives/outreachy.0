Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300D6154AB
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 22:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Rhu78sJG"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696545418; x=1728081418;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=otLWxtPiqUNwo70uqhFdNQidJ2aAi7Avaj9RLjXTEks=;
  b=Rhu78sJGo21vB/dQYioBNvIaXndNQleHPXmxDXJdGjR7NXD8z0fbl5xq
   J9QJR9+SXBkNNtl4QqZl7kV/kxBqQhLsoTR0QpS94mXjpboXIQg/O+CkH
   7SDVmp0kMJolK8qT03I7YMeaDJz2HW613K06GxMJv4mALFrs7MHkXPldT
   GHJ4dhbONCe0j/hVmcNAYaNeeHKctHVqxYB4b7nYhU5MbMCyXZ4GvcGU5
   tcg8bL6nCoZthg9j057NXgvbamGRn3MzDXFJqOj94BeZM9m1zjLv/pyMv
   UHm7uXkv1ZxYHR+xnF76xoA0D0k4c9rGg5Dgi6dbtNqUJzp5/4Cc1kVKW
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="387513175"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="387513175"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 15:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="755642249"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="755642249"
Received: from cchew3-mobl.gar.corp.intel.com (HELO intel.com) ([10.213.41.249])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 15:36:54 -0700
Date: Fri, 6 Oct 2023 00:36:48 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jeremiah John <jeremiahjohn08706@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Checkpatch.pl throws an error for an object file
Message-ID: <ZR86gPmIpdjdTIwj@ashyti-mobl2.lan>
References: <ZR8t36IHi65t900o@DESKTOP-EVNFDUR.home>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZR8t36IHi65t900o@DESKTOP-EVNFDUR.home>

Hi Jeremiah,

On Thu, Oct 05, 2023 at 04:42:55PM -0500, Jeremiah John wrote:
> I have ran checkpatch.pl on drivers/staging/rtl8192e/ to find any drivers that need modification, and I received the following error:
> 
> drivers/staging/rtl8192e/dot11d.o

you are passing the wrong file, you should run checkpatch on the
source code, not on the binary. Try with the .c file:

./scripts/checkpatch.pl drivers/staging/rtl8192e/dot11d.c

Andi

> ---------------------------------
> ERROR: Does not appear to be a unified-diff format patch
> 
> all other files checked within the rtl8192e folder had no formatting errors reported by the script. My question is why checkpatch would throw a formatting error for object code?
> 
> Thanks,
> Jeremiah John
