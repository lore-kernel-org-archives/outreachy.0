Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E39F36D
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 23:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678319958; x=1709855958;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KF8uQOhcT3Q0hkWFKEICJiVLrYe0Fvd/yuvdJDhQBv8=;
  b=KDNSL0/zouQuJV8V1MK3QN9AH1cx7M4SGs53NtSw9F1KOHWY0qNY1ovn
   zZbleMM1K2o5euuqhG3sulrCFNHpjjgGhUJPIb6M/lPPPNyx0mttitNbk
   FQ42IjmmyZgp3TH5ZjxvS9Ad2dZ9O3CEJShvlRR7Wp+WJBkGJdJ3Y2wSO
   92c9at9+zacr81UhU/OKnSI4GdKQYKxcSDxWhfxscZPdHQdi5iHlZaPHq
   jP1UJKcROwkjSZxf85xqUrbFJ8++yG5D3rLmsKAZYFJ5dPhQJKrR0hikL
   tOOq0i/NYpOxsQj2oD/fEoO1GbzfjIN9bc/KQLeCF+8NEd7K1TbEz7ReU
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="401141363"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="401141363"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 15:59:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="677186290"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="677186290"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.215.12])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 15:59:17 -0800
Date: Wed, 8 Mar 2023 15:59:16 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Kloudifold <cloudifold.3125@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Problem in "Pick a warning, and try to fix it": Don't have a
 warning to pick
Message-ID: <ZAkhVJfWLk5mcyON@aschofie-mobl2>
References: <ZAkE4w/T389R2+Er@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZAkE4w/T389R2+Er@CloudiRingWorld>

On Thu, Mar 09, 2023 at 05:57:55AM +0800, Kloudifold wrote:
> Hello, I am Kloudifold, an Outreachy applicant.
> 
> I'm reading https://kernelnewbies.org/Outreachyfirstpatch and trying to make my first patch. It says, "Pick a warning, and try to fix it. For your first patch, only pick one warning.", but when I used the command:
> 
> > perl scripts/checkpatch.pl -f drivers/staging/*/* | grep "[1-9] warnings" -B 10 -A 2

Hi Kloudifold,

Your script is quitting after operating on the first dir. 

There are more WARNINGs and CHECKs 
Look up the --strict option to checkpatch to get those CHECKs.

Reminder: don't include drivers/staging/media in your searches.

Alison
> 
> I can only find warnings for drivers/staging/axis-fifo/axis-fifo.c, a file that is already being submitted to the mailing list, which means I don't have a warning to pick.
> How should I finish my first patch in this case? Should I look for something more difficult than changing the coding style?
> 
