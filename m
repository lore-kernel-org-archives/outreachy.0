Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C817C
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 02:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648608670; x=1680144670;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=tMnX/2v/ecFAYAQJaJP44Nc9uMIstBnGh5jfe0o6ff4=;
  b=dJj86vpQANLEjfH8wcdc8MstXz9sVwaI7BI2EewZWpm0JfU0EYWhPsZN
   H94EYU+gLH3M67JW95fiYSgxZNn0I2zsZbD6CwppE2aaHqghw5J/3Kylb
   RRYSHiI8IQF30y9RQJY44jyZ67K0cA5PV6Ykdg/uiKwBxlSEjhUlfq7yQ
   Iad4CNUxKgFQc2LeiLCQPJjvBfUuvJRhPxPTleWOkKkXSkF8wton/ARWa
   S4SztNQrsRbGNygIxdRx6ZR+rUam5/2sftfxK2c2RJoISpJycnXB48lDW
   1fdmt5Yf2/RqsGg2eBoHGKq/+oAiZ+WpvbtvzOE4xs7irWQSqOlilvPGC
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="257009350"
X-IronPort-AV: E=Sophos;i="5.90,221,1643702400"; 
   d="scan'208";a="257009350"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 19:51:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,221,1643702400"; 
   d="scan'208";a="694948129"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 19:51:09 -0700
Date: Tue, 29 Mar 2022 19:53:33 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] SevinjAghayeva
Message-ID: <20220330025333.GA1173893@alison-desk>
References: <CAMWRUK7oaT3bh7pJK5oMWYh3Sptwx6UdgNwds6d_A0CQxC24pw@mail.gmail.com>
 <20220330013408.GA1173441@alison-desk>
 <CAMWRUK4xoy3M8ob2soAwp-RHvro8TGGQdXBim9K1z5nXTTer_g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMWRUK4xoy3M8ob2soAwp-RHvro8TGGQdXBim9K1z5nXTTer_g@mail.gmail.com>

On Tue, Mar 29, 2022 at 09:50:46PM -0400, Sevinj Aghayeva wrote:
> Thanks! If you think my "[PATCH v2] staging: rtl8723bs: remove
> redundant braces in if statements" is okay, I can replace the example
> in PatchPhilosophy that contains "This patch fixes...".
> 
Yes, go ahead and update the wiki directly. I can look at it in place
once it's changed. Thanks!


> On Tue, Mar 29, 2022 at 9:31 PM Alison Schofield
> <alison.schofield@intel.com> wrote:
> >
> > On Tue, Mar 29, 2022 at 09:25:10PM -0400, Sevinj Aghayeva wrote:
> > > Please grant me edit privileges to improve the wiki pages.
> > >
> > > Thanks!
> > Added you to https://kernelnewbies.org/EditorsGroup
> > Ping me back if any issues.
> > Thanks for helping maintain the wiki.
> > >
> > > --
> > >
> > > Sevinj.Aghayeva
> > >
> 
> 
> 
> -- 
> 
> Sevinj.Aghayeva
