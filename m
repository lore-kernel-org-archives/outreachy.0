Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE3E2F44
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 17:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666977845; bh=o201Dfu+NdMgtKVaCAIbxxXvndwf9gkbhDnBLN+yUP8=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=kyYiG3mqcdmfVCcLsjcyq+EKQKsUo0wcD/okC0WVfl4YORW5OYONWq9Z8TRqtNPiK
	 jaOLrW96Gm8xoDYqHf2b9nYnV/XrzEEjxt3aJH8W8C3tHM4EPFWZPbJRCv8DRsOBxX
	 2b2flBdYCLEH2dQUAyRA/VO7+XwNe3gT4ll291wQ=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
	via [213.182.55.206]
	Fri, 28 Oct 2022 19:24:05 +0200 (CEST)
X-EA-Auth: YT+Mt2XyRKPvNEN+5h5whNMZilCFPe9XlZfJMn+PfpllYXa4249+GxZQos+QyuXU8QZejJrHBCc/r69ldEOtLsdPcu3ROR35
Date: Fri, 28 Oct 2022 22:53:59 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Saurabh Singh Sengar <ssengar@linux.microsoft.com>,
	outreachy@lists.linux.dev
Subject: Re: understanding metavariable
Message-ID: <Y1wQL78suiYdyt0S@ubunlion>
References: <Y1vfuDzb3yu2CkzN@ubunlion>
 <20221028142616.GA25857@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <alpine.DEB.2.22.394.2210281851440.2993@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2210281851440.2993@hadrien>

On Fri, Oct 28, 2022 at 06:52:54PM +0200, Julia Lawall wrote:
>
>
> On Fri, 28 Oct 2022, Saurabh Singh Sengar wrote:
>
> > On Fri, Oct 28, 2022 at 07:27:12PM +0530, Deepak R Varma wrote:
> > > Hello,
> > > I am seeing a few warnings reported by coccicheck where it is suggested to use a
> > > metavariable. See this example warning:
> > >
> > > warning: line 223: should nonseekable_open be a metavariable?
> >
> > Can you share full more log along with the command you are trying to run.
> > Also, please let me know the kernel version you are trying this on.
>
> The semantic patch could be improved by adding
>
> symbol nonseekable_open;
>
> in the metavariable list, to make clear that it is intended to match
> exactly.  But it is probably better to focus on finding things to change
> in the Linux kernel .c files.

Thank you Julia and Saurabh. I was not aware of the source of these warnings. I will
continue to focus on looking at items from the Kernel .c files as suggested.

Thank you,
./drv

>
> julia
>
> >
> > - Saurabh
> >
> > >
> > > I tried to understand about metavariable and how to address this coccicheck
> > > warning, but did not fully conclude on my next steps.
> > >
> > > Could you provide some details on this concept of metavariables please?
> > >
> > >
> >
> >
>


