Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838627475
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 17:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ZqkbEBoDeDk1NtVX+14vbtQguoC6DUgysgay+UqXALM=;
  b=LQQ7+sbE7g5tSIem0bUQ31zi7gdKVUMTriC81TFbtKjp2BxEwqFXREDU
   FcOGyoOCCcuxO63HQPXNqVBKWc6GRk6oZlEbyh0T7B/s/29CwXw74Qy6P
   tspJrbVpU/227gP+32h/1KKLV5GU9ge8JLoSDICHzvixlfrYQW7f7mMEb
   U=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,268,1673910000"; 
   d="scan'208";a="97818796"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 18:02:16 +0100
Date: Fri, 17 Mar 2023 18:02:16 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Mark Heim <questioneight@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: extract a fxn to improve clarity
In-Reply-To: <20230317165157.GA48779@pikachu-Z97-D3H>
Message-ID: <2fe3e93c-c72e-5eea-efa-71e3491177f@inria.fr>
References: <20230317141756.GA43753@pikachu-Z97-D3H> <5f036ea-4a8c-54ee-5eaa-4ee1aac0472c@inria.fr> <20230317165157.GA48779@pikachu-Z97-D3H>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > The commit message is not written in the imperative, as it is required to
> > be.
>
> I indeed tried to make it imperative... which is why it was so awkward and is
> why I used phrasing like "it is necessary to refactor" instead of saying flat
> out "I refactored it" (the latter is definitely not imperative voice, but I
> am still not sure I follow you). I always want to write in first person and
> past tense, and I thought I made it as close as I could get. How does this sound:
>
> "Refactor the gb_audio_gb_get_topology by extracting a function to improve
> clarity. Create a helper function with fewer parameters to replace
> tricky code. "
>
> I'm not sure if that's any better. Is it like writing commands or
> directions?

This is now in the imperative.  "tricky code" still seems like an opinion.
You could probably be clearer about why you have made a particular choice.

>
> > Also, words like "needs to" and "necessary" express an opinion.  These
> > things may indeed be good things to do, but "needs to" and "necessary"
> > don't help to understand why the change is being made.
> >
>
> Yes, I was trying to figure out how to write in the imperative voice but
> got lost in the details. My first draft that I never submitted was out in
> left field, but what I thought I got right in the draft that I actually
> submitted for the patch had (a) no use of personal pronouns and (b) no
> verbs in past tense. Are those two ingredients part of imperative voice?

Not at all.  Imperative is like what you have above.  Just a verb in the
third person and no subject.  Look at patches from others, eg git log
--no-merges.  Not everyone follows the "use the imperative" rule to the
letter, but you will see many examples of clear and concise explanations
of what is done and why that thing is done that can help you think about
the problem in the right way.

Despite the deviations in practice, for outreachy you should always try to
use the imperative as much as possible.

julia

> > julia
> >
> > >
> > > Signed-off-by: Mark Thomas Heim <questioneight@gmail.com>
> > > ---
> > >  drivers/staging/greybus/audio_codec.h |  2 ++
> > >  drivers/staging/greybus/audio_gb.c    | 21 +++++++++++----------
> > >  2 files changed, 13 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
> > > index ce15e800e607..a2e8361952b8 100644
> > > --- a/drivers/staging/greybus/audio_codec.h
> > > +++ b/drivers/staging/greybus/audio_codec.h
> > > @@ -177,6 +177,8 @@ int gbaudio_register_module(struct gbaudio_module_info *module);
> > >  void gbaudio_unregister_module(struct gbaudio_module_info *module);
> > >
> > >  /* protocol related */
> > > +int fetch_gb_audio_data(struct gb_connection *connection, int type,
> > > +			void *response, int response_size);
> > >  int gb_audio_gb_get_topology(struct gb_connection *connection,
> > >  			     struct gb_audio_topology **topology);
> > >  int gb_audio_gb_get_control(struct gb_connection *connection,
> > > diff --git a/drivers/staging/greybus/audio_gb.c b/drivers/staging/greybus/audio_gb.c
> > > index 9d8994fdb41a..3c924d13f0e7 100644
> > > --- a/drivers/staging/greybus/audio_gb.c
> > > +++ b/drivers/staging/greybus/audio_gb.c
> > > @@ -8,7 +8,13 @@
> > >  #include <linux/greybus.h>
> > >  #include "audio_codec.h"
> > >
> > > -/* TODO: Split into separate calls */
> > > +int fetch_gb_audio_data(struct gb_connection *connection,
> > > +			int type, void *response, int response_size)
> > > +{
> > > +	return gb_operation_sync(connection, type, NULL, 0,
> > > +				 response, response_size);
> > > +}
> > > +
> > >  int gb_audio_gb_get_topology(struct gb_connection *connection,
> > >  			     struct gb_audio_topology **topology)
> > >  {
> > > @@ -17,28 +23,23 @@ int gb_audio_gb_get_topology(struct gb_connection *connection,
> > >  	u16 size;
> > >  	int ret;
> > >
> > > -	ret = gb_operation_sync(connection, GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE,
> > > -				NULL, 0, &size_resp, sizeof(size_resp));
> > > +	ret = fetch_gb_audio_data(connection, GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE,
> > > +				  &size_resp, sizeof(size_resp));
> > >  	if (ret)
> > >  		return ret;
> > > -
> > >  	size = le16_to_cpu(size_resp.size);
> > >  	if (size < sizeof(*topo))
> > >  		return -ENODATA;
> > > -
> > >  	topo = kzalloc(size, GFP_KERNEL);
> > >  	if (!topo)
> > >  		return -ENOMEM;
> > > -
> > > -	ret = gb_operation_sync(connection, GB_AUDIO_TYPE_GET_TOPOLOGY, NULL, 0,
> > > -				topo, size);
> > > +	ret = fetch_gb_audio_data(connection, GB_AUDIO_TYPE_GET_TOPOLOGY,
> > > +				  topo, size);
> > >  	if (ret) {
> > >  		kfree(topo);
> > >  		return ret;
> > >  	}
> > > -
> > >  	*topology = topo;
> > > -
> > >  	return 0;
> > >  }
> > >  EXPORT_SYMBOL_GPL(gb_audio_gb_get_topology);
> > > --
> > > 2.25.1
> > >
> > >
> > >
>
