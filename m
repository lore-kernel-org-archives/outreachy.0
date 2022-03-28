Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC94E7C
	for <outreachy@lists.linux.dev>; Mon, 28 Mar 2022 16:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648483701; x=1680019701;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=SVO14/iZgtczKzS9kPhrGssgdJ+hzUVZJMp10Yxj+y4=;
  b=SQdhb1sQoWIz9zRKRGlfib+jtKn76bKRDkVNasq8HljnnFQIvXw8YR1F
   9ah9N8MfOBwqeuxXP0EXHSPnprlvmYOe7nnm6orw8thhQzJfTSQnVban+
   nJHZHEYJ8jt9VISaDpbx4R0v3bw4Jj4336qqIWZV9yrb6JHoYQmHECDSC
   5Iy6L28wU4BzSFzvBKwEHi9KiFZAjG7fYQt4miDTeWJTO2aQNJMRWwHap
   Tt2XJ1LX8mJgPFLP1zo7oK9WrAnLm2yQkMiWN7BdHa9EW5YGcxldYDMVw
   T2+LXa5NWPSOUUvJRrn1gmRl/2ylANp4WV/mzj73qcbU2d5KlokyLf2ls
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="258755433"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; 
   d="scan'208";a="258755433"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 09:08:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; 
   d="scan'208";a="563786287"
Received: from allenzho-mobl.amr.corp.intel.com (HELO localhost) ([10.212.109.43])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 09:08:21 -0700
Date: Mon, 28 Mar 2022 09:08:20 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Outreachy contributor
Message-ID: <YkHddNHReOz0VJOn@iweiny-desk3>
References: <CAMWRUK5t=LZG4Ay=RaFkBbV4q3JYayMqm=Sb_dkO92wJfgH64Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMWRUK5t=LZG4Ay=RaFkBbV4q3JYayMqm=Sb_dkO92wJfgH64Q@mail.gmail.com>

On Sun, Mar 27, 2022 at 10:41:51AM -0400, Sevinj Aghayeva wrote:
> Hi all,
> 
> My name is Sevinj Aghayeva, and I'm an MS student in Computer Science
> at Penn State. My initial application for Outreachy has been approved,
> and I will try to make contributions to Linux Kernel Networking API
> and selftest improvements so that I'm elected for the internship. I
> have been programming in C for about two years now, and I'm currently
> taking a course on Computer Networks. I don't have a background in
> kernel programming, and I hope to learn that during this project.

Welcome!

Ira

