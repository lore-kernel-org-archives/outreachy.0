Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BEEEC6
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 08:10:03 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id i5so9530388pla.2
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 01:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679213403;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0AIg6djfD3Z8OLbEjaJ/Dktvn8yVMGHT+GXUl6YhXpc=;
        b=EwHsQk6Wny+JUiJmEsemEPvZ7AuQvuOk8vZo2hCiwQPR/tJfpDUTK2p9ZHm/wznYXP
         Gc6MUa2fG6cNWnbKtfaQ4urCdBZy3y55C/5+bLHLYtb40EnELwnh6j8dlFuzYxNq+ijw
         Qn8QKYBUtMhFDXu6fZ5VpjqWpAvRbwlytLollrztLJYeDCzoXEdj7CKS/kc5gInA1vKY
         0pKjAuuTbLhEyObqrQAtXQDVdbZvCe9vOA7dscf3RXQSqBU+21rbNXRiLzZ57KLl4GFx
         qPP/CJmdiyqf18Xz+W6yUAar/UO+QIB/LmS/AGLzMBfs+i5pjfjdEhyIHnJGl0JTwU6p
         4sAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679213403;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0AIg6djfD3Z8OLbEjaJ/Dktvn8yVMGHT+GXUl6YhXpc=;
        b=LG6YwBRCn5c2HUOwfpffXRXEzVAEPZAYHaL0Q2Di+3Rggz9c81OhzNjTv3IR4S/akU
         HBtdqenxHnhfnkXPaWrrHm7ROV5IFc6UqAc0IHKrkr9Nr7f+xlYySh3VrzgTusqtTAuu
         RwE72o1TwdWZW3iL4uB/OSG+t7kzXMm02iS/D8++MDYYG29JaeNqqqQX7lCPyDn7kVM8
         7ogGJJ5jy26UhnHD5qc2AnU8IWHJFBkR3F65o4K2z3JdTgdN0WkNhCwNXB3+unPBopr6
         BL0f0H75oQBjNGdjviFbBHwjsCsFaxC/UshNG+h0kOtV5LkzaMMGTY+F/XE0QCEMa+4u
         L7uQ==
X-Gm-Message-State: AO0yUKWXDUjU7voW2IrR3/b7anZi1ycHTWIgNpk0fX+wrMH7AkC/2642
	Y+aQ6eiugxpqqzYoF6uHAWY=
X-Google-Smtp-Source: AK7set+16arltiftvfnV6BCmhAIkIEjIEDRUv+f7OoB0YUlTH+6h1Z0Z30okJuJMLxdoxhjKCGcTnQ==
X-Received: by 2002:a17:902:f685:b0:1a1:a727:a802 with SMTP id l5-20020a170902f68500b001a1a727a802mr8802172plg.19.1679213403275;
        Sun, 19 Mar 2023 01:10:03 -0700 (PDT)
Received: from sumitra.com ([117.212.94.33])
        by smtp.gmail.com with ESMTPSA id u6-20020a170902b28600b00194d14d8e54sm4340137plr.96.2023.03.19.01.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 01:10:01 -0700 (PDT)
Date: Sun, 19 Mar 2023 01:09:55 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: sumitraartsy@gmail.com, bagasdotme@gmail.com, julia.lawall@inria.fr,
	outreachy@lists.linux.dev
Subject: Re: your mail
Message-ID: <20230319080955.GA50179@sumitra.com>
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
document does not contain the information of how one can set their inbox in mutt.
Due to which I had problems to send and reply mails. This below
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

In addition to this, I would like to bring to your notice that a hyperlink
in outrachyfirstpatch document, under the section "Git post-commit
hooks" does not work and it must be changed.

under Git post-commit hooks; checkpatch.pl:
http://lxr.free-electrons.com/source/scripts/checkpatch.pl
------------------------------------------------------------------
https://elixir.bootlin.com/linux/latest/source/scripts/checkpatch.pl




Regards,

Sumitra

> thanks,
> julia
> 
> 
