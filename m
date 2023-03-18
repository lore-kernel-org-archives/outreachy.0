Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9457C
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 01:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679102089; x=1710638089;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kQIEluIFqIqP+3h3iL4z6bwbtm9d1rEM1tQ170UEh1U=;
  b=KMVcP57wrXrluFPMzQKhspSpzyx6knqbOQcruDbkEqr1b3BYVweYsC1G
   Hj0+WuaB85FqLXEKdHgLa5XzeB4eaYH/XsNVLndvP5uWn2flA72UXZIp/
   X39dQ3VC6NbsjiaKxFG6foyDSL4cthPpCqI6NAGcqVB0o0fLF1/UsVLdq
   3sV7jfaFZ8uQ7+3kSVLMGfiWM3Ifk52yroYThAyRq9zP4452YiwlgzuAf
   qVI8tOgmKDSUPpGsL7CSNWuQN/TidvpVIb7CWugLbNI81XSyCh7kjA6UP
   0MueGLIjIzez884k13nOOy8kK75+lDDabQQl+lHOV8TIDX2wiAvpK5xTO
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="400971981"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; 
   d="scan'208";a="400971981"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 18:14:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="804303696"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; 
   d="scan'208";a="804303696"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.105.44])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 18:14:49 -0700
Date: Fri, 17 Mar 2023 18:14:47 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEBIES ACCESS] Sumitra Sharma
Message-ID: <ZBUQh7FJptcUEPy0@aschofie-mobl2>
References: <20230317175007.GA3275@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230317175007.GA3275@sumitra.com>

On Fri, Mar 17, 2023 at 10:50:07AM -0700, Sumitra Sharma wrote:
> Hi Alison,
> 
> The outreachyfirstpatch document directly links the ".rst" files at many places under different sections. And as Fabio says that .rst files are source files and are only meant to be used for making changes and not to consult. Therefore,  I would like to propose the idea of changing the
> links of the .rst source files to their respective .html/.pdf files.

Hi Sumitra, Is you Kernel Newbies Account Name "Sumitra Sharma" with
a space?  I didn't think they allowed spaces. Please confirm. 
Thanks!



> 
> The specific changes are:
> 
> 1. approved email client:
> 
> https://elixir.bootlin.com/linux/latest/source/Documentation/process/email-clients.rst
> --------------------------------------------------------------
> https://www.kernel.org/doc/html/latest/process/email-clients.html
> 
> 
> 2. coding style:
> 
> https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst
> --------------------------------------------------------------
> https://www.kernel.org/doc/html/latest/process/coding-style.html
> 
> 
> 3. In https://kernelnewbies.org/PatchPhilosophy under the section "Further Reading":
> 
> https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst
> -----------------------------------------------------------------
> https://www.kernel.org/doc/html/latest/process/coding-style.html
> 
> 
> https://elixir.bootlin.com/linux/latest/source/Documentation/process/submitting-patches.rst
> -----------------------------------------------------------------
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html
> 
> 
> https://elixir.bootlin.com/linux/latest/source/Documentation/process/submit-checklist.rst
> -----------------------------------------------------------------
> https://www.kernel.org/doc/html/latest/process/submit-checklist.html
> 
> 
> Kindly provide me the write mode access and guidance to the further steps to do the same.
> 
> Regards,
> 
> Sumitra
