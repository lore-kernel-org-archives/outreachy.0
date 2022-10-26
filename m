Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F2821C36
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 17:53:14 +0000 (UTC)
Received: by linux.microsoft.com (Postfix, from userid 1127)
	id CECAA2109435; Wed, 26 Oct 2022 10:53:07 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com CECAA2109435
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1666806787;
	bh=UCryvtM8M/EQ971heYbAfgZH/k3lC+3BPE1YqCcTtyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EYNUUUolfrv+BscYtF3If3rmVRIIOpaqBjUPq8WxYfM17ZdNQ3/L0yR/DHHduedxv
	 oo6m2t/wsTn3zWYIsGpH/tSoFzztfPs6JWuIf1AI2NMwWuoGk/G8v4EWlmbWjfPwAb
	 RedNdDKZdbCBIUBz7VbrLo+6MIFDBPTDyZPg5Z7c=
Date: Wed, 26 Oct 2022 10:53:07 -0700
From: Saurabh Singh Sengar <ssengar@linux.microsoft.com>
To: Emily Peri <eperi1024@gmail.com>
Cc: Deepak R Varma <drv@mailo.com>,
	Alison Schofield <alison.schofield@intel.com>, dvarma04@hotmail.com,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
Message-ID: <20221026175307.GA6173@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
 <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>
 <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64>
 <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <Y1lyaXrcv7cU1SSH@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1lyaXrcv7cU1SSH@marshmallow>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 26, 2022 at 10:46:17AM -0700, Emily Peri wrote:
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
> > 
> > Regards,
> > Saurabh
> 
> Hi Saurabh,
> 
> I'm also trying to follow along with this email thread, but I'm a little
> stuck. I compiled coccinelle, but I'm not sure what to do next. When you
> say 'try to find issues in the staging directory', do you mean the
> staging directory of the linux kernel? I don't see a staging directory
> in the source for coccinelle. Thanks!
> 
> Best,
> Emily

Hi Emily,

Yes look at drivers/staging folder in linux kernel. If you have completed the
first 10 patches as part of 'contribution period' you should have worked on this
folder already. The task here is to find run coccinelle over staging and find the
issues, which will be followed by upstreaming the fixes for it.

Regards,
Saurabh

> 
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
