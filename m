X-GM-THRID: 6523195637320646656
X-Received: by 10.31.95.210 with SMTP id t201mr3734752vkb.30.1518807000087;
        Fri, 16 Feb 2018 10:50:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.19.231 with SMTP id n36ls308062uae.2.gmail; Fri, 16 Feb
 2018 10:49:58 -0800 (PST)
X-Google-Smtp-Source: AH8x227AU0G/j8uNcEK2WqoA0zwQqMuvwMdamxm5CK3TuguMKToBiwJsiRiMm8G5RVPvcXahzf4C
X-Received: by 10.176.73.193 with SMTP id f1mr2139699uad.1.1518806998948;
        Fri, 16 Feb 2018 10:49:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518806998; cv=none;
        d=google.com; s=arc-20160816;
        b=oIcnV5cELv69zHAc8v2WIbes0LEk0prlu/C7bh3xFSjl109HZLhVTvOgDJNe//U1Z3
         2Pvb2B6Nnsw84ABWXuDYOlBm7lIwM88bgXRSbBC5UmFJRxkPxMHOrKzAe7jnN76nuNjY
         pvUuG7yGJ3UsZcCnkWFTehceEHIQAi0C1ATOXEjJoczQqEuf8TDtbzuJhvesVhoiB2Ps
         SvAKBwKl7PdBijK0sUaRhU8rWPLAeFFU5slBGDuBsD+O1idwxnXH8ncDYkh3LczrdcbN
         bIy/2kiXmkWh8aXsFXA+t7QA4Kl6Q1Bd2Qc6AWd9h5IKiwwmkZ6G6NfFFD47eXsJsbbe
         36Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Hg3b57a7Hfm5VnETqXFdD/t1IKP4KbMXg/anxRlaqko=;
        b=hbIABbJS1NEPWWpBnRanpRzoRF+8qcNgNgVOzlwK90GwUEy9NHr6E0zfJAygqnVGT4
         6gGUCjW7qG5wEA5F8A9j8Je4kAT3oRI3IhydtU5bCJH1dLk+cysc89stUCYVkSlXt+wQ
         ZTo/bD1MW8tb9DEzFS6FgQ4CXWmYoaM2s43kr2MqiED8KUUCG+kGmeQaF1iwxXxMNCI7
         LvIWLr6wzbuKHG+RLLmcrvDNtWl8g8PAZrV/5KuY8nyd6lH0/hxiiBgnMDa3hvdk6hRS
         IyPQn6HxvvSpVH7Daj7Ujc6SpcaJMNjw2mseakSAqwhxlOCn+56C+WWXeP5LpeGHnD4Z
         IrWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=BemyMXVG;
       spf=neutral (google.com: 66.111.4.29 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com. [66.111.4.29])
        by gmr-mx.google.com with ESMTPS id b32si226385uad.4.2018.02.16.10.49.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 10:49:58 -0800 (PST)
Received-SPF: neutral (google.com: 66.111.4.29 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.29;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=BemyMXVG;
       spf=neutral (google.com: 66.111.4.29 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 6B44420A78;
	Fri, 16 Feb 2018 13:49:58 -0500 (EST)
Received: from frontend1 ([10.202.2.160])
  by compute6.internal (MEProxy); Fri, 16 Feb 2018 13:49:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=Hg3b57a7Hfm5VnETqXFdD/t1IKP4K
	bMXg/anxRlaqko=; b=BemyMXVGpEXaZAgzQhO/f2YRj+PhIJzNwiqkeVJC1NMe6
	6htr2pIGdyQ/vRgx8Wmdlm8G8h/kEt0B8C+EOTUEbAzmoVb5h46ObPacIwv3aCTf
	V/6Go/oi+5zHIYSYYL7QLKt8T5GraB37lfB0ONJXiWQCPkO6nUaIzy5Q4W0xfp8I
	QDGha7m5HNfZ1DhOB7ZcQHnogSKqEe7ZwA3jcr7auflNgnrp+Bu/eihStvRIUisI
	kxnTsm6qfSmlnc96CJmP4OAhV0XxAKcdedq+uhGaC56BKFLk1/4bAVpmmmmJYFwa
	qM/svfaeRNd12JPQVIkUZiDqmlm4SzRayWExfMCPw==
X-ME-Sender: <xms:1ieHWkus5EdnT0LKFQsht5g6XYYDsp9_R3cE-Mdo2TdfeLfoK3Sbeg>
Received: from localhost (unknown [37.173.12.47])
	by mail.messagingengine.com (Postfix) with ESMTPA id 6501C7E4A8;
	Fri, 16 Feb 2018 13:49:56 -0500 (EST)
Date: Fri, 16 Feb 2018 19:48:32 +0100
From: Greg KH <greg@kroah.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Richard Weinberger <richard@nod.at>,
	Shreeya Patel <shreeya.patel23498@gmail.com>,
	Boris Brezillon <boris.brezillon@free-electrons.com>,
	David Woodhouse <dwmw2@infradead.org>,
	Brian Norris <computersforpeace@gmail.com>,
	Marek Vasut <marek.vasut@gmail.com>,
	Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH NAND 0/5] Replace printk
 statements with pr_*macros
Message-ID: <20180216184832.GA9616@kroah.com>
References: <cover.1518797480.git.shreeya.patel23498@gmail.com>
 <1963507.Bpu1nn9g4S@blindfold>
 <CAAEAJfD6CbWOfrYOY4QDW0tte-yOebcZTGjUDQhR8uE+fsOs3w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAEAJfD6CbWOfrYOY4QDW0tte-yOebcZTGjUDQhR8uE+fsOs3w@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Fri, Feb 16, 2018 at 02:24:46PM -0300, Ezequiel Garcia wrote:
> Hey Richard,
> 
> On 16 February 2018 at 14:19, Richard Weinberger <richard@nod.at> wrote:
> > Am Freitag, 16. Februar 2018, 17:50:09 CET schrieb Shreeya Patel:
> >> This patchset removes all the log levels i.e. KERN_WARN,
> >> KERN_NOTICE, KERN_ERR, KERN_INFO, KERN_DEBUG used in the printk
> >> statements and replaces the printk statements with appropriate
> >> pr_*macros.
> >> According to the kernel coding style, pr_*macro is the preferred
> >> way to print the message.
> >
> > Beside of that, how does it improve the code?
> > Don't get me wrong, pr_* is the way to go for new code, but I don't think it
> > is worth "fixing" in existing code and make working with git blame more
> > painful.
> >
> 
> Shreeya's intention is to work on [1], migrating drivers to exec_op.
> As a first task, before being accepted, she is required to submit
> cleanup patches (or small tasks).

"cleanup patches" should always start in the drivers/staging/ tree, to
avoid bothering other subsytem maintainers.  Please start there before
moving on to the "tasks" as mentioned on the site that are picked by the
mentors.

Don't skip the cleanup patches for no good reason please.

thanks,

greg k-h

