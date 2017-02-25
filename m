X-GM-THRID: 6390634706454446080
X-Received: by 10.99.67.197 with SMTP id q188mr2628369pga.31.1488016159577;
        Sat, 25 Feb 2017 01:49:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.210 with SMTP id r201ls2425762iod.30.gmail; Sat, 25
 Feb 2017 01:49:18 -0800 (PST)
X-Received: by 10.98.0.206 with SMTP id 197mr1725567pfa.2.1488016158820;
        Sat, 25 Feb 2017 01:49:18 -0800 (PST)
Received: by 10.55.155.200 with SMTP id d191msqke;
        Sat, 25 Feb 2017 01:41:25 -0800 (PST)
X-Received: by 10.46.84.68 with SMTP id y4mr787144ljd.21.1488015685301;
        Sat, 25 Feb 2017 01:41:25 -0800 (PST)
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [141.255.128.1])
        by gmr-mx.google.com with ESMTP id 14si362539wmn.2.2017.02.25.01.41.25
        for <outreachy-kernel@googlegroups.com>;
        Sat, 25 Feb 2017 01:41:25 -0800 (PST)
Received-SPF: neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=141.255.128.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id C9CD8B9FA;
	Sat, 25 Feb 2017 10:41:24 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-_dTDuo4Dp2; Sat, 25 Feb 2017 10:41:24 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (unknown [IPv6:2a01:cb19:181:c200:3602:86ff:fe2c:6a19])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 3C0A5B9F4;
	Sat, 25 Feb 2017 10:41:24 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.88)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1chYqx-000466-Fu; Sat, 25 Feb 2017 10:41:23 +0100
Date: Sat, 25 Feb 2017 10:41:23 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace BUG_ON()
 with WARN_ON().
Message-ID: <20170225094123.ssback7e4kmw2ett@var.youpi.perso.aquilenet.fr>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
 <alpine.DEB.2.20.1702241814330.3089@hadrien>
 <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Hello,

Varsha Rao, on sam. 25 f�vr. 2017 01:32:42 -0800, wrote:
>     > -��������BUG_ON(!group);
>     > -��������spin_lock_irqsave(&speakup_info.spinlock, flags);
>     > -��������retval = message_show_helper(buf, group->start, group->end);
>     > -��������spin_unlock_irqrestore(&speakup_info.spinlock, flags);
>     > +��������if (WARN_ON(!group)) {
>     > +����������������spin_lock_irqsave(&speakup_info.spinlock, flags);
>     > +����������������retval = message_show_helper(buf, group->start, group->
>     end);
>     > +����������������spin_unlock_irqrestore(&speakup_info.spinlock, flags);
>     > +��������}
>     > +

>     �What code do you consider to be the recovery
>     code? �BUG_ON always crashed the kernel, so there was no recovery code
>     before. �What new code have you added to perform the recovery?
> � �
> ��� I didn't understand regarding recovery. Here further changes has to be
> made. As message_show is passed as argument in� __ATTR().
> � � It has been called multiple times in drivers/staging/speakup/kobjects.c and
> in the following way:
> 
>  __ATTR(announcements, S_IWUSR | S_IRUGO, message_show, message_store);

So it's called on writes to a sys file. Just returning an -EINVAL error
there is fine.

>     �What is
>     the value of retval if the branch is or is not taken? �Is this the
>     meaningful value in each case?
> 
> �� retval is assigned with size of the message to be displayed. Few of the
> things are not clear.

Julia asked about when the branch is *not* taken. In that case retval is
still 0, that's not a useful value. Please make retval -INVAL instead of
0.

And then with all these fixed (including the WARN_ON logic inversion),
your patch makes perfect sense to me.

Samuel

