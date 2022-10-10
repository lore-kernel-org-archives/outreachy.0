Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1195C84
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665433533; x=1696969533;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=mfQ3EcFSO9yinNv0gNH+ULokl6ySn6QeXiKoS8dDgZM=;
  b=UnBwOnlq03pHSoqvtc+2+dFXAhx7Lvhcfj2o7qPDmtL9DaJzsorHdMoX
   Qlc9IE3NkohROqLtwlixE7shB/h4WrVTDd1zgY3ns8aHcVVVBe+d74Flp
   cp7C76fkDy2aGS/KWXCyc4H2Q3dzKv5bPpbiW4B9odkrrr2Gp+CehZfT8
   7bstoyE2g+MuTb7apeYH708PBZ4pBEg67Smo3neWX73lFzyijVzpRauMC
   RfCyzgy+OgKt4+rfVYNC6tEGzfyX/VwYrw4ZypML5rqjwTpQstJOi5AIH
   fKC6H14t9FRuNVd3X3OhORMEz/YgVhimiBcVmtW/Qv1zxe2fUW4NUl5wf
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="330801127"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="330801127"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 13:25:32 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="715243064"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="715243064"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.255.228.180])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 13:25:32 -0700
Date: Mon, 10 Oct 2022 13:25:30 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Hunter Chasens <hunter.chasens18@ncf.edu>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2 0/2] Staging: greybus: Fixed whitespace/syntax style
 issues
Message-ID: <Y0R/uscIGcUENEWx@aschofie-mobl2>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1665430030.git.hunter.chasens18@ncf.edu>

On Mon, Oct 10, 2022 at 03:51:57PM -0400, Hunter Chasens wrote:
> These two patches address some Errors, Warnings, and Checks reported by `./scripts/checkpatch.pl`
> 
> v1 -> v2
> Separates the patch into a small patchset with the delimitation of syntactical styling vs whitespace styling. 
> (I plan on sending to the maintainers if Outreach thinks this is an appropriate patch.)

Hi Hunter,
Please see the directions in the First Patch Tutorial and also repeated
in the mailing list message: 

>> You MUST send all patches to this mailing list AND to the appropriate
>> mailing lists and maintainers in get_maintainer.pl. The tutorial walks
>> you through how to use get_maintainer.pl.

We don't want to preview patches on the list. It saves you time and
reviewers time, as there on reviewers who will jump on your staging
patches that might not be on the Outreachy list. It's also the way
we develop - in the open.

So - in this case, you'll send out a v3 and in the changelog one of
the changed items needs to say - Expanded the 'CC list to include
maintainers.

Please do ask questions on the list - just do not post patches for
review that do not have the maintainers included.

Thanks!
Alison

> 
> Hunter Chasens (2):
>   Staging: greybus: Fixed whitespace style issues
>   Staging: greybus: Removed redundent 'int'
> 
>  .../Documentation/firmware/authenticate.c     |  4 +--
>  .../greybus/Documentation/firmware/firmware.c | 34 +++++++++----------
>  drivers/staging/greybus/arche-platform.c      |  2 +-
>  .../staging/greybus/greybus_authentication.h  |  1 -
>  drivers/staging/greybus/loopback.c            |  3 +-
>  drivers/staging/greybus/tools/loopback_test.c | 16 +--------
>  6 files changed, 22 insertions(+), 38 deletions(-)
> 
> -- 
> 2.37.3
> 
> 
