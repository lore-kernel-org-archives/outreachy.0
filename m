Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D602C9A
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 16:36:36 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id bc12so5261836plb.0
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 09:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679070996;
        h=content-disposition:mime-version:message-id:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DSDSvJySTIHSuVhcxgmSCHjQTy0eRNxFrkLw6wbVmEE=;
        b=iu25vjcjZ52MJH0Ne01ETEeczdUMIHl7iJGa+JR4WP4lG7LgVTWap5y9sbp6iP649L
         TSopdP6D7DEbh9DGMaOOs7Bvs/z2LvFIJh9CQnQy0z+wTQ7Pw/PxLCty+r/OVuCobb33
         Hohs6eeOjeVjzyCU7OnRLEyEDVBSzrlA0IT1ZglCoLRMRJI+Rfnyj4NGcbXSz3FI3Swo
         qu6n5Du7DB/wGMZz/YNnLKTXuH0g0qs/d/hZ4Qby5dgK7Z/nl3tMNRu5ZEFSuvj8Aa/G
         jCekz11YSq/BUZlYzCpC/HBN7BUxmDWNlZdRD8gEjoRrI4dgSmaqAQv09VayEGpWqMAX
         HqNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679070996;
        h=content-disposition:mime-version:message-id:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DSDSvJySTIHSuVhcxgmSCHjQTy0eRNxFrkLw6wbVmEE=;
        b=eq2J/zjW/BWdsZBOHdFqNLN5cXaGLDYv4B4goec5vZLLmsvNT1SXMDLW8JTqGsX65K
         BOjrPOLC4guwiHUqNWUszNLZeo5Qs6gHB7HeD30hYagFrGXR6GLjnKv8fFSC4Me1bMEE
         PBp72F/N13YGPJPHKxaDOJ4IMtDfwtNH82MLp/JPU/BE6nRiDcxukv0Sg4MfFiYZnX7M
         xH3Nvngx6HgHYrDAjJtSu6Fh4R/ZE41YMAMePnlStelMllG7KSXBg18A/dpoq31BWmV0
         C0sp+sG1Wu+ujS+c9vgcjvtnxGYM7UQonQl1Sof7/sLfmgUszB2nw/km36et7wtOMx3j
         MSgA==
X-Gm-Message-State: AO0yUKWwPDoJX9oUUNP9AM5ayQvJ/WNiB7Mv7lC5fI/gXFKK/RBvlg5G
	+XR+LBjW8ZsxDpE/TCzXmaw=
X-Google-Smtp-Source: AK7set8KSkATRui/WIm/p3g1YC9aO3oUVU8dL6GUF+bj6ENvN5Dp162diHljaJhvmmsbCP57FYBmpA==
X-Received: by 2002:a17:902:e74c:b0:199:4be8:be48 with SMTP id p12-20020a170902e74c00b001994be8be48mr3845739plf.19.1679070995630;
        Fri, 17 Mar 2023 09:36:35 -0700 (PDT)
Received: from sumitra.com ([117.98.68.136])
        by smtp.gmail.com with ESMTPSA id f21-20020a170902ab9500b001a076568da9sm1749743plr.216.2023.03.17.09.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 09:36:34 -0700 (PDT)
Date: Fri, 17 Mar 2023 09:36:29 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: Linux Outreachy <outreachy@lists.linux.dev>, julia.lawall@inria.fr
Message-ID: <20230317163629.GB2392@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

, fmdefrancesco@gmail.com
Bcc: 
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Reply-To: 
In-Reply-To: <936dcbf3-0bf3-0461-1ea5-d71e0e60fa88@gmail.com>

On Wed, Mar 15, 2023 at 03:41:40PM +0700, Bagas Sanjaya wrote:
> On 3/14/23 19:33, Sumitra Sharma wrote:
> >> On Outreachyfirstpatch, there is a pointer to Outreachyfirstpatchalt
> >> (which contains instructions on spinning up Ubuntu VM), so you need to
> >> install your tools (including postfix and mutt) there if you want to
> >> contribute through there. So I think the latter doc should be kept as
> >> is.
> >>
> > 
> > Hi
> > 
> > Can you send me a link to Outreachyfirstpatchalt, I am unable to find
> > it.
> > 
> 
> For your completeness, see https://kernelnewbies.org/OutreachyfirstpatchAlt.
> 
> Again, what I mean that OutreachyfirstpatchAlt is about spinning up
> Linux VM. If you need follow setting up tools in Outreachyfirstpatch,
> you can do that in the VM. So I suggest not to modify OutreachyfirstpatchAlt
> for now. (But I wish the slug could be better named as LinuxVMSetup).
>

Hi,

Since we discussed all about the outreachyfirstpatchalt only and you
also suggested not to modify it for now. I want to clarify that whether we are working on these below changes for the "outreachyfirstpatch". I am again mentioning them below.

1. The outreachy document does not include the steps to make the inbox with mutt. The steps below can be added to configure mutt with gmail.

	- Open the ~/.muttrc
	- Add the information

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

	- Where the imap_pass, smtp_pass would be the App password or
	  the mailbox password.


Regards,

Sumitra
