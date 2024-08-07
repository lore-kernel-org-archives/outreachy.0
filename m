Received: from smtp-8faf.mail.infomaniak.ch (smtp-8faf.mail.infomaniak.ch [83.166.143.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F8227448
	for <outreachy@lists.linux.dev>; Wed,  7 Aug 2024 15:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.166.143.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723042815; cv=none; b=OCNZlWI80bTwK0EI5jQPjy4SnVPTjqes/thlBtXIqNF+5sWB6rclku8Rkg+ufyhsy7mAeQ3M7olmFJpdeajW6awlv5f9l2R7jiUBbYijSIJbgYURJLtU9BS9wjhKc+qqjtDEzRxOQuZEFz7gqf5BKFTsW3Z+WISOi8MNUwfx9+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723042815; c=relaxed/simple;
	bh=ip3ka/E3cxhxALxb2EfsYxzvi+saL9E01qAxyxt60jI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=igH3cS6GXLiWgwWjeAdGSLL8BePyVgVnr0ip1wnoTXnBVJ0S+k4g3d62miEw46/rLwrrsz+Za4HIGkhzYfSy1nQMH/WFd4ohpqjhq3gwc5nG1JPccrOtigLH3wr4u9TCmvPs/tB+XELtXPnLM1XxBNJOgXPSDRMKMuYJG9PseEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=kGILZwEA; arc=none smtp.client-ip=83.166.143.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="kGILZwEA"
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WfCcp3ZLyzrtM;
	Wed,  7 Aug 2024 16:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1723041882;
	bh=/KAAV1vnbhEgpC8ceOtXuLi1kCt4M+X9NbsJcgjWRak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kGILZwEAKTm2GbuB5K86gyna7WzvjTLlL2XPA7UFU+8CNgOkkjIJf/PFFRXH1byrU
	 Y/sQGY8sQurL+2/qlVjwC3oUYOSw8ZbZPNe1L73cKWhHRmWYdA+jFZHR6JK6P9JHq8
	 60bF77Nxd0keo9EEHYUXS3ajzEtzPl6Z7NcfAh9Q=
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4WfCcm6YKnzh9s;
	Wed,  7 Aug 2024 16:44:40 +0200 (CEST)
Date: Wed, 7 Aug 2024 16:44:36 +0200
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: Jann Horn <jannh@google.com>
Cc: Tahera Fahimi <fahimitahera@gmail.com>, outreachy@lists.linux.dev, 
	gnoack@google.com, paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com, 
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org, bjorn3_gh@protonmail.com, 
	netdev@vger.kernel.org
Subject: Re: [PATCH v8 1/4] Landlock: Add abstract unix socket connect
 restriction
Message-ID: <20240807.Be5aiChaf8ie@digikod.net>
References: <cover.1722570749.git.fahimitahera@gmail.com>
 <e8da4d5311be78806515626a6bd4a16fe17ded04.1722570749.git.fahimitahera@gmail.com>
 <20240803.iefooCha4gae@digikod.net>
 <20240806.nookoChoh2Oh@digikod.net>
 <CAG48ez2ZYzB+GyDLAx7y2TobE=MLXWucQx0qjitfhPSDaaqjiA@mail.gmail.com>
 <20240807.mieloh8bi8Ae@digikod.net>
 <CAG48ez3_u5ZkVY31h4J6Shap9kEsgDiLxF+s10Aea52EkrDMJg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAG48ez3_u5ZkVY31h4J6Shap9kEsgDiLxF+s10Aea52EkrDMJg@mail.gmail.com>
X-Infomaniak-Routing: alpha

On Wed, Aug 07, 2024 at 03:45:18PM +0200, Jann Horn wrote:
> On Wed, Aug 7, 2024 at 9:21 AM Mickaël Salaün <mic@digikod.net> wrote:
> > On Tue, Aug 06, 2024 at 10:46:43PM +0200, Jann Horn wrote:
> > > I think adding something like this change on top of your code would
> > > make it more concise (though this is entirely untested):
> > >
> > > --- /tmp/a      2024-08-06 22:37:33.800158308 +0200
> > > +++ /tmp/b      2024-08-06 22:44:49.539314039 +0200
> > > @@ -15,25 +15,12 @@
> > >           * client_layer must be a signed integer with greater capacity than
> > >           * client->num_layers to ensure the following loop stops.
> > >           */
> > >          BUILD_BUG_ON(sizeof(client_layer) > sizeof(client->num_layers));
> > >
> > > -        if (!server) {
> > > -                /*
> > > -                 * Walks client's parent domains and checks that none of these
> > > -                 * domains are scoped.
> > > -                 */
> > > -                for (; client_layer >= 0; client_layer--) {
> > > -                        if (landlock_get_scope_mask(client, client_layer) &
> > > -                            scope)
> > > -                                return true;
> > > -                }
> > > -                return false;
> > > -        }
> >
> > This loop is redundant with the following one, but it makes sure there
> > is no issue nor inconsistencies with the server or server_walker
> > pointers.  That's the only approach I found to make sure we don't go
> > through a path that could use an incorrect pointer, and makes the code
> > easy to review.
> 
> My view is that this is a duplication of logic for one particular
> special case - after all, you can also end up walking up to the same
> state (client_layer==-1, server_layer==-1, client_walker==NULL,
> server_walker==NULL) with the loop at the bottom.

Indeed

> 
> But I guess my preference for more concise code is kinda subjective -
> if you prefer the more verbose version, I'm fine with that too.
> 
> > > -
> > > -        server_layer = server->num_layers - 1;
> > > -        server_walker = server->hierarchy;
> > > +        server_layer = server ? (server->num_layers - 1) : -1;
> > > +        server_walker = server ? server->hierarchy : NULL;
> >
> > We would need to change the last loop to avoid a null pointer deref.
> 
> Why? The first loop would either exit or walk the client_walker up
> until client_layer is -1 and client_walker is NULL; the second loop
> wouldn't do anything because the walkers are at the same layer; the
> third loop's body wouldn't be executed because client_layer is -1.

Correct, I missed that client_layer would always be greater than
server_layer (-1).

Tahera, could you please take Jann's proposal?


> 
> The case where the server is not in any Landlock domain is just one
> subcase of the more general case "client and server do not have a
> common ancestor domain".
> 
> > >
> > >          /*
> > >           * Walks client's parent domains down to the same hierarchy level as
> > >           * the server's domain, and checks that none of these client's parent
> > >           * domains are scoped.
> > >
> 
