Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A4B2440E
	for <outreachy@lists.linux.dev>; Mon, 24 Oct 2022 18:56:52 +0000 (UTC)
Received: by linux.microsoft.com (Postfix, from userid 1127)
	id AA18820FFC9E; Mon, 24 Oct 2022 11:56:51 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com AA18820FFC9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1666637811;
	bh=RR5rN+e+W5g4hAHuUd84Veeg+X10oGCG4Juc8mFV54E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gZcKbX47V7A3hRMDH9FUhcZ/YY/eUNU+rXKxEC8EEI9UF3wNn35g6SwOkulkl/2Fo
	 KaCm3xRI65X7JZXaro2yHj1TFRedTZKc6jIyt1xjr4uLl8O8d19kILhIJw1zGsWKAg
	 l2qjqGpX+P539yiNmpURnwGPnhlarDH7/Ooz+KHc=
Date: Mon, 24 Oct 2022 11:56:51 -0700
From: Saurabh Singh Sengar <ssengar@linux.microsoft.com>
To: Deepak R Varma <drv@mailo.com>
Cc: Alison Schofield <alison.schofield@intel.com>, dvarma04@hotmail.com,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
Message-ID: <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
 <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>
 <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Oct 22, 2022 at 11:03:53AM +0530, Deepak R Varma wrote:
> On Fri, Oct 21, 2022 at 10:13:48PM +0530, Deepak R Varma wrote:
> > On Fri, Oct 21, 2022 at 02:46:13PM -0700, Alison Schofield wrote:
> > > Hi Deeva,
> > >
> > > I saw your Outreachy Dashboard update that noted your past contributions:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Deepak+R+Varma
> > >
> > > You have plenty of cleanup patches in total and it would be great if you
> > > could move on to try out some small tasks for the Coccinelle project.
> >
> > Hello Alison,
> > First, sorry for the delay in responding. I was travelling most part of the day
> > today and just checking my emails now.
> >
> > Thank you for looking at my first-patch contribution record. Your message is
> > encouraging. I will starting working on the Coccinelle project tasks outlined
> > in the project description.
> 
> Hello,
> I am reading through the Coccinelle.org link mentioned on the project
> description page and following through. Is that the right approach to accomplish
> the project tasks? Any additional guidance will be helpful.

Hi Deepak,

Yes you are on right track, look for how to use coccinelle/coccicheck and try to
find some issues in staging directory. Please feel free to reach out to me and 
Praveen if you face any difficulty in accomplishing it.

Regards,
Saurabh

> 
> Thank you,
> ./drv
> 
> >
> > >
> > > There are notes on how to get started in the project description, including
> > > how to contact the mentors.
> > >
> > > Please try to keep your applicant/mentor communications CC'd to this
> > > list.
> >
> > Sounds good. Will follow your guidance.
> >
> > Thanks again!
> > ./drv
> >
> > >
> > > Thanks,
> > > Alison
> > >
> 
