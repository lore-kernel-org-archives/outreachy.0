Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8607C
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 04:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648528020; x=1680064020;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=plQ6Xw2oB9P8OEwDS1jzAoAQqqtCRglx7WKl/aSFcCI=;
  b=gfdFi4Sh21ZNH6uGmhn8xEuxCkchMpw34HP+3UZXKs3+YjsfsOFUOBjt
   9A9eeKKTdZGCMrqJakXTUzNHcDm8kBm+859c1GnxlR0eCRmlu30y1OV+5
   FT+xlcDBrBStMgD6Dzl66qmqu8JCfBG4XWXXJFIR5i+2dTLMX1AdF6WeD
   lnKlK0kF1IZ8eS/szFRLqPkKZ7vRnXj2GIvnPRZHjh28bjZJfShtReEYl
   Y3zZe0WFTA0MFQeSy49FB5EE0A4PnpG4vx1x12PnpoySqDKipS3NjA33S
   n9TWKZU6WPvJ6JwFY6SrXrKglHTntPQOEGh1r5SX+WN7IuY6ulgH/IRL1
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="345594344"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; 
   d="scan'208";a="345594344"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 21:26:59 -0700
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; 
   d="scan'208";a="564286049"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 21:26:58 -0700
Date: Mon, 28 Mar 2022 21:29:25 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: roopa.prabhu@gmail.com, sbrivio@redhat.com, outreachy@lists.linux.dev
Subject: Re: networking task 3
Message-ID: <20220329042925.GB1167211@alison-desk>
References: <CAMWRUK56zyGmOu+=eS9SHGnMpvVR9gtD-OoZaf5dbWRk+zEZ7Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMWRUK56zyGmOu+=eS9SHGnMpvVR9gtD-OoZaf5dbWRk+zEZ7Q@mail.gmail.com>

On Mon, Mar 28, 2022 at 08:41:44PM -0700, Sevinj Aghayeva wrote:
> Hi Roopa, Stefano,
> 
> I finished tasks 1 through 3, and I've attached the output of running
> fib_tests.sh and fib-onlink-tests.sh on a kernel that I built.
> 
> Cheers
> 
> -- 
> 
> Sevinj.Aghayeva

Hi Sevinj,

Welcome to the community! 

Please review the project contribution guidelines in the project description:
https://www.outreachy.org/outreachy-may-2022-internship-round/communities/linux-kernel/#linux-kernel-networking-selftest-cleanups-networki

Mentors begin reviewing project specific tasks, such as the ones you
posted, after an applicant has gotten 10 cleanup patches accepted into
drivers/staging/. 

Other useful links:
https://lore.kernel.org/outreachy/20220325172530.GA1151996@alison-desk/T/#u
https://kernelnewbies.org/Outreachyfirstpatch

Please let me know where I may be able to clarify the instructions.

Hold onto these, and resubmmit when appropriate.

Thanks,
Alison
