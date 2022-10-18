Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A80B4C8A
	for <outreachy@lists.linux.dev>; Tue, 18 Oct 2022 15:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666108535; x=1697644535;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=XDk7zPqx262Mmz6GnRZXCGLd3mQknVv/t0jre0yLSo0=;
  b=A9X2gG9PjuyhXS+HjO41kR7NykA4xDtVuhMNGoZ0kTG/aOGl5XxRZVDJ
   MJXzgr/wwRJg3OCXiXlOOHCrtLqxMYEOUm7b0bZPkqpjQR8Vn9IDcLcEL
   JY123I6tksU0XPEcmbyvTZ7Vl/3j4Em0knPX7Z5YfFDCYtHqD9Rrl+JrM
   JgIEnzKhsRFYIW2KlDDBzEgZ9vt+LUDxZS4r2tc/IFOqvReJjDMP5GZWV
   Bx/wKHzqSi/mjZ4yxrOjHv28NoxHCZHcx91LolFHBgCVYwuQXRnY6VbnZ
   ZAIp35UdfuZhtffRP6Yak7vMwn8dY4yYQpdogXATCLtzAD/F4w76w2B2S
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="392454170"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
   d="scan'208";a="392454170"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2022 08:55:31 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="697566232"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
   d="scan'208";a="697566232"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.6.93])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2022 08:55:29 -0700
Date: Tue, 18 Oct 2022 08:55:28 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: patch recipients
Message-ID: <Y07McBJ9aTHiI87/@aschofie-mobl2>
References: <Y040PanpB2Xu7Juo@aschofie-mobl2>
 <Y05AFCN5w/Y2+yeb@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y05AFCN5w/Y2+yeb@debian-BULLSEYE-live-builder-AMD64>

On Tue, Oct 18, 2022 at 11:26:36AM +0530, Deepak R Varma wrote:
> On Mon, Oct 17, 2022 at 10:06:05PM -0700, Alison Schofield wrote:
> > Hi Deepak,
> 
> Hello Alison,
> 
> >
> > I notice that you started CC'ing mentors directly on your patches.
> That is correct. Actually there is a section "Send your patch to your mentors"
> on the following link. Hence I did that.
> 
> https://kernelnewbies.org/Outreachyfirstpatch?action=show&redirect=OPWfirstpatch#kernel-setup-done

Thanks for pointing it out. The content of that section is correct,
but the title of it is wrong. Perhaps a better header would simply
be 'Send your patch' and the detail in the body of that section is
correct.

See my recent email to the list about how to update the First Patch
Tutorial.

> 
> >
> > I want to redirect you to the directions in the First Patch Tutorial
> > and the Welcome Announcement on the mailing list. Both talk about patch
> > recipients.
> Sure. I will follow the instructions from here.
> 
> >
> > Given that you've started it, you cannot drop them from the current
> > set, because we never trim the recipient list once a set is in flight.
> > Sometimes we grow it.
> That must have been a mistake. I tried to copy them on all my patches. I will
> check which one I missed and ensure I am not missing any recipients going
> forward.
> 
> >
> > Also, I'm guessing there is a chance that the mentors privately told
> > you to 'CC them.  NAK!  That should not be done. Mentors should be
> > subscribed to this list. Let's keep the patch recipient list clean.
> NO, they have not. It was my own assumption based on how I understood the link
> mentioned above. The mentors have not communicated to me anything so far.

When the cleanup patch requirement is complete, then the contact
with the mentors about small tasks for projects begins.

Thanks for your help making the tutorial clearer,
Alison

> 
> Thank you,
> ./drv
> 
> >
> > Thanks,
> > Alison
> 
> 
