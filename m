Received: from mail3-smtp-sop.national.inria.fr (mail3-smtp-sop.national.inria.fr [192.134.164.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848457B
	for <outreachy@lists.linux.dev>; Tue, 25 Oct 2022 15:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=sYvq8oHWfU5V7zOhBtbN303imwMusRVBBSLs2bdrE5o=;
  b=H4QAIbI6oInC4s04I+wF0EG48aw0QYg6JN0nEAUg7bpKaZM1LtbGCWNi
   3JRIqmeL4wSsFNXns+BHGPQ9LdtKcIQKec/BcKvfSO2CjZRl2L6tTvHC+
   5wmQAnY1g2qutURXB/Jnw1kNNDsp/rOcAJpWFrixnoHyd5IdDnHCSenV9
   s=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,212,1661810400"; 
   d="scan'208";a="35308993"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2022 17:08:36 +0200
Date: Tue, 25 Oct 2022 17:08:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Deepak R Varma <drv@mailo.com>
cc: Saurabh Singh Sengar <ssengar@linux.microsoft.com>, 
    Alison Schofield <alison.schofield@intel.com>, dvarma04@hotmail.com, 
    Outreachy Linux Kernel <outreachy@lists.linux.dev>, 
    Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
In-Reply-To: <Y1cQ2WUOZ0m7QKSA@debian-BULLSEYE-live-builder-AMD64>
Message-ID: <673dae52-f013-90d3-362d-1fa9c05832fe@inria.fr>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2> <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64> <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64> <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <Y1cQ2WUOZ0m7QKSA@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 25 Oct 2022, Deepak R Varma wrote:

> On Mon, Oct 24, 2022 at 11:56:51AM -0700, Saurabh Singh Sengar wrote:
> > On Sat, Oct 22, 2022 at 11:03:53AM +0530, Deepak R Varma wrote:
> > > On Fri, Oct 21, 2022 at 10:13:48PM +0530, Deepak R Varma wrote:
> > > > On Fri, Oct 21, 2022 at 02:46:13PM -0700, Alison Schofield wrote:
> > > > > Hi Deeva,
> > > > >
> > > > > I saw your Outreachy Dashboard update that noted your past contributions:
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Deepak+R+Varma
> > > > >
> > > > > You have plenty of cleanup patches in total and it would be great if you
> > > > > could move on to try out some small tasks for the Coccinelle project.
> > > >
> > > > Hello Alison,
> > > > First, sorry for the delay in responding. I was travelling most part of the day
> > > > today and just checking my emails now.
> > > >
> > > > Thank you for looking at my first-patch contribution record. Your message is
> > > > encouraging. I will starting working on the Coccinelle project tasks outlined
> > > > in the project description.
> > >
> > > Hello,
> > > I am reading through the Coccinelle.org link mentioned on the project
> > > description page and following through. Is that the right approach to accomplish
> > > the project tasks? Any additional guidance will be helpful.
> >
> > Hi Deepak,
> >
> > Yes you are on right track, look for how to use coccinelle/coccicheck and try to
> > find some issues in staging directory. Please feel free to reach out to me and
> > Praveen if you face any difficulty in accomplishing it.
>
> Hello,
> I need help with installing and using Coccinelle / coccicheck. The following URL for
> source code is not working.
>
> https://coccinelle.gitlabpages.inria.fr/website/distrib/coccinelle-1.1.1.tar.gz
>
> Also the packages for Debian are marked as Error.
>
> Can you please share links to documentation about how to install/configure and use
> Coccinelle?

You can get the Coccinelle sources from github.

julia


>
> Thank you,
> ./drv
>
> >
> > Regards,
> > Saurabh
> >
> > >
> > > Thank you,
> > > ./drv
> > >
> > > >
> > > > >
> > > > > There are notes on how to get started in the project description, including
> > > > > how to contact the mentors.
> > > > >
> > > > > Please try to keep your applicant/mentor communications CC'd to this
> > > > > list.
> > > >
> > > > Sounds good. Will follow your guidance.
> > > >
> > > > Thanks again!
> > > > ./drv
> > > >
> > > > >
> > > > > Thanks,
> > > > > Alison
> > > > >
> > >
> >
>
>
>
>
