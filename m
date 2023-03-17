Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB387475
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 16:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=17/9NDWz9gFDC8Z6MlRaJGQBKJCZIA3U4GyZX98rAdA=;
  b=gc73WeyG7EfRqJjim4NL+R2bXtMsKvITH9ugW+kKWdUHjDC4kCzhwOCZ
   +9JqdQE90qAs8jtKP+aOzwPg/zQmVRrkgu87PZE/Cdf4tsTnQl2AbeQF1
   FDkfO6DtvHFAOyg7HrmmDzxBPSQLULcfV+y2mnDadIYJiUbxeR5IO9Wd/
   c=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,268,1673910000"; 
   d="scan'208";a="97816689"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 17:47:23 +0100
Date: Fri, 17 Mar 2023 17:47:23 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: Bagas Sanjaya <bagasdotme@gmail.com>, 
    Linux Outreachy <outreachy@lists.linux.dev>
Subject: Re: your mail
In-Reply-To: <20230317163629.GB2392@sumitra.com>
Message-ID: <2123df9c-870-3a20-94b-7833bc66ad9@inria.fr>
References: <20230317163629.GB2392@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Mar 2023, Sumitra Sharma wrote:

> , fmdefrancesco@gmail.com
> Bcc:
> Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
> Reply-To:
> In-Reply-To: <936dcbf3-0bf3-0461-1ea5-d71e0e60fa88@gmail.com>
>
> On Wed, Mar 15, 2023 at 03:41:40PM +0700, Bagas Sanjaya wrote:
> > On 3/14/23 19:33, Sumitra Sharma wrote:
> > >> On Outreachyfirstpatch, there is a pointer to Outreachyfirstpatchalt
> > >> (which contains instructions on spinning up Ubuntu VM), so you need to
> > >> install your tools (including postfix and mutt) there if you want to
> > >> contribute through there. So I think the latter doc should be kept as
> > >> is.
> > >>
> > >
> > > Hi
> > >
> > > Can you send me a link to Outreachyfirstpatchalt, I am unable to find
> > > it.
> > >
> >
> > For your completeness, see https://kernelnewbies.org/OutreachyfirstpatchAlt.
> >
> > Again, what I mean that OutreachyfirstpatchAlt is about spinning up
> > Linux VM. If you need follow setting up tools in Outreachyfirstpatch,
> > you can do that in the VM. So I suggest not to modify OutreachyfirstpatchAlt
> > for now. (But I wish the slug could be better named as LinuxVMSetup).
> >
>
> Hi,
>
> Since we discussed all about the outreachyfirstpatchalt only and you
> also suggested not to modify it for now. I want to clarify that whether we are working on these below changes for the "outreachyfirstpatch". I am again mentioning them below.

In https://kernelnewbies.org/Outreachyfirstpatch, there is a section
called Set up email.  This is followed by some sections related to gmail,
yahoo, etc.  So you could find the best place around there for the new
information.

It could be nice to use some subsections, so that one can easily identify
the complete section about email.

I notice also that there seems to be randomly "set up" and "setup".  I
have the impression that "set up" is a verb and "setup" is a noun., so it
should be "Set up vim as your default editor" (not Setup...) and it should
be "Gmail setup" (not Gmail set up).

thanks,
julia

>
> 1. The outreachy document does not include the steps to make the inbox with mutt. The steps below can be added to configure mutt with gmail.
>
> 	- Open the ~/.muttrc
> 	- Add the information
>
> 		set sendmail="/usr/bin/esmtp"
> 		set envelope_from=yes
> 		set from="Your Name <my.email@gmail.com>"
> 		set use_from=yes
> 		set edit_headers=yes
>
> 		# IMAP settings
> 		set imap_user = "username@gmail.com"
> 		set imap_pass = "<mailbox password>"
>
> 		# SMTP settings
> 		set smtp_url = "smtps://username@smtp.gmail.com"
> 		set smtp_pass = "<mailbox password>"
>
> 		# Remote Gmail folders
> 		set folder = "imaps://imap.gmail.com/"
> 		set spoolfile = "+INBOX"
> 		set postponed = "+[Gmail]/Drafts"
> 		set record = "+[Gmail]/Sent Mail"
> 		set trash = "+[Gmail]/Trash"
>
> 	- Where the imap_pass, smtp_pass would be the App password or
> 	  the mailbox password.
>
>
> Regards,
>
> Sumitra
>
>
