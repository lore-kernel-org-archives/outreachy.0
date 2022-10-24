Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB02F7B
	for <outreachy@lists.linux.dev>; Tue, 25 Oct 2022 15:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666710228; bh=gRFi/nHhyqviffWk544gEAgJYYzVWRvED0XEFXzYLNo=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=kPxUlQuovMjc0dphmCBXKGxOU/be5KYAqKMi5OE0aAFHt83xCJ2hK41YV1c/RGsmP
	 R32WelFCPdfRQdAuLzz+yqQSbK67ztmJN7u2aZJ1Qt87w9uxcdO2P7M2mbSfXPmkMN
	 uDSU+fe24VoMyGj1QHauUseP9zsAEE6tQ7QxUnb4=
Received: by b-3.in.mailobj.net [192.168.90.13] with ESMTP
	via [213.182.55.206]
	Tue, 25 Oct 2022 17:03:48 +0200 (CEST)
X-EA-Auth: WVXu3d7B9X/VbtgmMINVv9iDw5+QC+f6EUmgLf3CtR51FMAdn/txgyHE8D5WNx+eJoH/rugGBdf5Lsc+93uudTQXiA8kd7bK
Date: Tue, 25 Oct 2022 03:55:29 +0530
From: Deepak R Varma <drv@mailo.com>
To: Saurabh Singh Sengar <ssengar@linux.microsoft.com>
Cc: Alison Schofield <alison.schofield@intel.com>, dvarma04@hotmail.com,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
Message-ID: <Y1cQ2WUOZ0m7QKSA@debian-BULLSEYE-live-builder-AMD64>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
 <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>
 <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64>
 <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Mon, Oct 24, 2022 at 11:56:51AM -0700, Saurabh Singh Sengar wrote:
> On Sat, Oct 22, 2022 at 11:03:53AM +0530, Deepak R Varma wrote:
> > On Fri, Oct 21, 2022 at 10:13:48PM +0530, Deepak R Varma wrote:
> > > On Fri, Oct 21, 2022 at 02:46:13PM -0700, Alison Schofield wrote:
> > > > Hi Deeva,
> > > >
> > > > I saw your Outreachy Dashboard update that noted your past contributions:
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Deepak+R+Varma
> > > >
> > > > You have plenty of cleanup patches in total and it would be great if you
> > > > could move on to try out some small tasks for the Coccinelle project.
> > >
> > > Hello Alison,
> > > First, sorry for the delay in responding. I was travelling most part of the day
> > > today and just checking my emails now.
> > >
> > > Thank you for looking at my first-patch contribution record. Your message is
> > > encouraging. I will starting working on the Coccinelle project tasks outlined
> > > in the project description.
> >
> > Hello,
> > I am reading through the Coccinelle.org link mentioned on the project
> > description page and following through. Is that the right approach to accomplish
> > the project tasks? Any additional guidance will be helpful.
>
> Hi Deepak,
>
> Yes you are on right track, look for how to use coccinelle/coccicheck and try to
> find some issues in staging directory. Please feel free to reach out to me and
> Praveen if you face any difficulty in accomplishing it.

Hello,
I need help with installing and using Coccinelle / coccicheck. The following URL for
source code is not working.

https://coccinelle.gitlabpages.inria.fr/website/distrib/coccinelle-1.1.1.tar.gz

Also the packages for Debian are marked as Error.

Can you please share links to documentation about how to install/configure and use
Coccinelle?

Thank you,
./drv

>
> Regards,
> Saurabh
>
> >
> > Thank you,
> > ./drv
> >
> > >
> > > >
> > > > There are notes on how to get started in the project description, including
> > > > how to contact the mentors.
> > > >
> > > > Please try to keep your applicant/mentor communications CC'd to this
> > > > list.
> > >
> > > Sounds good. Will follow your guidance.
> > >
> > > Thanks again!
> > > ./drv
> > >
> > > >
> > > > Thanks,
> > > > Alison
> > > >
> >
>


