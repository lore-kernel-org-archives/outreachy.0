Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F13310EC
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 09:53:35 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id w4so1538509plg.9
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 02:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679219615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gSyHXg+qx54UG3oTV3mgfkfkktN+bMfa4iTfcRiiiac=;
        b=GeFOWxcvNMzk+b1G/ECAgiBJCPdUvjz/5blvXTrmnDYq2kYT+QIj/JXnWsvHA3o3QK
         NPxpLKfyJKOH1nyObiW8cTJpfFufur9vsdlCELGYFl9rmgMslmrxFCQH4vFyAn+seqh0
         J30aOWEhuAgwX+yIyUqQOCvhWqdAkKV6Y4X6gTdd9nVi131moaKj0wVXmvBNHIsUgHsp
         DP3HCIs19DffZLy9k+ZT/u/Zuqu5iQw3nmrKa5Bto9jL5nen8OkNiSy+Jsmwh2ZQ+3R0
         6df1EGxf7bTCL9vjk9p5uRe9qh9MQjKdZqwmgyrh9qnLFoeqrbCdwPEiRM9kpP1+CFOl
         LIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679219615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gSyHXg+qx54UG3oTV3mgfkfkktN+bMfa4iTfcRiiiac=;
        b=5kLo9UtuQlKxgnCMV/i8mDynvj3ATtkiCZoH/XGJRxbvs0r4MKFDvSbRSJOm2a7qKh
         OTufpPPKcN0fbC7e96FfvyUXYq0fo60t0cV27iOxelT43t7Wz5dho2ox4cltqMCB7zlY
         qlBkMma/9TB//LEJAmZjfZKUD9CYEtl+U6lgcBTeevJ/iSRSLlD+vUqLlzM+A2ZlBBxh
         f5KnOTlBIodObBqBp7b0IMwQGAJ8on3+LpsOJV2u50KG4+Midr0Fm9P13t+QhMLj9L48
         J6VC4y0op59yTzRonFWnzLrmQxkz65ZKD5aZW8gVc+CTRiZcLPmyBJxZEuEg8nD8HGi/
         7Yug==
X-Gm-Message-State: AO0yUKUu7IB0smxENEhxZsoL27wgzXl1uQzclpa3MwGjHhPdGtLthpzf
	ZLCay+hG3X3WjU7e7YD3vEg=
X-Google-Smtp-Source: AK7set+dDt0mz2hQGHeQDtciKQs3LmKtdWeoc4fQ6FmcDLsvKjvdKWuNq8gRfKVnEe/1cfOJYlC6Gg==
X-Received: by 2002:a17:902:e0d1:b0:1a0:459b:3276 with SMTP id e17-20020a170902e0d100b001a0459b3276mr10305863pla.11.1679219614552;
        Sun, 19 Mar 2023 02:53:34 -0700 (PDT)
Received: from sumitra.com ([117.212.94.33])
        by smtp.gmail.com with ESMTPSA id c24-20020a170902849800b0019f27fd7cecsm4458409plo.197.2023.03.19.02.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 02:53:33 -0700 (PDT)
Date: Sun, 19 Mar 2023 02:53:28 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: bagasdotme@gmail.com, outreachy@lists.linux.dev
Subject: Re: your mail
Message-ID: <20230319095328.GE50179@sumitra.com>
References: <20230319080955.GA50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190934200.2867@hadrien>
 <20230319085612.GD50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190956470.2867@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303190956470.2867@hadrien>

