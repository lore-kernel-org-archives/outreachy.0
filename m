Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4111366
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 11:21:21 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id k15so4380043pgt.10
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 04:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679224881;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m+UPaBzmXpvTOS0h1z+Kl2QMjmMR5XI0mc5DKXrvnQQ=;
        b=KwmFX3qzppk1UJm7uaXq14zP26N2aWsBaWARcNQcnsT5xd1eosIp2XhrK3iP629zYG
         Q1PfFtWOilYsCT3CRhiWBGKG+I2IZ28CxpIfIfeOez/70Wp4qgZIuHODSJ4/fI9ck/Eh
         5cb1+PXfS6BYT98wmlDZtfMcf4pBcwwcmOeBlCHy9rCPFUXdEzn8FnO4nfklCkP587Ip
         IYmLvqoMoCzCOtQr4EwfoKrTZkWNExVVHDxm89Q8yXYRhDJ6rbVim526lHf1NHMt+hi3
         fmdYA0fdgcDjzkaoWNvxrLOqCPpN3l9Z8LuIZ0S0P015bmyuvwLofgNyBTbc2idUrNeu
         kZSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679224881;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m+UPaBzmXpvTOS0h1z+Kl2QMjmMR5XI0mc5DKXrvnQQ=;
        b=33Pn1eP0tzEVG6IRk3H8P1qrYw+HWaDVI7QwuZg1HXLwIxC9/bs6KZVBAQCRMa+Xkm
         +Yh9ruSY7J6kj1h4OHup6sTvLRhZZG9A5fQaiCAutqYBsg4RtNit8oYrqQnGFIz9jXPg
         GgRBPBhpS71VPpPFD/6kbT+rzlJ5G3xCMaYVJyvybyNPe8zBZIpHWx9gRq4rHv1uMynW
         D5lIDcXPzPhWp7qsx9ra537iN1cgclWVUuq1wYnPi+/yv08oS7i+15IsfPZ98Ak47Oj4
         x8UEx+p7aRjwYoFl4u1JG6tySjmHizYy39OrgthvptWnJftbF9f7hTL2YR1XMBZFM6ZC
         Mgtg==
X-Gm-Message-State: AO0yUKUQHWEd4e07Wlt6R56ZjAYAwyiPEIfSNhJYY4wAyzI4ouTfC8ZQ
	oyuWx2r1QKjqhcodnB+sBUk=
X-Google-Smtp-Source: AK7set8C8/rBXpqMZQ9rKZseyTtF95P6C29rWq3hoMMFLSXRSPCKZ67ZjnY9KJ3XOQi8wJntuXzfMw==
X-Received: by 2002:a62:3815:0:b0:627:e63d:a19f with SMTP id f21-20020a623815000000b00627e63da19fmr3264065pfa.8.1679224880910;
        Sun, 19 Mar 2023 04:21:20 -0700 (PDT)
Received: from sumitra.com ([117.212.94.33])
        by smtp.gmail.com with ESMTPSA id s1-20020aa78d41000000b005d3399efd80sm4291627pfe.136.2023.03.19.04.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 04:21:19 -0700 (PDT)
Date: Sun, 19 Mar 2023 04:21:14 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: bagasdotme@gmail.com, outreachy@lists.linux.dev
Subject: Re: email configuration for the outreachy documentation
Message-ID: <20230319112114.GF50179@sumitra.com>
References: <alpine.DEB.2.22.394.2303191059470.2867@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303191059470.2867@hadrien>

