Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8B97494
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 18:17:50 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id l9-20020a17090a3f0900b0023d32684e7fso8617872pjc.1
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 11:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679077070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2+MBfAcf3sIGVCHr309Z4akavAO7Re7EcqWL1r4xsSg=;
        b=Btx8nd6LPwTQ4Jh+kvQwouwJ901xpE/U5aDgvHtqmn34RapSSmgjW1sNlRXLXujDXs
         ey4z8amlrJyqmvpiYfvkkJYSqGvvKOHr/9FxRWjyKYxoo8yJlTR1/eO+nulD34EWUoBW
         wtdLqh5ls6bKc1idETr/LORG95GENe8gQURwNrF6BrAUnOkTxUMk6fsjkAeT0SwGZIah
         gieaZUVOpuwwNwGx1jFC0Fm55/s5BmSO78yoDQjgztKaRGmf7kDu3g6VSy86IWe8iyc5
         j30rhnVuUwrrJ1AbKEIO8csnScWbhIgKeC2cqYZquMaCfEAcZCJoul/A0WiSYAzJ//hS
         Druw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679077070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+MBfAcf3sIGVCHr309Z4akavAO7Re7EcqWL1r4xsSg=;
        b=5de+deQvRs4/fpOnwuETK8lX/n66RyvNhuMMLERF+RYu8z5eOF8enpgnkL8MUYYQK9
         DyklkpCjuv23wD9TJkrXgqaL9CLc+KtH4tUk+eJGNK+U1ICmDFOik6NGnMgoqUIzvDx6
         u0Wk6K/xvZ1mVQuFM+MKipIujc5hVBTROiQ7NEr4VMrZMe5OUkK2TJkC/rfLDEgO4i6U
         u86MDabo3F2mrwd2v97iLz9OrRHQXXR1330yhxA2YrfaZ8K+CzNlOwD0vgf2Be6Wqqch
         w+rBW+f1YHck9Rs9gruitMq/Dxvu9WSPIR8eTqwox2Z3zS74527QmHhTtYhZjuvHJNWY
         re+A==
X-Gm-Message-State: AO0yUKV7zHSThh/2jO1m5RaDhrgmFH4RbzjZw/XCH/RgvtLUVaAI94tb
	E6+EcPUrr1FPmDrEAEa42G0=
X-Google-Smtp-Source: AK7set+uWkV+j0dHggyZZ+4Wv0zzbWKmLrlhrKvingeVh21lrfdLfWwPRFOqwtP6vg/muULCl8gj9Q==
X-Received: by 2002:a05:6a20:8361:b0:c7:7afa:5016 with SMTP id z33-20020a056a20836100b000c77afa5016mr7038282pzc.9.1679077069704;
        Fri, 17 Mar 2023 11:17:49 -0700 (PDT)
Received: from sumitra.com ([117.98.68.136])
        by smtp.gmail.com with ESMTPSA id j8-20020aa78dc8000000b00571f66721aesm1872372pfr.42.2023.03.17.11.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 11:17:49 -0700 (PDT)
Date: Fri, 17 Mar 2023 11:17:45 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Bagas Sanjaya <bagasdotme@gmail.com>,
	Linux Outreachy <outreachy@lists.linux.dev>
Subject: Re: your mail
Message-ID: <20230317181745.GA3500@sumitra.com>
References: <20230317163629.GB2392@sumitra.com>
 <2123df9c-870-3a20-94b-7833bc66ad9@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2123df9c-870-3a20-94b-7833bc66ad9@inria.fr>

