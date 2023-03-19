Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A50510EC
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 08:56:18 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id lr16-20020a17090b4b9000b0023f187954acso9497755pjb.2
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 01:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679216178;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JOgRsXHdFjRHqaXA5NIR424pWwIkiTWXGzkZHTu5nLQ=;
        b=ZDazINn54ZloBevmCKcTvs+4vHc1A6ViIPoxIMBetxXaS1mTgNwtL0aCHZQlJiBn1C
         ry4rxJCJzVOtHQrEmpeRHFcmulFDzybAf6NztnD+dPRZjX0s81+lBQtPAVK5ASD76PTf
         b9DmNKbZ8vtwu1WYRVQYLF9YhgPAc31UL0+pFMLtylQ86mlrs0Gazu/hXeTbo54WI7Jy
         sZlR5qJeXXlleoex9JDP7r0XIxUdGwWvbRrH/zEKIidR0TzmsE7OuuqeEkYaXHqnVjzM
         g0EB6vt0Z1hqePML9ZEChAesDMzuc58cYm2+OFfktQt0XlBe8eS+aomOy3yONTKlQ2HQ
         mIgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679216178;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JOgRsXHdFjRHqaXA5NIR424pWwIkiTWXGzkZHTu5nLQ=;
        b=YhBdDwaRrMHsc4PS7+wQdInc07VIdhcNyojfsbRvqph+bR/VZJeHzeFH/Nxhzrbo+z
         4OjIs6Vsro32P1vuQFAE+7Cy+guioszf0Gd00vXV28z1yS0EtTPxvJvu63XuEUxEl7kX
         FNV8Igxku9+AU7JYaP9JaK285nrRzr4R7JtZ+oEk7i5hE3vx7muEoGhWhfcN8hU2fJws
         FpNB++5AzDeAxDfh2RyqB0QDvyathS19c5l+vRXktf72YA1ZJ2/LPObFqAHxn1T60Awu
         GOc8p5z19x8TiT3yZCeL4WqZbEmjxdA+Fp6jFasSEPInswpLK06zDdPyrD0pn7uOT+N0
         SiQA==
X-Gm-Message-State: AO0yUKW8ibWm/DxkZRrKwt9RYWJbRWU+qxFdHvf0Vc1gDrj0MuzkT27Q
	/59Fk63fMGDet6Lx9aJZJmA=
X-Google-Smtp-Source: AK7set/BXol1JQpxZylp8/ahsoNyfW2Y1SvPksXT+qmm0Dd2d34wjnUF9uRFpa66X+06byX7qq3KPw==
X-Received: by 2002:a05:6a20:3b9f:b0:d9:2cef:949f with SMTP id b31-20020a056a203b9f00b000d92cef949fmr1327240pzh.40.1679216177731;
        Sun, 19 Mar 2023 01:56:17 -0700 (PDT)
Received: from sumitra.com ([117.212.94.33])
        by smtp.gmail.com with ESMTPSA id bs187-20020a6328c4000000b0050f74d435e6sm350425pgb.18.2023.03.19.01.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 01:56:17 -0700 (PDT)
Date: Sun, 19 Mar 2023 01:56:12 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: bagasdotme@gmail.com, outreachy@lists.linux.dev
Subject: Re: your mail
Message-ID: <20230319085612.GD50179@sumitra.com>
References: <20230319080955.GA50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190934200.2867@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303190934200.2867@hadrien>

On Sun, Mar 19, 2023 at 09:35:50AM +0100, Julia Lawall wrote:
> > Actually, the only issue I faced was that the outreachyfirstpatch
> > document does not contain the information of how one can set their inbox in mutt.
> > Due to which I had problems to send and reply mails. This below
> > configuration update will enable the inbox at the client side.
> >
> > How about this...
> >
> > Under the section "Configure esmtp":
> >
> > ###
> > Next, set up the mail client, mutt, with some defaults, by creating a .muttrc file in your homedirectory:
> >
> > Note: The imap_pass, smtp_pass would be the App password or
> >  	  the mailbox password.
> >
> >  		set sendmail="/usr/bin/esmtp"
> >  		set envelope_from=yes
> >  		set from="Your Name <my.email@gmail.com>"
> >  		set use_from=yes
> >  		set edit_headers=yes
> >
> >  		# IMAP settings
> >  		set imap_user = "username@gmail.com"
> >  		set imap_pass = "<mailbox password>"
> >
> >  		# SMTP settings
> >  		set smtp_url = "smtps://username@smtp.gmail.com"
> >  		set smtp_pass = "<mailbox password>"
> >
> >  		# Remote Gmail folders
> >  		set folder = "imaps://imap.gmail.com/"
> >  		set spoolfile = "+INBOX"
> >  		set postponed = "+[Gmail]/Drafts"
> >  		set record = "+[Gmail]/Sent Mail"
> >  		set trash = "+[Gmail]/Trash"
> > ###
> 
> Does this have anything to do with esmpt?
>

In the current version of the outreachy firstpatch document the configuration 
steps for .esmtp and .muttrc are written under the heading
"Configure esmtp" and also to configure esmtp we are creating the muttrc
file. So, both are linked in a way.

> Does "<mailbox password>" mean that you have to put your password in plain
> text?
> 

Yes, but it is always prefered to use the app password for better security.


Regards,

Sumitra

> julia
