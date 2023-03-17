Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956907475
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 17:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=hDNnn/6TueY7VOlHr0XZUBOFDhqSa2EH98aY+Pwriu0=;
  b=YDLR7AVA++YqUClH418qw7Kyt3/Fv/NmjiM3+BcAJvO6vacKfu1k0Zn3
   apFibnc3DMaI4SsJZlLJJpoQpwX05Gi4ju9uSGMCgeHIY2TwBtJdOxtgZ
   +ljmWu17L0FbWqSelaW06Y32OalY8WRiwH8MuW0587MFyxjlUMh4yymSk
   0=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,268,1673910000"; 
   d="scan'208";a="97824216"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 18:47:28 +0100
Date: Fri, 17 Mar 2023 18:47:28 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Mark Heim <questioneight@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: extract a fxn to improve clarity
In-Reply-To: <20230317172542.GB48779@pikachu-Z97-D3H>
Message-ID: <d24cf0c9-f8e-7436-ff87-5a6fd144a049@inria.fr>
References: <20230317141756.GA43753@pikachu-Z97-D3H> <ZBR6MZifQBMLV8Ps@kroah.com> <20230317172542.GB48779@pikachu-Z97-D3H>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Global function? Do you mean the EXPORT_SYMBOL_GPL makes it global?
> That's an issue since I was trying to imitate the structure of the
> functions that were already in the C code, though I am not exactly sure
> the functionality of that statement. I thought this function should
> match.

Global means that the function doesn't have static in its declaration.  So
it is visible to files other than this one.  EXPORT_SYMBOL has to do with
modules.

>
> > And why if it is a global function, are you not using the gb_audio_*
> > prefix?  Be aware of the global namespace please.
> >
>
> I thought namespaces were a C++ specific issue, not C. I think I was
> ignorant of the C namespace until just now. I have used C++ namespaces
> and Java packages, but wasn't aware of the C analogue.

The point is the concept of visible names, not a declaration.

julia

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
> >
> > What are you actually changing here besides the name?
> >
>
> In an earlier revision, I replaced each gb_operation_sync call with one
> of two functions: fetch_gb_audio_data_size and fetch_gb_audio_data.
> Next, I added in comments to explain what all the code was doing. To
> satisfy the restriction that the computations done by the code were the
> same as before the refactor, I would pass in 4 parameters into each
> of the functions, which saves the issue of magic numbers being fed into
> gb_operation_sync. Then, the two new functions I consolidated down to
> 1 function because the method bodies were identical. Finally, per the
> code refactoring guides, I eliminated the comments.
>
> I thought about adding in a function to encapsulate the code between
> the two refactored methods, but you run into an issue with needing to
> return too many values without doing something like defining a struct to
> return those values. Thus, there's almost no change to the code.
>
> > How did this fix up the TODO at all?
> >
>
> It depends how you interpret the TODO, I suppose. My original intent
> was to encapsulate code into some function calls with a helpful name, and
> the end result of this refactor is more or less a U-turn.
>
> Should I update this patch or start something new? Any other feedback is
> also welcome.
>
> > confused,
> >
> > greg k-h
>
>
