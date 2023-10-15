Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2D420F7
	for <outreachy@lists.linux.dev>; Sun, 15 Oct 2023 08:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="QK6d/2Zn"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697359211; x=1728895211;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=p+lSaxU8lhjiDHmUz6DJSQc7Gbjjksu0v/NIDrEu/YY=;
  b=QK6d/2ZnT/m3LZoVS1jD6ZnPhY2ypvgUgtz+XBLkDS6ptxnBrYT10nNb
   sCV/bx4n9494DmSuDLzoi9dxP58/IooZR2Am3P1atTCbLs2BpQxqsuE4P
   g5XNBFEgWmbfMEMjuhJMF/39QbMr7v6wcBr5OiActPkeglMN7laswnKXD
   zPJcPeBn3IquOiPpLU6JveQBdIxoXtpRYK87zrF9K38Jjfb62RKHQdI/i
   BbghZFjiVay/YC4AkZXQ2NUJEpB/aMMCM1mUtIQbgh45VpHn4YiYd06+H
   S8Udznz7q7ARhpPvltQx/OfmCwmjfHz/UWxtaysqofQjYcBmEaQ/gPN3g
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="449567048"
X-IronPort-AV: E=Sophos;i="6.03,226,1694761200"; 
   d="scan'208";a="449567048"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2023 01:40:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="899116868"
X-IronPort-AV: E=Sophos;i="6.03,226,1694761200"; 
   d="scan'208";a="899116868"
Received: from ingmingt-mobl1.gar.corp.intel.com (HELO intel.com) ([10.214.164.147])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2023 01:38:10 -0700
Date: Sun, 15 Oct 2023 10:39:58 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: rtl8192u: Align descendant arguments
Message-ID: <ZSulXlsOJKQJ5U49@ashyti-mobl2.lan>
References: <ZSuYUmX5P5M0Ok/I@gilbert-PC>
 <ZSuhpu97lW45BEeS@ashyti-mobl2.lan>
 <ZSukUAuhYLeaOy04@gilbert-PC>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSukUAuhYLeaOy04@gilbert-PC>

Hi Gilbert,

...

> > >  drivers/staging/rtl8192u/r8180_93cx6.c     |  4 ++--
> > >  drivers/staging/rtl8192u/r8190_rtl8256.c   | 16 +++++++--------
> > >  drivers/staging/rtl8192u/r8192U_core.c     | 20 +++++++++---------
> > >  drivers/staging/rtl8192u/r8192U_dm.c       | 24 +++++++++++-----------
> > >  drivers/staging/rtl8192u/r819xU_firmware.c |  4 ++--
> > >  drivers/staging/rtl8192u/r819xU_phy.c      |  2 +-
> > >  6 files changed, 35 insertions(+), 35 deletions(-)
> > 
> > Do you mind splitting one patch per file? It's not really
> > necessary, but normally easier to review.
> > 
> > As you are here, if you then run checkpatch on your patch you
> > will gather ideas for your next patches.
> > 
> > Andi
> 
> Hi Andi,
> 
> Thank you for your response. If it makes the review process easier, I
> don't mind splitting one patch per file. I will do as you have
> suggested. Should I make it a patchset?

yes, please.

Andi
