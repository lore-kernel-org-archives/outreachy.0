X-GM-THRID: 6252907967708921856
X-Received: by 10.112.204.97 with SMTP id kx1mr2272128lbc.0.1455942199557;
        Fri, 19 Feb 2016 20:23:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.88.82 with SMTP id m79ls124548lfb.78.gmail; Fri, 19 Feb
 2016 20:23:19 -0800 (PST)
X-Received: by 10.25.210.201 with SMTP id j192mr2269127lfg.6.1455942199031;
        Fri, 19 Feb 2016 20:23:19 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 141si608638wmy.2.2016.02.19.20.23.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 20:23:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,473,1449529200"; 
   d="scan'208";a="203870661"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 05:23:18 +0100
Date: Fri, 19 Feb 2016 23:23:16 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhakti Priya <bhaktipriya96@gmail.com>
cc: Tejun Heo <tj@kernel.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Use
 alloc_ordered_workqueue
In-Reply-To: <CAFNHFT8Q1PPg8Eu73_NHtbtqBTWaMqgtgHDXXU+3-mEnAFmtkA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602192321190.2806@hadrien>
References: <20160219075654.GA12205@Karyakshetra> <20160219160442.GK13177@mtj.duckdns.org> <CAFNHFT96V4Pt==M0ZRup-iZDn3FE1SZ8T_m_sxqsg6gqQ=7K1Q@mail.gmail.com> <20160219194548.GM13177@mtj.duckdns.org>
 <CAFNHFT8Q1PPg8Eu73_NHtbtqBTWaMqgtgHDXXU+3-mEnAFmtkA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 20 Feb 2016, Bhakti Priya wrote:

> Hello Tejun,
>
>
> I absolutely agree with you. And here's what I've understood.
>
> On Sat, Feb 20, 2016 at 1:15 AM, Tejun Heo <tj@kernel.org> wrote:
> > On Sat, Feb 20, 2016 at 01:05:39AM +0530, Bhakti Priya wrote:
> >> On Fri, Feb 19, 2016 at 9:34 PM, Tejun Heo <tj@kernel.org> wrote:
> >> > So, this is the mechanical conversion from
> >> > create_singlethread_workqueue() to the new interface; however, that's
> >> > not what we want to do.  Does it *need* to be ordered?  Does it *need*
> >> > to be guaranteed to make forward progress because it's depended upon
> >> > during memory reclaim?  Does it even *need* to be a separate
> >> > workqueue?  You need to actually examine the specific use case and
> >> > answer those questions before converting it and explain and justify
> >> > the decision in the changelog.
> >> >
> >> According to my understanding, with cmwq, there's no need for
> >> octeon/ethernet driver to use separate
> >> a workqueue.  I have removed the dedicated workqueues from ethernet
> >> and have used
> >> system_wq instead. Please correct me I am wrong.
> >
> > I think that'd be the case but can you please explain how you reached
> > that conclusion?  Explaining the process or justifications is often as
> > or even more important as reaching the right conclusion as that allows
> > other people to verify its correctness and helps correcting it if it
> > turns out to be wrong.
> >
> In most cases, creating a whole set of worker threads in order to run a
> function is overkill.  Also, there is no difference in execution
> characteristics between using a dedicated wq and a system wq. The workqueue
> in octeon/ethernet is a singlethread_workqueue and is not cpu-intensive or
> high-priority. Hence system_wq is preferred.

The explanation should be in the patch, so that people who look at the
commit logs in the future can underatand the reasoning involved.

Not knowing much about this problem, I'm not sure to understand:

Also, there is no difference in execution characteristics between using a
dedicated wq and a system wq.

Is this a general statement, or is ti particular to this case?

thanks,
julia

