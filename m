Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D0D12E49
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hdz+0sAa"
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40666aa674fso2723305e9.0
        for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 12:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697052633; x=1697657433; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k5Spzo7BlsNunBEJhKNm5Jzq+r9BI1Zk/hKbS1tW0V4=;
        b=Hdz+0sAag8G7eVpZeDpEa02jCqYB6OJSws+PNLtw/vBDk66a/ICHaXmrNeZD9hnbyb
         pfujUDvAkLp0Sy1mC34JvYz34VoT8C+El6G6ZgsRWOiziwQUlm8IeeIE9tyzbV+Z6ezL
         QCp3anAEENCFYZA6XArICloCBNEvbP8VpgF4HJD3SUgLuFSOSlXpyn2jx+FKUpqblcCQ
         Q15M/mY6fvuf10Ht+TpR3fWgCmFaHtYCwxDHdkI3L+XEQko5AnToE4oIMObRyugQFhU1
         AgJ85buwj9urJ4ufrQHd6pClYwLLe/KO9av4nVFsHUFCgaZHX7gcBMFTABXS7N6nwdjq
         V7gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697052633; x=1697657433;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5Spzo7BlsNunBEJhKNm5Jzq+r9BI1Zk/hKbS1tW0V4=;
        b=OHCIe1jTZ5P+s7P1GO+OphKKv3TpY98rdZJr5Lmu/SIyCVouj2/DKuMyTRy2NYkg4p
         hXWC34NNZPGTicW5jJNi/m0MCtxbq4J/Erako3GO+giYSn7pFda0lG0PBpgl9qj2z1vX
         68o4XVA/SbScJtPbfhfHfYG6DOfV2e3jN170nQj02m/p5xswsq1ln74QY2XVaxKSyjEy
         7em6Z3abKxcmLA9JlBhuxKww52Mx5fU50f4uVwSMocBr1jRcPtA/5kOYLfrw7JgrHCUm
         i0OH8148I5lq7DD16W8C04yj3XHqodMWsYIOe7gsU5VSYxRnboRQeMK8jEVa2Qvm0ped
         ENvA==
X-Gm-Message-State: AOJu0Yw8fwnhv4mfidxLZAQ6xWqhIblz+4CHUKhPltwT7JiJip7fN3dj
	Q4qKzgGeSdB2526upkY+1w==
X-Google-Smtp-Source: AGHT+IGxJt5T3iZEq24NpWMubaYi8OPg2jRXZL9nJmeVwUouAPen5FYzE/iYb68gvNhACagGRHH6ow==
X-Received: by 2002:a1c:7212:0:b0:401:bdd7:499d with SMTP id n18-20020a1c7212000000b00401bdd7499dmr20084515wmc.25.1697052632906;
        Wed, 11 Oct 2023 12:30:32 -0700 (PDT)
Received: from dorcaslitunya-virtual-machine ([105.163.2.146])
        by smtp.gmail.com with ESMTPSA id y24-20020a7bcd98000000b004064741f855sm17521915wmj.47.2023.10.11.12.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 12:30:32 -0700 (PDT)
Date: Wed, 11 Oct 2023 22:30:29 +0300
From: Dorcas Litunya <anonolitunya@gmail.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: outreachy@lists.linux.dev, julia.lawall@inria.fr
Subject: Re: [Outreachy tip] Guide to setup mutt for Gmail
Message-ID: <ZSb31aIwiXyJU10U@dorcaslitunya-virtual-machine>
References: <ZSZ5ZfwTdkHcG5WL@gilbert-PC>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSZ5ZfwTdkHcG5WL@gilbert-PC>

On Wed, Oct 11, 2023 at 11:31:01AM +0100, Gilbert Adikankwu wrote:
> Hello,
> 
> This is a guide to setup mutt, the recommended text-based email client
> for the Outreachy Linux community.
> 
> If you have not read the newbies tutorial, please read it first to see the 
> steps for the initial setup of mutt. This guide is a follow-up to the initial
> setup steps decribed in the newbies tutorial.
> 
> Here, you will learn how to setup your mutt to access emails in
> your Gmail inbox and reply to them. 
> 
> Next, set up the mail client, mutt, with some defaults, by creating a
> .muttrc file in your /home and add the following lines to it:
> 
> set sendmail="/usr/bin/esmtp"
> set envelope_from=yes
> set from="Your name <your_username@gmail.com>"
> set use_from=yes
> set edit_headers=yes
> set editor="vi"
> set send_charset="us-ascii:utf-8"
> set sort_aux =  last-date-received
> set sort = reverse-threads
> 
> # IMAP settings
> set imap_user = "your_username@gmail.com"
> set imap_pass = "mailbox/app password"
> 
> # SMTP settings
> set smtp_url = "smtps://your_username@smtp.gmail.com"
> set smtp_pass = "mailbox/app password"
> 
> # Remote Gmail folders
> set folder = "imaps://imap.gmail.com:993"
> set spoolfile = "+INBOX"
> set record = "+[Gmail]/Sent Mail"
> set trash = "+[Gmail]/Trash"
> set postponed = "+[Gmail]/Drafts"
> 

Setting up the remote Gmail folders was particularly useful as I was
stuck on how I would reach my inboxes from the mutt client. Good stuff
Gilbert! Thanks for this tip :-)
> 
> Note: The imap_pass and smtp_pass can be your App password or email
> password
> 
> I hopes this helps
> 
> Best wishes
> Gilbert
> 
