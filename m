Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A86A2D
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648745573; x=1680281573;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=nmOeehkp/0q1vUGzH0Sx0bQGs0PnF6+QYAELBtOj0Us=;
  b=Y0Pt17OmDlAq8TdPyp1OopyR3PaoM7Ge/jO9Sx6qb/Nf7eSHsc4V6iH/
   EszrhqHkbA2LBsFN2t3OfOIDkgYKyQ4oFmVVTpPg3Ptx5L8/PMYBthTMw
   gV2LkI67LAf8dH7M1JO8zcgEk/cO4okha5lNvDdSER4j1WrobEzgZZvev
   N38F9rL4SBk+j6i/N1MKZNZ8uXRLivHjIQPtBHEWFW5bnp2fEEv7qya9V
   DGGz9CDnAQDuaYqrpgyCtPCwFK1BD3aYz+P0X3JJ7Z3SHXLT+dyzKFtoh
   ijfuvMuYK6TlUeBqbSASsCLshbitO1MTn40VRNsIwFVpJfgbns0SQQ3k/
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="320586390"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; 
   d="scan'208";a="320586390"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 09:52:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; 
   d="scan'208";a="522420135"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2022 09:52:52 -0700
Date: Thu, 31 Mar 2022 09:55:14 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: make mrclean for each build?
Message-ID: <20220331165514.GA1182235@alison-desk>
References: <20220331162817.GA1374158@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331162817.GA1374158@jaehee-ThinkPad-X1-Extreme>

On Thu, Mar 31, 2022 at 12:28:17PM -0400, Jaehee Park wrote:
> Should we be doing `make mrclean` or `make mrproper`(probably not this extreme) to rebuild after each change?
> Or is compling only part of the kernel (as it says in the outreachy firstpatch guide) good enough?
> I think the latter is probably fine because we're working on one module at a time, but just wanted to confirm.

Generally, no need to clean/rebuild entire kernel when you are
working on a loadable module in drivers/staging.

The frequently occuring issue, is that you send a patch that does
not apply to Greg's tree because your tree is outdated.
As you can see, Greg is constantly accepting cleanups in staging,
so you need to stay in sync with that moving target!
See the https://kernelnewbies.org/Outreachyfirstpatch part about
"Update your kernel" where it explains how to fetch and rebase.

You will go to sync one day and find that what you were working
on, has been fixed by someone else. It happens ;)

> 
> Thanks,
> Jaehee ("Jay-hee") 
> 
