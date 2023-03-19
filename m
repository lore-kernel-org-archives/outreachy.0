Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502937EF
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 04:36:52 +0000 (UTC)
Received: by mail-il1-f178.google.com with SMTP id h7so4942644ila.5
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 21:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679200611;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eSDLP2P6aCSJZk/jDP/n97xJvCHkKtKDvUPlwbGH1+M=;
        b=jxdVgQ8h69rTyREnNfgYGOa6iuSc6ptOBKyZUrKZkJee5JELDAu0hNbiSkU0U706lu
         3ln8ZeX0gdZ4iIqvqtgvQQRvQsI2PU3kMAs9UDN0sXDVVYkFDbAtmo1e3AzACeno8WJQ
         NjyMwAfnlpcftbB8OZhyKW4qWAIfwyfyXNrWor3UWxeK/IV3ZMaAfcKfwsirV38PzCDB
         nbl5+r6wEpVNqY8dn1u3bR3WuX26Sdy2i/jXsOompsRpRKjloI6TczBaM4Dnla5MInt5
         1qO2i9Skn2+6ISMR4Nz7WCGu4rvbGmTecaxqiJJ+PgKKOM5WFHVFLYZvoMI1zrgh2cPn
         2vGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679200611;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eSDLP2P6aCSJZk/jDP/n97xJvCHkKtKDvUPlwbGH1+M=;
        b=ghYMU85W3JKS09pKQn4J+01Mxcrx88wYKPf9YKYh89xydw+sSy2x/71zx6Sxs0/68E
         ZYHAmc4ClatEqQ2QrCt/+1kj+oHCdQgTAGpmnC+wLiwvHDtUpJGZT1S2PBjcVRAf4860
         yr90ait6jOc9B88+LnGEOIzFl7Kc9p6rTwdriLxXBJJ1ASQd/4Z3ZQM8YXEUCvaEfP0S
         gnvlfQpZKclhVNMrow+E6uXZKEull5tkau2csbfXKyNvhUN8toVJlihl/x1CRdjR+O7a
         0Z4Ec+OggP7l5AWmL0esQnfXYp9uMbxMWc8eRfbgIG+Zm6LKhgpRIhPDQZzHRJUYqpFu
         gBew==
X-Gm-Message-State: AO0yUKUArXetpWOoUTS2+fJlkT1FWYeCLefdLhYVfwISliCDCClDmSrd
	0D1S7oGtq58xEK2G/l51afqlVZCTEP6TFg==
X-Google-Smtp-Source: AK7set8a3iLMlkFo20Gh1hP0QkHzyCQSV3hAHRbFqFZJ75Sy3RgQN99YmLVfwCroCFLl7vd2pUcduA==
X-Received: by 2002:a92:cf52:0:b0:316:fcbe:627b with SMTP id c18-20020a92cf52000000b00316fcbe627bmr2703508ilr.4.1679200611229;
        Sat, 18 Mar 2023 21:36:51 -0700 (PDT)
Received: from pikachu-Z97-D3H ([76.76.64.93])
        by smtp.gmail.com with ESMTPSA id k10-20020a056638370a00b00406356481casm2114062jav.122.2023.03.18.21.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 21:36:50 -0700 (PDT)
Date: Sat, 18 Mar 2023 22:36:49 -0600
From: Mark Heim <questioneight@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: extract a fxn to improve clarity
Message-ID: <20230319043649.GB3410@pikachu-Z97-D3H>
References: <20230317141756.GA43753@pikachu-Z97-D3H>
 <ZBR6MZifQBMLV8Ps@kroah.com>
 <20230317172542.GB48779@pikachu-Z97-D3H>
 <ZBVjQoayDB3JEoch@kroah.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBVjQoayDB3JEoch@kroah.com>

On Sat, Mar 18, 2023 at 08:07:46AM +0100, Greg Kroah-Hartman wrote:
> On Fri, Mar 17, 2023 at 11:25:42AM -0600, Mark Heim wrote:
> > On Fri, Mar 17, 2023 at 03:33:21PM +0100, Greg Kroah-Hartman wrote:
> > > And what is "fxn" in the subject line?  Ironic you use an abbreviation
> > > when trying to improve clarity :)
> > > 
> > 
> > I thought fxn was an acceptable abbreviation that saved me a few characters
> > in the subject line. I thought I was crunched for space.
> 
> You are, but you still have to make it legible.
> 

Okay, got it.

