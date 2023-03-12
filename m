Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E412538A
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 17:31:17 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id x37so1227338pga.1
        for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 10:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678642277;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DxpgGbx9OVZztPTKTgW5ToYAJmJkiLZmKUOSkeclo0I=;
        b=OQ8/AW9cYYmuaU8KCwHtGySs0x40rS/eYmQtssx02/tqePTVHGRlYWgvhzAiF7AxEt
         /fSm/u3vhLh+EBYgOnPRrFAmBvZyE5UD8jkA8yEtDHFQrH/Mfv/HAtEML0dLtE+APRXK
         BgH6QH9plIW5PQzgE8f7HAuXSs7mPgVJbbr60+lxmtr6cXFM9gvzaVYYEkAGEfK21BGa
         jKYM8jF45dK1ANSuecF0h3OLhumE45nCPXejSxYiY2eo3pouepwcrV+gO1kW6aq5f0+u
         c7tTBByytv7U2wZzO1NMiWVpwItT48+VVfQH7qsHJgb8+QnaZrgfqOrQVvLsf2pPBGXB
         /3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678642277;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DxpgGbx9OVZztPTKTgW5ToYAJmJkiLZmKUOSkeclo0I=;
        b=xDBwfC7R5OfsqTkSKPYDWgVGJaaGjTFigf3XCP7fPNB5UAwQjK2kJH1n/bf5rxHjGC
         y/j57MsCImruIxEY5EFV5PYPzV06cZIdzmpHNR1qTs77mnqXo1PisV3l9bew52/sAWXl
         dOGm257IvhzxBdaqUbFo7+X60bNkn9J06U+JAsghG1BsJxASVrgnEabcChCi6AtCwAdB
         WXh0dtrs9/EDr+Jn0Umvji3tgRwNZPj9XWRgPD4aQJ9QEEIVyy5DEA11ZYfjBAiAb43p
         Pk8rCHQ4SIipBt7QTwqOif1A9qqbdNadmeqIYRUVx5LXkrDKx1V1XG1d5zNEVOG3UPfS
         eJqw==
X-Gm-Message-State: AO0yUKVhKT2uoMAkzr+OTwblDRTrxh01mr1FUb/odGOEdSCpBYRQ/nfn
	iRCwpevnk/L6aoebw5cIWIk=
X-Google-Smtp-Source: AK7set8ZVh203ZnwT8P/MoyKFxsiW01qi5rhslphAZezTMyjN6FZBsvsULeyQgYFUSASUTHF6gswJQ==
X-Received: by 2002:a62:8458:0:b0:622:feed:c36d with SMTP id k85-20020a628458000000b00622feedc36dmr3576624pfd.31.1678642276765;
        Sun, 12 Mar 2023 10:31:16 -0700 (PDT)
Received: from ubuntu ([59.89.166.125])
        by smtp.gmail.com with ESMTPSA id a1-20020aa78641000000b00622a8bdf2absm2438111pfo.145.2023.03.12.10.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:31:16 -0700 (PDT)
Date: Sun, 12 Mar 2023 10:31:12 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Khadija Kamran <kamrankhadijadj@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <20230312173112.GA28679@ubuntu>
References: <20230312122928.GL14247@ubuntu>
 <alpine.DEB.2.22.394.2303121412090.2865@hadrien>
 <20230312152701.GA28100@ubuntu>
 <alpine.DEB.2.22.394.2303121631170.2865@hadrien>
 <ZA32KCmxGEM8jVwl@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZA32KCmxGEM8jVwl@khadija-virtual-machine>

On Sun, Mar 12, 2023 at 08:56:24PM +0500, Khadija Kamran wrote:
> On Sun, Mar 12, 2023 at 04:31:48PM +0100, Julia Lawall wrote:
> > OK.  Was the information in the outrechy tutorial sufficient?  If not, it
> > could be good to extend it.
> > 
> > julia
> >
> 
> Hey Julia!
> 
> I thought I should reply here too. I hope that is not a problem.
> 
> I had a hard time configuring mutt, from the information in the
> outreachy tutorial. I could send my patches but I had no idea how to
> respond to mails from INBOX and how to send inline replies.
> 

- After installing mutt and esmtprc, create two files "esmtprc" and "muttrc" in home directory.
	
	touch ~/.esmtprc
	chmod g-rwx ~/.esmtprc
	chmod o-rwx ~/.esmtprc
	touch ~/.muttrc
        chmod g-rwx ~/.muttrc
        chmod o-rwx ~/.muttrc

- Edit .esmtprc
	
	identity "my.email@gmail.com"
	hostname smtp.gmail.com:587
	username "my.email@gmail.com"
	password "<mailbox password>"
	starttls required 

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

- To get the App password refer https://support.google.com/accounts/answer/185833?hl=en


Regards,

Sumitra



> Regards,
> Khadija
> 
