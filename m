Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E5E10EC
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 10:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=dw456rjrnw0J0lZzbqQqvuUqAjBz6dPmdT3+buc/eB8=;
  b=iTPbBAXEIEhtMw8m5soCKyJlRAi3XV1kwLETYdd83OVWPQlvOK23NkUp
   CIqEnJkdZs0nsXFXjhT+n5oAXt+d02eYq9gy0wnpxDdyc/z3uL9mo8CSb
   YeLAxGNzIha05ARHtkuYj9G4sd4UqgmZjX/wc5ITyeh43xavmGVfWZMdl
   A=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,273,1673910000"; 
   d="scan'208";a="50601984"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 11:02:54 +0100
Date: Sun, 19 Mar 2023 11:02:52 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: bagasdotme@gmail.com, outreachy@lists.linux.dev
Subject: email configuration for the outreachy documentation
Message-ID: <alpine.DEB.2.22.394.2303191059470.2867@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

[changed subject to something more meaningful]


On Sun, 19 Mar 2023, Sumitra Sharma wrote:

> On Sun, Mar 19, 2023 at 10:02:46AM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 19 Mar 2023, Sumitra Sharma wrote:
> >
> > > On Sun, Mar 19, 2023 at 09:35:50AM +0100, Julia Lawall wrote:
> > > > > Actually, the only issue I faced was that the outreachyfirstpatch
> > > > > document does not contain the information of how one can set their inbox in mutt.
> > > > > Due to which I had problems to send and reply mails. This below
> > > > > configuration update will enable the inbox at the client side.
> > > > >
> > > > > How about this...
> > > > >
> > > > > Under the section "Configure esmtp":
> > > > >
> > > > > ###
> > > > > Next, set up the mail client, mutt, with some defaults, by creating a .muttrc file in your homedirectory:
> > > > >
> > > > > Note: The imap_pass, smtp_pass would be the App password or
> > > > >  	  the mailbox password.
> > > > >
> > > > >  		set sendmail="/usr/bin/esmtp"
> > > > >  		set envelope_from=yes
> > > > >  		set from="Your Name <my.email@gmail.com>"
> > > > >  		set use_from=yes
> > > > >  		set edit_headers=yes
> > > > >
> > > > >  		# IMAP settings
> > > > >  		set imap_user = "username@gmail.com"
> > > > >  		set imap_pass = "<mailbox password>"
> > > > >
> > > > >  		# SMTP settings
> > > > >  		set smtp_url = "smtps://username@smtp.gmail.com"
> > > > >  		set smtp_pass = "<mailbox password>"
> > > > >
> > > > >  		# Remote Gmail folders
> > > > >  		set folder = "imaps://imap.gmail.com/"
> > > > >  		set spoolfile = "+INBOX"
> > > > >  		set postponed = "+[Gmail]/Drafts"
> > > > >  		set record = "+[Gmail]/Sent Mail"
> > > > >  		set trash = "+[Gmail]/Trash"
> > > > > ###
> > > >
> > > > Does this have anything to do with esmpt?
> > > >
> > >
> > > In the current version of the outreachy firstpatch document the configuration
> > > steps for .esmtp and .muttrc are written under the heading
> > > "Configure esmtp" and also to configure esmtp we are creating the muttrc
> > > file. So, both are linked in a way.
> >
> > I don't think so.  Comfiguring esmtp requires adding some information to
> > the .muttrc, but people who don't want to configure esmtp may also want to
> > add information to the .muttrc.
> >
>
> Then, why dont we rename the section as "Configure MTA"

I don't think that the configuration of IMAP is related to the concept of
an MTA.

https://serverfault.com/questions/173116/whats-the-different-between-mail-servers-mta-and-pop3-imap

>
> then it will go as follows:
>
> > >
> > > > Does "<mailbox password>" mean that you have to put your password in plain
> > > > text?
> > > >
> > >
> > > Yes, but it is always prefered to use the app password for better security.
> >
> > The existing text about sending mesages with mutt says:
> >
> > identity "my.email@gmail.com"
> > hostname smtp.gmail.com:587
> > username "my.email@gmail.com"
> > password "ThisIsNotARealPassWord"
> > starttls required
> >
> > Why not put "ThisIsNotARealPassWord" in your text as well, if that is
> > what you expect people to do?
> >
> > That is, when you put something in quotes, the reader doedn't know whether
> > they are supposed to put exactly the thing that you have put in the quotes
> > or something else.  I guess that for eg "smtps://username@smtp.gmail.com"
> > they should fill in their real username.  But for "<mailbox password>" it
> > is not clear what is expected.
> >
>
> ###
> Configure MTA
>
> Note: These instructions assume you're using esmtp, but if you already have another mail transfer agent (MTA) installed, you do not need to install esmtp. Instead, change the .muttrc file "sendmail" line to be the path to your MTA. Mutt uses ssmtp by default, so if your MTA is ssmtp, you can leave that line out entirely.
>
> First, create a .esmtprc file with the right permissions:
>
>
> 			touch ~/.esmtprc
> 			chmod g-rwx ~/.esmtprc
> 			chmod o-rwx ~/.esmtprc
>
> Edit the .esmtprc in your home directory, and add lines like this:
>
> 			identity "my.email@gmail.com"
> 			hostname smtp.gmail.com:587
> 			username "my.email@gmail.com"
> 			password "ThisIsNotARealPassWord"
> 			starttls required
>
> (For Yahoo mail, replace hostname line with:
>
> 			hostname smtp.mail.yahoo.com:587
>
> Next, set up the mail client, mutt, with some defaults, by creating a .muttrc file in your homedirectory:
>  Note: The imap_pass, smtp_pass would be the App password or the mailbox password.
>
>
> 	           set sendmail="/usr/bin/esmtp"
> 	           set envelope_from=yes
> 	           set from="Your Name <my.email@gmail.com>"
> 	           set use_from=yes
> 		     set edit_headers=yes
>
>                  # IMAP settings
>                  set imap_user = "username@gmail.com"
>                  set imap_pass = "<ThisIsNotARealPassWord>"

Why do you have <> around ThisIsNotARealPassWord.  It was not done
previously.

>                  # SMTP settings
>                  set smtp_url = "smtps://username@smtp.gmail.com"

Is username different than my.email?

julia

>                  set smtp_pass = "<ThisIsNotARealPassWord>"
>
>                  # Remote Gmail folders
>                  set folder = "imaps://imap.gmail.com/"
>                  set spoolfile = "+INBOX"
>                  set postponed = "+[Gmail]/Drafts"
>                  set record = "+[Gmail]/Sent Mail"
>                  set trash = "+[Gmail]/Trash"
>
>
> ###
>
>
> Regards,
>
> Sumitra
>
> > julia
>
