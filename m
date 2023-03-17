Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280EE7475
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 17:25:46 +0000 (UTC)
Received: by mail-il1-f176.google.com with SMTP id l15so1566063ilv.4
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 10:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679073945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cn92olfyCLPUbf4zkLygmehYXZu86oC3ewN+JXKJT/I=;
        b=AJzOH0f/hEQCoRDHnmnxGCRBwDU/isbVrL3mhaJaEmsREL1WJ1/Pke27GeTbIeHrE+
         Yk/0zqxIHWmyvdMk3ZZ/kajAb5GP7LNl3iTQ9xD0Z5938ralpIyL0OnCMJ/bX1myGopk
         61Q309pRCdI2TAHZiesr7YBaZwvk7CFDANb/RDB4JFS+MmOLOl6f+Nf6itClguj+FdCU
         6jnLLBGeRKtqIbHJw7A3DxH4IfdaTT3qYa/Dv/FHlTv3PRS5wylMMj3HoX0CLMzwy14F
         FPym0X4hN9YZ2Om9J9GUV0ftzrws01bY76wNJ+0T338EFdBT+dGQqIDhsp3F67JdxzDv
         eVLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679073945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cn92olfyCLPUbf4zkLygmehYXZu86oC3ewN+JXKJT/I=;
        b=wAjI/W8pLo1O5JWclAKl4t05D4Sudc+w3ZTIRhVzb2BgNAY8m5JAljYhCb+G/rSbMN
         Hjvg6iw3pjj1ifQpBQxqdlaIq69equc9Lfq7/Z8JVSCNrAbcKTM/WItpFawxdQDa8qCH
         CHFhMSbXH13xvz9nElVqd4JX6mI6FgTCmK8ZFcVudfNQgLn6ohlTcbYYsRF6lOYRG7Ps
         cwfVMxzWMnsFSGpHlmGImMFEP5ezDDw3TE0ctvTbR5IgkMIKWruFECBr46nKl+pk9YNJ
         xyAk9W2sSQQ7Gg4h3hFxEgffVFFmTy7MYvhdlcwPz8L64L7rCqRADc3wCe27PfRdbgqT
         y2PA==
X-Gm-Message-State: AO0yUKVgaDyB8Ads8y0xyJAMrrJvlw8JbvHv5yHqlA6/6IXcKlP3w6/9
	156Doa89jKUgcwBC7FbUCfe9J+LWUvUR4Q==
X-Google-Smtp-Source: AK7set9WCGWUmhv32+u8mLItC/YVW8nGBToRx2mXqMEzu57dwVVufx+fZHQTpKSpC7ZKdEuBasbW4A==
X-Received: by 2002:a92:6e12:0:b0:322:f130:ab7c with SMTP id j18-20020a926e12000000b00322f130ab7cmr54930ilc.2.1679073945009;
        Fri, 17 Mar 2023 10:25:45 -0700 (PDT)
Received: from pikachu-Z97-D3H ([76.76.64.93])
        by smtp.gmail.com with ESMTPSA id u8-20020a926008000000b003179d4bd50asm731757ilb.75.2023.03.17.10.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 10:25:44 -0700 (PDT)
Date: Fri, 17 Mar 2023 11:25:42 -0600
From: Mark Heim <questioneight@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: extract a fxn to improve clarity
Message-ID: <20230317172542.GB48779@pikachu-Z97-D3H>
References: <20230317141756.GA43753@pikachu-Z97-D3H>
 <ZBR6MZifQBMLV8Ps@kroah.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBR6MZifQBMLV8Ps@kroah.com>

On Fri, Mar 17, 2023 at 03:33:21PM +0100, Greg Kroah-Hartman wrote:
> On Fri, Mar 17, 2023 at 08:17:56AM -0600, Mark Thomas Heim wrote:
> > The gb_audio_gb_get_topology function at the top of the file
> > needs to be split per a TODO comment above the function. It
> > is necessary to refactor the code to pull out a method
> > that has fewer parameters to improve readability. A
> > prototype for the new function is now in the relevant header,
> > and the simpler function calls replace the old ones.
> 
> Note, you have a full 72 characters to use for a changelog, please use
> the whole line.
> 

If I'm not mistaken, that's the first time this issue has appeared in
the Outreachy mailing board this round :-). I have learned a lot from
other people's mistakes and will try to avoid making new ones.

> And what is "fxn" in the subject line?  Ironic you use an abbreviation
> when trying to improve clarity :)
> 

I thought fxn was an acceptable abbreviation that saved me a few characters
in the subject line. I thought I was crunched for space.

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
> 
> Why is this a global function?
> 

Global function? Do you mean the EXPORT_SYMBOL_GPL makes it global?
That's an issue since I was trying to imitate the structure of the
functions that were already in the C code, though I am not exactly sure
the functionality of that statement. I thought this function should
match.

> And why if it is a global function, are you not using the gb_audio_*
> prefix?  Be aware of the global namespace please.
> 

I thought namespaces were a C++ specific issue, not C. I think I was
ignorant of the C namespace until just now. I have used C++ namespaces
and Java packages, but wasn't aware of the C analogue.

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
> 
> What are you actually changing here besides the name?
> 

In an earlier revision, I replaced each gb_operation_sync call with one
of two functions: fetch_gb_audio_data_size and fetch_gb_audio_data.
Next, I added in comments to explain what all the code was doing. To
satisfy the restriction that the computations done by the code were the
same as before the refactor, I would pass in 4 parameters into each
of the functions, which saves the issue of magic numbers being fed into 
gb_operation_sync. Then, the two new functions I consolidated down to 
1 function because the method bodies were identical. Finally, per the
code refactoring guides, I eliminated the comments.

I thought about adding in a function to encapsulate the code between
the two refactored methods, but you run into an issue with needing to
return too many values without doing something like defining a struct to
return those values. Thus, there's almost no change to the code.

> How did this fix up the TODO at all?
> 

It depends how you interpret the TODO, I suppose. My original intent
was to encapsulate code into some function calls with a helpful name, and
the end result of this refactor is more or less a U-turn. 

Should I update this patch or start something new? Any other feedback is
also welcome.

> confused,
> 
> greg k-h
