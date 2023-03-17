Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A0B7475
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 16:52:00 +0000 (UTC)
Received: by mail-io1-f48.google.com with SMTP id o12so2559507iow.6
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 09:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679071919;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Fo5saKoI8mUoTWgFAW36WCgO6fdLC9H/xxePN1fhhNw=;
        b=jiLS/JxVQOyP7U9yIKrwywp6FwRrSTIF3LpF4WtO1YiYPwVTqHBsRuBAQKUu1OXVBF
         RnnRiRsbGOZXBqaBCu3G0llPSBQeneIko8hF3ys/sW9O1bNFfAErasr7kx5fwJspoyJJ
         VNyWyj+psAfRpkjiVTmpv8uZRPUlSijf8zk7LjdBbwPX1bv7XcvqkwOsi19AF7+wo+74
         vj6Y2wiQgGS+LFafw7njnL7SqY88Val85NK33tBrYQrO4l6N+rirJR4iE9JAUbZgsFuG
         WsJDl7u3nJ4CnXPN4PWky6WpqYg+HOKOuP3MJF73d08WojfyhYO0iwtIPopEM7DKAyh0
         HuVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679071919;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fo5saKoI8mUoTWgFAW36WCgO6fdLC9H/xxePN1fhhNw=;
        b=61LX103Kg03WP0JXd72T9Q9pTplqhvT6GWx9OzbC8RY8nNzXa0K+MAYDsJiVzf31Bt
         Vv602gwgmIkBl5iHkgWJ8r7HEA9aigom8wtYDswny6ZqGRkt6PYzf4vEMLYEh+PQJBUA
         uMYohU2AmHSqSxvn/faOEYg12mpaso5OTnoWZzEizLEPrxdi9P2tLf4WF9kEHD1IR+dM
         OJpaYnneOIBo9qzMyWBWr+dkm0kujc4jkQcJ0U+x6/4ykieVFIsdyqYRxXAcT0ZQOtKA
         im4DEyzgDa5mqnq/on6kf4yi3XmInY8wa7I5uAw84zlLlYeYWBS5ZP6FNMBELen8xdnb
         Ri7Q==
X-Gm-Message-State: AO0yUKXUpJlsv0ywdRjOSKQl0uoKqU6ufBHkp8bMMKgqoscb8AekqS5W
	I03AeaCNuGHHfL95Kzjtf9EE9F0NCZPHYw==
X-Google-Smtp-Source: AK7set/CcQuJEohvEpEicCKPz3IV28izu86tLL2XnduXRlsApCvZ64EkMtKJBx8mXEuKARIwmFMIKw==
X-Received: by 2002:a5e:df43:0:b0:74c:aa1d:c1a1 with SMTP id g3-20020a5edf43000000b0074caa1dc1a1mr146182ioq.3.1679071919402;
        Fri, 17 Mar 2023 09:51:59 -0700 (PDT)
Received: from pikachu-Z97-D3H ([76.76.64.93])
        by smtp.gmail.com with ESMTPSA id z5-20020a027a45000000b0040535426261sm839279jad.37.2023.03.17.09.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 09:51:58 -0700 (PDT)
Date: Fri, 17 Mar 2023 10:51:57 -0600
From: Mark Heim <questioneight@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: extract a fxn to improve clarity
Message-ID: <20230317165157.GA48779@pikachu-Z97-D3H>
References: <20230317141756.GA43753@pikachu-Z97-D3H>
 <5f036ea-4a8c-54ee-5eaa-4ee1aac0472c@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f036ea-4a8c-54ee-5eaa-4ee1aac0472c@inria.fr>

On Fri, Mar 17, 2023 at 03:32:24PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 17 Mar 2023, Mark Thomas Heim wrote:
> 
> > The gb_audio_gb_get_topology function at the top of the file
> > needs to be split per a TODO comment above the function. It
> > is necessary to refactor the code to pull out a method
> > that has fewer parameters to improve readability. A
> > prototype for the new function is now in the relevant header,
> > and the simpler function calls replace the old ones.
> 
> Mark,
> 
> Please go back and read the outreachy tutorial, in particular
> 
> https://kernelnewbies.org/PatchPhilosophy
> 
> The commit message is not written in the imperative, as it is required to
> be.
> 

