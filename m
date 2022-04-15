Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8718E33D6
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 19:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650050511; x=1681586511;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wHtZKeNCI9zMlGvX/3TLnXx4CUiNBhlYCt+yvCfTeFk=;
  b=L28+9vY6zNGiJ23sonLRudjnsnzly/zzHLxwM3lXFUEqztLXF2UBxXjD
   uYnU9jH7cW4sYhyTLF52ZWIvINf3ixFttUnE2hO8bY+BmvPPUZaSnBrs+
   /FFSO+3yLivpPDgdMDNlHU0KX+eag270wCIU7VezhE7WC/AxLV32U51Ex
   YCWJLYfjrzXXapCHkvCu5kgIxhqq0zVAP0fWPJlrjWMKf7a6Jl198yfiQ
   7DurcjC8kMQpX2W0mP/ohAkKABI1tk0sb1RvGOKUqRcTBItb44ZtgwRIp
   iYx1V/1glbL1EYa3mh7r3zT5+QVVf68baZiN/RBCHEzQ/yPVtjUxUKh7o
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="349663204"
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; 
   d="scan'208";a="349663204"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2022 12:21:50 -0700
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; 
   d="scan'208";a="656525590"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2022 12:21:50 -0700
Date: Fri, 15 Apr 2022 12:23:39 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>,
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: [PATCH v2] mbuto: support building a minimal image for kernel
 selftests
Message-ID: <20220415192339.GA1252106@alison-desk>
References: <20220414230923.GA594872@euclid>
 <20220415171019.091e123c@elisabeth>
 <20220415170543.GA1251615@alison-desk>
 <20220415202405.53ffd848@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220415202405.53ffd848@elisabeth>

On Fri, Apr 15, 2022 at 11:24:05AM -0700, Stefano Brivio wrote:
> On Fri, 15 Apr 2022 10:05:43 -0700
> Alison Schofield <alison.schofield@intel.com> wrote:
> 
> > On Fri, Apr 15, 2022 at 05:10:19PM +0200, Stefano Brivio wrote:
> > > This is really valuable work, thank you. I took the liberty of fixing
> > > up a few things, listed below, and pushed:  
> > 
> > What repository is this in?
> 
> https://mbuto.sh/mbuto -- we're tracking project-specific tasks at
> https://board.net/p/Outreachy2022KernelNetworking and this is task #7 there.
> 
> Documentation is still a bit lacking (I'm working on it on and off), I
> hope it can become finally usable for other applicants (to run
> kselftests without semi-complicated VM installs) in a couple of days.

I see, thanks!

So do you think "Minimal Builder Using Terse Options" will someday land
in the kernels scripts/ directory?

Wondering why this isn't in a github repository? I think you (Stefano)
told me something previously about access issues that some folks have with
github.

Thanks for helping me understand!
Alison

> 
> -- 
> Stefano
> 
