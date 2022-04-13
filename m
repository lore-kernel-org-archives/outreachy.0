Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2BF2564
	for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 15:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649863570; x=1681399570;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ZtAv14byaM1aUF/ethx/KUiiPZY2Mdnkd04b9fGPUt0=;
  b=aUFuUTN98Tqs4+bg888ntJjK6tFaR60P6A9tj6NKugn5MqwdYXWeHypt
   V8JQHdDw3X9CmVyjq6xFIGWynxvQ2NueWoQokCAiJG1XwCUtTTtrrpVgL
   jPDyO7nYgFWNACj+4+HV5fUSj3+Z9zcwmxjtM1ZCjQFYLjePpC6EbRRyy
   OQYqrN/nUP7Pz+iJmxsRgB+LnhLRXSkMMlTKJTpJwoBGTrY4TMbE6P+AN
   aSaG9VEdv6RAMqncsOC51M0ucTN+74HoaeoObJ03ZOtMsqMDoowef8FSQ
   xonKgM/jeKAlK2MH+MVsb7ROrTR1L2YHHp4P/iCOWGZMtmPFYvoZLnQ67
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="249984987"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; 
   d="scan'208";a="249984987"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2022 08:26:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; 
   d="scan'208";a="590794863"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2022 08:26:09 -0700
Date: Wed, 13 Apr 2022 08:28:05 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	outreachy linux kernel <outreachy@lists.linux.dev>
Subject: Re: Should we Cc this list when submitting patches for subsystems
 other than "staging"?
Message-ID: <20220413152805.GA1241310@alison-desk>
References: <1859502.6tgchFWduM@leap>
 <20220412223603.GA1237891@alison-desk>
 <CAMWRUK6W4-3Fwh7BAQ_aSWYG4Dh=oSX-ZKgHuiO0QhKUwyCEOA@mail.gmail.com>
 <20220413041553.GA1239114@alison-desk>
 <CAMWRUK5N6fC9ZUAPXZ0sKao=nLF33WA3N4+HGZvJgHaiBnewFg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMWRUK5N6fC9ZUAPXZ0sKao=nLF33WA3N4+HGZvJgHaiBnewFg@mail.gmail.com>

On Wed, Apr 13, 2022 at 08:14:07AM -0700, Sevinj Aghayeva wrote:
> 
> How about non-kernel related changes? For example, I'm working on
> improving https://mbuto.sh/mbuto/about/ with mentors. It's a script
> that builds a minimal image that runs kernel selftests when booted
> from; it speeds up testing kernel changes. Should I Cc them to the
> list as well?

Sevinj,
Maybe my previous email covered this.
The above sounds like something that all applicants exploring the
networking project would be interested in following.
Alison