I indeed tried to make it imperative... which is why it was so awkward and is
why I used phrasing like "it is necessary to refactor" instead of saying flat
out "I refactored it" (the latter is definitely not imperative voice, but I
am still not sure I follow you). I always want to write in first person and
past tense, and I thought I made it as close as I could get. How does this sound:

"Refactor the gb_audio_gb_get_topology by extracting a function to improve
clarity. Create a helper function with fewer parameters to replace
tricky code. "

I'm not sure if that's any better. Is it like writing commands or
directions?

> Also, words like "needs to" and "necessary" express an opinion.  These
> things may indeed be good things to do, but "needs to" and "necessary"
> don't help to understand why the change is being made.
> 

Yes, I was trying to figure out how to write in the imperative voice but
got lost in the details. My first draft that I never submitted was out in
left field, but what I thought I got right in the draft that I actually
submitted for the patch had (a) no use of personal pronouns and (b) no
verbs in past tense. Are those two ingredients part of imperative voice?

> julia
> 
> >
> > Signed-off-by: Mark Thomas Heim <questioneight@gmail.com>
> > ---
> >  drivers/staging/greybus/audio_codec.h |  2 ++
> >  drivers/staging/greybus/audio_gb.c    | 21 +++++++++++----------
> >  2 files changed, 13 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
> > index ce15e800e607..a2e8361952b8 100644
> > --- a/drivers/staging/greybus/audio_codec.h
> > +++ b/drivers/staging/greybus/audio_codec.h
> > @@ -177,6 +177,8 @@ int gbaudio_register_module(struct gbaudio_module_info *module);
> >  void gbaudio_unregister_module(struct gbaudio_module_info *module);
> >
> >  /* protocol related */
> > +int fetch_gb_audio_data(struct gb_connection *connection, int type,
> > +			void *response, int response_size);
> >  int gb_audio_gb_get_topology(struct gb_connection *connection,
> >  			     struct gb_audio_topology **topology);
> >  int gb_audio_gb_get_control(struct gb_connection *connection,
> > diff --git a/drivers/staging/greybus/audio_gb.c b/drivers/staging/greybus/audio_gb.c
> > index 9d8994fdb41a..3c924d13f0e7 100644
> > --- a/drivers/staging/greybus/audio_gb.c
> > +++ b/drivers/staging/greybus/audio_gb.c
> > @@ -8,7 +8,13 @@
> >  #include <linux/greybus.h>
> >  #include "audio_codec.h"
> >
> > -/* TODO: Split into separate calls */
> > +int fetch_gb_audio_data(struct gb_connection *connection,
> > +			int type, void *response, int response_size)
> > +{
> > +	return gb_operation_sync(connection, type, NULL, 0,
> > +				 response, response_size);
> > +}
> > +
> >  int gb_audio_gb_get_topology(struct gb_connection *connection,
> >  			     struct gb_audio_topology **topology)
> >  {
> > @@ -17,28 +23,23 @@ int gb_audio_gb_get_topology(struct gb_connection *connection,
> >  	u16 size;
> >  	int ret;
> >
> > -	ret = gb_operation_sync(connection, GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE,
> > -				NULL, 0, &size_resp, sizeof(size_resp));
> > +	ret = fetch_gb_audio_data(connection, GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE,
> > +				  &size_resp, sizeof(size_resp));
> >  	if (ret)
> >  		return ret;
> > -
> >  	size = le16_to_cpu(size_resp.size);
> >  	if (size < sizeof(*topo))
> >  		return -ENODATA;
> > -
> >  	topo = kzalloc(size, GFP_KERNEL);
> >  	if (!topo)
> >  		return -ENOMEM;
> > -
> > -	ret = gb_operation_sync(connection, GB_AUDIO_TYPE_GET_TOPOLOGY, NULL, 0,
> > -				topo, size);
> > +	ret = fetch_gb_audio_data(connection, GB_AUDIO_TYPE_GET_TOPOLOGY,
> > +				  topo, size);
> >  	if (ret) {
> >  		kfree(topo);
> >  		return ret;
> >  	}
> > -
> >  	*topology = topo;
> > -
> >  	return 0;
> >  }
> >  EXPORT_SYMBOL_GPL(gb_audio_gb_get_topology);
> > --
> > 2.25.1
> >
> >
> >