On Sun, Mar 19, 2023 at 10:02:46AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 19 Mar 2023, Sumitra Sharma wrote:
> 
> > On Sun, Mar 19, 2023 at 09:35:50AM +0100, Julia Lawall wrote:
> > > > Actually, the only issue I faced was that the outreachyfirstpatch
> > > > document does not contain the information of how one can set their inbox in mutt.
> > > > Due to which I had problems to send and reply mails. This below
> > > > configuration update will enable the inbox at the client side.
> > > >
> > > > How about this...
> > > >
> > > > Under the section "Configure esmtp":
> > > >
> > > > ###
> > > > Next, set up the mail client, mutt, with some defaults, by creating a .muttrc file in your homedirectory:
> > > >
> > > > Note: The imap_pass, smtp_pass would be the App password or
> > > >  	  the mailbox password.
> > > >
> > > >  		set sendmail="/usr/bin/esmtp"
> > > >  		set envelope_from=yes
> > > >  		set from="Your Name <my.email@gmail.com>"
> > > >  		set use_from=yes
> > > >  		set edit_headers=yes
> > > >
> > > >  		# IMAP settings
> > > >  		set imap_user = "username@gmail.com"
> > > >  		set imap_pass = "<mailbox password>"
> > > >
> > > >  		# SMTP settings
> > > >  		set smtp_url = "smtps://username@smtp.gmail.com"
> > > >  		set smtp_pass = "<mailbox password>"
> > > >
> > > >  		# Remote Gmail folders
> > > >  		set folder = "imaps://imap.gmail.com/"
> > > >  		set spoolfile = "+INBOX"
> > > >  		set postponed = "+[Gmail]/Drafts"
> > > >  		set record = "+[Gmail]/Sent Mail"
> > > >  		set trash = "+[Gmail]/Trash"
> > > > ###
> > >
> > > Does this have anything to do with esmpt?
> > >
> >
> > In the current version of the outreachy firstpatch document the configuration
> > steps for .esmtp and .muttrc are written under the heading
> > "Configure esmtp" and also to configure esmtp we are creating the muttrc
> > file. So, both are linked in a way.
> 
> I don't think so.  Comfiguring esmtp requires adding some information to
> the .muttrc, but people who don't want to configure esmtp may also want to
> add information to the .muttrc.
>

Then, why dont we rename the section as "Configure MTA"

then it will go as follows:

> >
> > > Does "<mailbox password>" mean that you have to put your password in plain
> > > text?
> > >
> >
> > Yes, but it is always prefered to use the app password for better security.
> 
> The existing text about sending mesages with mutt says:
> 
> identity "my.email@gmail.com"
> hostname smtp.gmail.com:587
> username "my.email@gmail.com"
> password "ThisIsNotARealPassWord"
> starttls required
> 
> Why not put "ThisIsNotARealPassWord" in your text as well, if that is
> what you expect people to do?
> 
> That is, when you put something in quotes, the reader doedn't know whether
> they are supposed to put exactly the thing that you have put in the quotes
> or something else.  I guess that for eg "smtps://username@smtp.gmail.com"
> they should fill in their real username.  But for "<mailbox password>" it
> is not clear what is expected.
> 

###
Configure MTA

Note: These instructions assume you're using esmtp, but if you already have another mail transfer agent (MTA) installed, you do not need to install esmtp. Instead, change the .muttrc file "sendmail" line to be the path to your MTA. Mutt uses ssmtp by default, so if your MTA is ssmtp, you can leave that line out entirely.

First, create a .esmtprc file with the right permissions:


			touch ~/.esmtprc
			chmod g-rwx ~/.esmtprc
			chmod o-rwx ~/.esmtprc

Edit the .esmtprc in your home directory, and add lines like this:

			identity "my.email@gmail.com"
			hostname smtp.gmail.com:587
			username "my.email@gmail.com"
			password "ThisIsNotARealPassWord"
			starttls required 

(For Yahoo mail, replace hostname line with:

			hostname smtp.mail.yahoo.com:587

Next, set up the mail client, mutt, with some defaults, by creating a .muttrc file in your homedirectory:
 Note: The imap_pass, smtp_pass would be the App password or the mailbox password.


	           set sendmail="/usr/bin/esmtp"
	           set envelope_from=yes
	           set from="Your Name <my.email@gmail.com>"
	           set use_from=yes
		     set edit_headers=yes

                 # IMAP settings
                 set imap_user = "username@gmail.com"
                 set imap_pass = "<ThisIsNotARealPassWord>"

                 # SMTP settings
                 set smtp_url = "smtps://username@smtp.gmail.com"
                 set smtp_pass = "<ThisIsNotARealPassWord>"

                 # Remote Gmail folders
                 set folder = "imaps://imap.gmail.com/"
                 set spoolfile = "+INBOX"
                 set postponed = "+[Gmail]/Drafts"
                 set record = "+[Gmail]/Sent Mail"
                 set trash = "+[Gmail]/Trash"


###


Regards,

Sumitra

> julia
