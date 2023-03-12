Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CBF33F0
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 15:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=T44ii0e919bJsTiCVf7/Nq7IXNPB0isBr+qVKrklg5g=;
  b=t6EWdY8NtzKcwRmx5baVrueocQXXCLr7We3UuDowar1Kw6DOuYzZEIJ4
   l0YEhmZRdv6X/xe78MsciG/7bS01vPg1BTr0DMIQc1GVPl7og5lOIz4cB
   pjHBKGP8IsyVdWZ5FNGOHZDfeHZ8HDmY594ZgBUq5yUqGwz3/qvVUAZCO
   w=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,254,1673910000"; 
   d="scan'208";a="49930084"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2023 16:31:49 +0100
Date: Sun, 12 Mar 2023 16:31:48 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional
 statement
In-Reply-To: <20230312152701.GA28100@ubuntu>
Message-ID: <alpine.DEB.2.22.394.2303121631170.2865@hadrien>
References: <20230312122928.GL14247@ubuntu> <alpine.DEB.2.22.394.2303121412090.2865@hadrien> <20230312152701.GA28100@ubuntu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2023, Sumitra Sharma wrote:

> On Sun, Mar 12, 2023 at 02:21:56PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 12 Mar 2023, Sumitra Sharma wrote:
> >
> > > Hi julia,
> > >
> > > >> Hi julia
> > > >>
> > > >> I was referring to the reply you sent in this thread and asking to quote
> > > >> the most relevant information in the mails so that people on the list
> > > >> can know what is being discussed. And I will take care of this in my
> > > >> upcoming mails.
> > > >>
> > > >
> > > > Sorry to press the point, but you should be doing it now, not promising to
> > > > do it in the future.
> > > >
> > >
> > > I am sorry for repeating my mistake again and again and may be this time
> > > too. But, I am trying to correct it.
> > >
> > > >
> > > > If there is some challenge in doing this, please let us know, and perhaps someone can offer some advice.
> > > >
> > >
> > > To be honest I am struggling responding inline. Right now I did it
> > > maually by pasting your message into mutt and putting the ">" things. I
> > > know this is not the correct way to do. Please guide me to the correct method of responding inline.
> >
> > I don't use either gmail or mutt, so I'm not an expert.  But to interact
> > with others about your patches, you will have to solve this problem.
> >
> > You should be able to receive messages in mutt.  There is some information
> > in the Outreachy first patch tutorial:
> >
> > https://kernelnewbies.org/Outreachyfirstpatch
> >
> > The following link may be useful:
> >
> > https://www.makeuseof.com/install-configure-mutt-with-gmail-on-linux/
> >
> > Once your mail arrives in mutt, you should just be able to respond to
> > other people and have the >s in front of what they said directly.
> >
> > julia
>
> Thank you julia for your help. I am now able to respond inline.

OK.  Was the information in the outrechy tutorial sufficient?  If not, it
could be good to extend it.

julia


>
> Regards,
>
> Sumitra
>