On Fri, Mar 17, 2023 at 05:47:23PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 17 Mar 2023, Sumitra Sharma wrote:
> 
> > , fmdefrancesco@gmail.com
> > Bcc:
> > Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
> > Reply-To:
> > In-Reply-To: <936dcbf3-0bf3-0461-1ea5-d71e0e60fa88@gmail.com>
> >
> > On Wed, Mar 15, 2023 at 03:41:40PM +0700, Bagas Sanjaya wrote:
> > > On 3/14/23 19:33, Sumitra Sharma wrote:
> > > >> On Outreachyfirstpatch, there is a pointer to Outreachyfirstpatchalt
> > > >> (which contains instructions on spinning up Ubuntu VM), so you need to
> > > >> install your tools (including postfix and mutt) there if you want to
> > > >> contribute through there. So I think the latter doc should be kept as
> > > >> is.
> > > >>
> > > >
> > > > Hi
> > > >
> > > > Can you send me a link to Outreachyfirstpatchalt, I am unable to find
> > > > it.
> > > >
> > >
> > > For your completeness, see https://kernelnewbies.org/OutreachyfirstpatchAlt.
> > >
> > > Again, what I mean that OutreachyfirstpatchAlt is about spinning up
> > > Linux VM. If you need follow setting up tools in Outreachyfirstpatch,
> > > you can do that in the VM. So I suggest not to modify OutreachyfirstpatchAlt
> > > for now. (But I wish the slug could be better named as LinuxVMSetup).
> > >
> >
> > Hi,
> >
> > Since we discussed all about the outreachyfirstpatchalt only and you
> > also suggested not to modify it for now. I want to clarify that whether we are working on these below changes for the "outreachyfirstpatch". I am again mentioning them below.
> 
> In https://kernelnewbies.org/Outreachyfirstpatch, there is a section
> called Set up email.  This is followed by some sections related to gmail,
> yahoo, etc.  So you could find the best place around there for the new
> information.
> 
> It could be nice to use some subsections, so that one can easily identify
> the complete section about email.
> 

Actually, the only issue I faced was that the outreachyfirstpatch
document do not contain the informatio of how to set your inbox in mutt.
Due to which I was facing issues to send and reply mails. This below
configuration update will enable the inbox at the client side.

How about this...

Under the section "Configure esmtp":

###
Next, set up the mail client, mutt, with some defaults, by creating a .muttrc file in your homedirectory:

Note: The imap_pass, smtp_pass would be the App password or
 	  the mailbox password.

 		set sendmail="/usr/bin/esmtp"
 		set envelope_from=yes
 		set from="Your Name <my.email@gmail.com>"
 		set use_from=yes
 		set edit_headers=yes

 		# IMAP settings
 		set imap_user = "username@gmail.com"
 		set imap_pass = "<mailbox password>"

 		# SMTP settings
 		set smtp_url = "smtps://username@smtp.gmail.com"
 		set smtp_pass = "<mailbox password>"

 		# Remote Gmail folders
 		set folder = "imaps://imap.gmail.com/"
 		set spoolfile = "+INBOX"
 		set postponed = "+[Gmail]/Drafts"
 		set record = "+[Gmail]/Sent Mail"
 		set trash = "+[Gmail]/Trash"
###
> I notice also that there seems to be randomly "set up" and "setup".  I
> have the impression that "set up" is a verb and "setup" is a noun., so it
> should be "Set up vim as your default editor" (not Setup...) and it should
> be "Gmail setup" (not Gmail set up).
>

Okay! I will take care of it. Thank you.

Regards,

Sumitra

> thanks,
> julia
> 
> >
> > 1. The outreachy document does not include the steps to make the inbox with mutt. The steps below can be added to configure mutt with gmail.
> >
> > 	- Open the ~/.muttrc
> > 	- Add the information
> >
> > 		set sendmail="/usr/bin/esmtp"
> > 		set envelope_from=yes
> > 		set from="Your Name <my.email@gmail.com>"
> > 		set use_from=yes
> > 		set edit_headers=yes
> >
> > 		# IMAP settings
> > 		set imap_user = "username@gmail.com"
> > 		set imap_pass = "<mailbox password>"
> >
> > 		# SMTP settings
> > 		set smtp_url = "smtps://username@smtp.gmail.com"
> > 		set smtp_pass = "<mailbox password>"
> >
> > 		# Remote Gmail folders
> > 		set folder = "imaps://imap.gmail.com/"
> > 		set spoolfile = "+INBOX"
> > 		set postponed = "+[Gmail]/Drafts"
> > 		set record = "+[Gmail]/Sent Mail"
> > 		set trash = "+[Gmail]/Trash"
> >
> > 	- Where the imap_pass, smtp_pass would be the App password or
> > 	  the mailbox password.
> >
> >
> > Regards,
> >
> > Sumitra
> >
> >
