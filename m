Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266131BC31
	for <outreachy@lists.linux.dev>; Fri, 29 Mar 2024 01:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711677549; cv=none; b=qImev62hXQlzLjj+SKjSSWvXObJQhWRlO8XB4/6/PdGPsIrNW7qog0ZU+CkqIUlIC3/YRHUIZQ4/NbzJRIMllUOUqYhqg2CfSKBjheJuqGx4mPjM3O04cyt4vedyNnMR1hq1FX+YryrsYmY6RyVPHN0h7f01yHtbaTTmMJJxfGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711677549; c=relaxed/simple;
	bh=tx7RXsPo/HH/hXeRh+IWC7S7EBy5EutlUYOok+kqeok=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jcc0FOuSiFtewGi2Hx6NuIziCsFcfdfic1fDVDA31F+Tn2WGS5DgDROlul+Kdewt1Ez0JPa7RWQDllcPhQ+9wIKkyZDfTp3EfeIeOaMhhnYS4CEScq1Pc8yBQU3pJdcnNtpipeWr1vabjb9GK5cWhRBQ0NGsIHu9+nknHLy4WqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=a4IqRPna; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="a4IqRPna"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711677548; x=1743213548;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=tx7RXsPo/HH/hXeRh+IWC7S7EBy5EutlUYOok+kqeok=;
  b=a4IqRPnaVBAT5G7tGuc8KNyzZzFcodMolpcs7ylIMUOO6BMXyPILA7no
   SaEbnZmdK3dV8+wWSxd3KEt6m1RRHadowat94im6CVUdO6K5JPsV4n8gL
   Dh0fTcbrv3cWX6Ijr81WvD1+BnSKT3HY93dTUJqaI08xXtKSkMwS9MzOu
   J9A+AVN82I2lwPBFIL+SqIjIeYitpiZSUPx05Qf3AZM7TTPeYshwyomCJ
   LDaZtto9FsHP0+muZMY39C3BhEQSvAKtYOD6IRXmuM8+/ulFJ06O5sjZ6
   PQVmWp7bU4GnA0jLrxFoSbFVz7Hxd89VY2a1yUwKUBVEtm2WvRY8K8kKw
   w==;
X-CSE-ConnectionGUID: Vm6Rol6uSkWIHuwbbrEUUw==
X-CSE-MsgGUID: JYee6CePR0OOv7zjteVY+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6720528"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6720528"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2024 18:59:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="16873024"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.99.22])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2024 18:59:07 -0700
Date: Thu, 28 Mar 2024 18:59:05 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Tahera Fahimi <fahimitahera@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: gdm724x: Align descendant argument to the open
 parenthesis
Message-ID: <ZgYgaeqHxhXGXwYZ@aschofie-mobl2>
References: <ZgXupx0nXwIOjy7F@tahera-OptiPlex-5000>
 <ZgX0c7mTJkipSkmQ@aschofie-mobl2>
 <ZgYEm1zeVjHZynjr@tahera-OptiPlex-5000>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgYEm1zeVjHZynjr@tahera-OptiPlex-5000>

On Thu, Mar 28, 2024 at 06:00:27PM -0600, Tahera Fahimi wrote:
> Hello Alison, 
> Thanks for the heads up. I resolved the mismatches.
>
Tahera,

Once a thread has begun, we always group reply.

Never drop folks or mailing lists from a thread. Sometimes we have to add
someone or a list to a thread in progress, but we never drop.

Your response is not visible here:
https://lore.kernel.org/linux-staging/ZgXupx0nXwIOjy7F@tahera-OptiPlex-5000/

--Alison