> > > > Signed-off-by: Mark Thomas Heim <questioneight@gmail.com>
> > > > ---
> > > >  drivers/staging/greybus/audio_codec.h |  2 ++
> > > >  drivers/staging/greybus/audio_gb.c    | 21 +++++++++++----------
> > > >  2 files changed, 13 insertions(+), 10 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
> > > > index ce15e800e607..a2e8361952b8 100644
> > > > --- a/drivers/staging/greybus/audio_codec.h
> > > > +++ b/drivers/staging/greybus/audio_codec.h
> > > > @@ -177,6 +177,8 @@ int gbaudio_register_module(struct gbaudio_module_info *module);
> > > >  void gbaudio_unregister_module(struct gbaudio_module_info *module);
> > > >  
> > > >  /* protocol related */
> > > > +int fetch_gb_audio_data(struct gb_connection *connection, int type,
> > > > +			void *response, int response_size);
> > > 
> > > Why is this a global function?
> > > 
> > 
> > Global function? Do you mean the EXPORT_SYMBOL_GPL makes it global?
> 
> No, EXPORT_SYMBOL*() is to provide a symbol to a module.
> 
> The normal C namespace rules still apply here if you were to build this
> code into the kernel not as a module, right?  There is only one
> namespace for a C program, so be aware of that.
> 

Okay, I'll have to keep that in mind.

> > That's an issue since I was trying to imitate the structure of the
> > functions that were already in the C code, though I am not exactly sure
> > the functionality of that statement. I thought this function should
> > match.
> 
> For a static function perhaps, but that's not what you did here (also
> you made it global for no apparent reason.)
> 
> > > And why if it is a global function, are you not using the gb_audio_*
> > > prefix?  Be aware of the global namespace please.
> > > 
> > 
> > I thought namespaces were a C++ specific issue, not C. I think I was
> > ignorant of the C namespace until just now. I have used C++ namespaces
> > and Java packages, but wasn't aware of the C analogue.
> 
> There is only one "namespace" in C programs, so be aware of that.
> 
> We do have the idea of "module namespaces" for symbols that are exported
> for modules to use, but that's not being used here either so I will not
> get into that.  There's documentation in the kernel about that if you
> are curious.
> 

I'll try to start with something else that is simpler for a first fix.

> > > >  int gb_audio_gb_get_topology(struct gb_connection *connection,
> > > >  			     struct gb_audio_topology **topology);
> > > >  int gb_audio_gb_get_control(struct gb_connection *connection,
> > > > diff --git a/drivers/staging/greybus/audio_gb.c b/drivers/staging/greybus/audio_gb.c
> > > > index 9d8994fdb41a..3c924d13f0e7 100644
> > > > --- a/drivers/staging/greybus/audio_gb.c
> > > > +++ b/drivers/staging/greybus/audio_gb.c
> > > > @@ -8,7 +8,13 @@
> > > >  #include <linux/greybus.h>
> > > >  #include "audio_codec.h"
> > > >  
> > > > -/* TODO: Split into separate calls */
> > > > +int fetch_gb_audio_data(struct gb_connection *connection,
> > > > +			int type, void *response, int response_size)
> > > > +{
> > > > +	return gb_operation_sync(connection, type, NULL, 0,
> > > > +				 response, response_size);
> > > > +}
> > > > +
> > > >  int gb_audio_gb_get_topology(struct gb_connection *connection,
> > > >  			     struct gb_audio_topology **topology)
> > > >  {
> > > > @@ -17,28 +23,23 @@ int gb_audio_gb_get_topology(struct gb_connection *connection,
> > > >  	u16 size;
> > > >  	int ret;
> > > >  
> > > > -	ret = gb_operation_sync(connection, GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE,
> > > > -				NULL, 0, &size_resp, sizeof(size_resp));
> > > > +	ret = fetch_gb_audio_data(connection, GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE,
> > > > +				  &size_resp, sizeof(size_resp));
> > > 
> > > What are you actually changing here besides the name?
> > > 
> > 
> > In an earlier revision, I replaced each gb_operation_sync call with one
> > of two functions: fetch_gb_audio_data_size and fetch_gb_audio_data.
> > Next, I added in comments to explain what all the code was doing. To
> > satisfy the restriction that the computations done by the code were the
> > same as before the refactor, I would pass in 4 parameters into each
> > of the functions, which saves the issue of magic numbers being fed into 
> > gb_operation_sync. Then, the two new functions I consolidated down to 
> > 1 function because the method bodies were identical. Finally, per the
> > code refactoring guides, I eliminated the comments.
> > 
> > I thought about adding in a function to encapsulate the code between
> > the two refactored methods, but you run into an issue with needing to
> > return too many values without doing something like defining a struct to
> > return those values. Thus, there's almost no change to the code.
> > 
> > > How did this fix up the TODO at all?
> > > 
> > 
> > It depends how you interpret the TODO, I suppose. My original intent
> > was to encapsulate code into some function calls with a helpful name, and
> > the end result of this refactor is more or less a U-turn. 
> > 
> > Should I update this patch or start something new? Any other feedback is
> > also welcome.
> 
> If you want to update the patch to do this correctly, that's up to you,
> but note that your current implementation is not correct.
> 
> Perhaps start out with something simple like coding style fixes.  There
> are still loads of them to do in the codebase.
> 

I have another idea in the works that I'll try regarding spelling fixes,
and that issue is probably a chance to make changes that is more suited for
beginners. It's mentioned elsewhere in the mailing list.

> good luck!
> 

Thank you for your repsonse.

> greg k-h
