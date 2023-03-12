Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA757538A
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 17:46:46 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id p26so6473679wmc.4
        for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 10:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678643205;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w3MmTZ7DpawBrVlYpIUpTZDmB6Lm0BioAwPqiMdMJU0=;
        b=DH4RT603tbzMn2cYPl5hYZ5qCx1VeFczVv9Yxqf1BBB1m3inUq5YHiMlHrU4tg+Y3y
         GOPlbqNxfqV1bh000KzwAzfddhOFDfJ8pNIJyj3WJTa+LRS5r3Z6GiAUagLQBO/IGIn+
         dbwST3GvxSnIklDjqMdcmhS5u7ZmS7p1TVrAlo7cfrRPTT064pyKPnn33/CPNaXEJsWB
         a546HVtCa5vJdeYAIthnqh5epzedS/GqI/b+jxhqZXBNfkPET2Y2LvV9q83IO72SKHL7
         XZwezgeD8GyqTYAkFmWPWKLr5GPL+tBFx5TlaKdzg/6mkRixL6v4Vi7T+z64xKm9t2qc
         tPEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678643205;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w3MmTZ7DpawBrVlYpIUpTZDmB6Lm0BioAwPqiMdMJU0=;
        b=VR6Fu0zuqdtCQWEHm+YaHnY5lxg6lbJKnX1OAP7N9/8GH51BwqF/tQk/LgTXl6NABz
         OL+aSmOlw2hp0YfKX37qXKTOM3MfEAu3x/c4cbMWD00SLXjkE3tZKQRd2uaJKGeHozL+
         K5yCvVu3G3Mr02IQWGVa4AafJkpsrdjkKLMn60fBgrStXN/6kJOrvdU0AFgC9azm91t3
         bAQQLd67+hrHFdmzz3JomZASkGmQ2It43+etDVudCmzLSUWl3knz9CvJZlv6hnCnJuFu
         BTwtCG74UdgeRgVvFSyP/umY6iLVF6OSDsFpUcc+iAHWo+JgJjEDqaOsJot6ywTOz3K/
         Nmsg==
X-Gm-Message-State: AO0yUKWS9apAmI4Fhrj/mp3YmQ5jYdCXCapSd8N3UU83bkK4qb7tUMAk
	W1QeEfmXYNyklaju8XoHlOPorx6K10sypIoh
X-Google-Smtp-Source: AK7set9WshdPQuT4jlheubJ/h78iF4kuZ++iT2YDffF1Py+dwDqxNE6UNgZZDImj3Oaw5PsqqMto6Q==
X-Received: by 2002:a05:600c:3b02:b0:3df:fbc7:5b10 with SMTP id m2-20020a05600c3b0200b003dffbc75b10mr8510447wms.0.1678643204652;
        Sun, 12 Mar 2023 10:46:44 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.45.115])
        by smtp.gmail.com with ESMTPSA id p9-20020a05600c23c900b003ed23e9e03bsm1030120wmb.46.2023.03.12.10.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:46:44 -0700 (PDT)
Date: Sun, 12 Mar 2023 22:46:42 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <ZA4QAqA5YNtrn2fE@khadija-virtual-machine>
References: <20230312122928.GL14247@ubuntu>
 <alpine.DEB.2.22.394.2303121412090.2865@hadrien>
 <20230312152701.GA28100@ubuntu>
 <alpine.DEB.2.22.394.2303121631170.2865@hadrien>
 <ZA32KCmxGEM8jVwl@khadija-virtual-machine>
 <20230312173112.GA28679@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230312173112.GA28679@ubuntu>

On Sun, Mar 12, 2023 at 10:31:12AM -0700, Sumitra Sharma wrote:
> On Sun, Mar 12, 2023 at 08:56:24PM +0500, Khadija Kamran wrote:
> > On Sun, Mar 12, 2023 at 04:31:48PM +0100, Julia Lawall wrote:
> > > OK.  Was the information in the outrechy tutorial sufficient?  If not, it
> > > could be good to extend it.
> > > 
> > > julia
> > >
> > 
> > Hey Julia!
> > 
> > I thought I should reply here too. I hope that is not a problem.
> > 
> > I had a hard time configuring mutt, from the information in the
> > outreachy tutorial. I could send my patches but I had no idea how to
> > respond to mails from INBOX and how to send inline replies.
> > 
> 
> - After installing mutt and esmtprc, create two files "esmtprc" and "muttrc" in home directory.
> 	
> 	touch ~/.esmtprc
> 	chmod g-rwx ~/.esmtprc
> 	chmod o-rwx ~/.esmtprc
> 	touch ~/.muttrc
>         chmod g-rwx ~/.muttrc
>         chmod o-rwx ~/.muttrc
> 
> - Edit .esmtprc
> 	
> 	identity "my.email@gmail.com"
> 	hostname smtp.gmail.com:587
> 	username "my.email@gmail.com"
> 	password "<mailbox password>"
> 	starttls required 
> 
> - Open the ~/.muttrc
>         - Add the information
> 
>                 set sendmail="/usr/bin/esmtp"
>                 set envelope_from=yes
>                 set from="Your Name <my.email@gmail.com>"
>                 set use_from=yes
>                 set edit_headers=yes
> 
>                 # IMAP settings
>                 set imap_user = "username@gmail.com"
>                 set imap_pass = "<mailbox password>"
> 
>                 # SMTP settings
>                 set smtp_url = "smtps://username@smtp.gmail.com"
>                 set smtp_pass = "<mailbox password>"
> 
>                 # Remote Gmail folders
>                 set folder = "imaps://imap.gmail.com/"
>                 set spoolfile = "+INBOX"
>                 set postponed = "+[Gmail]/Drafts"
>                 set record = "+[Gmail]/Sent Mail"
>                 set trash = "+[Gmail]/Trash"
> 
>         - Where the imap_pass, smtp_pass would be the App password or
>           the mailbox password.
> 
> - To get the App password refer https://support.google.com/accounts/answer/185833?hl=en
> 
>

Thank you so much Sumitra.
I had a hard time initially but I have already configured mutt. And I am
successfully communicating through this tool. :) 

> Regards,
> 
> Sumitra
> 
> 
> 
> > Regards,
> > Khadija
> > 