On Sun, Mar 19, 2023 at 11:02:52AM +0100, Julia Lawall wrote:
> [changed subject to something more meaningful]
> 
> 
> On Sun, 19 Mar 2023, Sumitra Sharma wrote:
> 
> > On Sun, Mar 19, 2023 at 10:02:46AM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 19 Mar 2023, Sumitra Sharma wrote:
> > >
> > > > On Sun, Mar 19, 2023 at 09:35:50AM +0100, Julia Lawall wrote:
> > > > > > Actually, the only issue I faced was that the outreachyfirstpatch
> > > > > > document does not contain the information of how one can set their inbox in mutt.
> > > > > > Due to which I had problems to send and reply mails. This below
> > > > > > configuration update will enable the inbox at the client side.
> > > > > >
> > > > > > How about this...
> > > > > >
> > > > > > Under the section "Configure esmtp":
> > > > > >
> > > > > > ###
> > > > > > Next, set up the mail client, mutt, with some defaults, by creating a .muttrc file in your homedirectory:
> > > > > >
> > > > > > Note: The imap_pass, smtp_pass would be the App password or
> > > > > >  	  the mailbox password.
> > > > > >
> > > > > >  		set sendmail="/usr/bin/esmtp"
> > > > > >  		set envelope_from=yes
> > > > > >  		set from="Your Name <my.email@gmail.com>"
> > > > > >  		set use_from=yes
> > > > > >  		set edit_headers=yes
> > > > > >
> > > > > >  		# IMAP settings
> > > > > >  		set imap_user = "username@gmail.com"
> > > > > >  		set imap_pass = "<mailbox password>"
> > > > > >
> > > > > >  		# SMTP settings
> > > > > >  		set smtp_url = "smtps://username@smtp.gmail.com"
> > > > > >  		set smtp_pass = "<mailbox password>"
> > > > > >
> > > > > >  		# Remote Gmail folders
> > > > > >  		set folder = "imaps://imap.gmail.com/"
> > > > > >  		set spoolfile = "+INBOX"
> > > > > >  		set postponed = "+[Gmail]/Drafts"
> > > > > >  		set record = "+[Gmail]/Sent Mail"
> > > > > >  		set trash = "+[Gmail]/Trash"
> > > > > > ###
> > > > >
> > > > > Does this have anything to do with esmpt?
> > > > >
> > > >
> > > > In the current version of the outreachy firstpatch document the configuration
> > > > steps for .esmtp and .muttrc are written under the heading
> > > > "Configure esmtp" and also to configure esmtp we are creating the muttrc
> > > > file. So, both are linked in a way.
> > >
> > > I don't think so.  Comfiguring esmtp requires adding some information to
> > > the .muttrc, but people who don't want to configure esmtp may also want to
> > > add information to the .muttrc.
> > >
> >
> > Then, why dont we rename the section as "Configure MTA"
> 
> I don't think that the configuration of IMAP is related to the concept of
> an MTA.
> 
> https://serverfault.com/questions/173116/whats-the-different-between-mail-servers-mta-and-pop3-imap
>

Hi julia, 

A question What are the alternatives to esmtp?

I am unable to find a solution for this: 

"Comfiguring esmtp requires adding some information to
the .muttrc, but people who don't want to configure esmtp may also want to
add information to the .muttrc."

So either postfix will we used which will relay through the local machine...I am unable to answer this.
What are your views?

PS: I searched a lot but didnt find satisfactory answers. 

> >
> > then it will go as follows:
> >
> > > >
> > > > > Does "<mailbox password>" mean that you have to put your password in plain
> > > > > text?
> > > > >
> > > >
> > > > Yes, but it is always prefered to use the app password for better security.
> > >
> > > The existing text about sending mesages with mutt says:
> > >
> > > identity "my.email@gmail.com"
> > > hostname smtp.gmail.com:587
> > > username "my.email@gmail.com"
> > > password "ThisIsNotARealPassWord"
> > > starttls required
> > >
> > > Why not put "ThisIsNotARealPassWord" in your text as well, if that is
> > > what you expect people to do?
> > >
> > > That is, when you put something in quotes, the reader doedn't know whether
> > > they are supposed to put exactly the thing that you have put in the quotes
> > > or something else.  I guess that for eg "smtps://username@smtp.gmail.com"
> > > they should fill in their real username.  But for "<mailbox password>" it
> > > is not clear what is expected.
> > >
> >
> > ###
> > Configure MTA
> >
> > Note: These instructions assume you're using esmtp, but if you already have another mail transfer agent (MTA) installed, you do not need to install esmtp. Instead, change the .muttrc file "sendmail" line to be the path to your MTA. Mutt uses ssmtp by default, so if your MTA is ssmtp, you can leave that line out entirely.
> >
> > First, create a .esmtprc file with the right permissions:
> >
> >
> > 			touch ~/.esmtprc
> > 			chmod g-rwx ~/.esmtprc
> > 			chmod o-rwx ~/.esmtprc
> >
> > Edit the .esmtprc in your home directory, and add lines like this:
> >
> > 			identity "my.email@gmail.com"
> > 			hostname smtp.gmail.com:587
> > 			username "my.email@gmail.com"
> > 			password "ThisIsNotARealPassWord"
> > 			starttls required
> >
> > (For Yahoo mail, replace hostname line with:
> >
> > 			hostname smtp.mail.yahoo.com:587
> >
> > Next, set up the mail client, mutt, with some defaults, by creating a .muttrc file in your homedirectory:
> >  Note: The imap_pass, smtp_pass would be the App password or the mailbox password.
> >
> >
> > 	           set sendmail="/usr/bin/esmtp"
> > 	           set envelope_from=yes
> > 	           set from="Your Name <my.email@gmail.com>"
> > 	           set use_from=yes
> > 		     set edit_headers=yes
> >
> >                  # IMAP settings
> >                  set imap_user = "username@gmail.com"
> >                  set imap_pass = "<ThisIsNotARealPassWord>"
> 
> Why do you have <> around ThisIsNotARealPassWord.  It was not done
> previously.

Okay. Will change it.

> 
> >                  # SMTP settings
> >                  set smtp_url = "smtps://username@smtp.gmail.com"
> 
> Is username different than my.email?

No. I will change it to "my.email@gmail.com"

Regards,

Sumitra
