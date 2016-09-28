X-GM-THRID: 6335101576926986240
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.194.121.197 with SMTP id lm5mr352237wjb.7.1475095439257;
        Wed, 28 Sep 2016 13:43:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.136 with SMTP id s130ls164158lja.17.gmail; Wed, 28 Sep
 2016 13:43:58 -0700 (PDT)
X-Received: by 10.46.71.203 with SMTP id u194mr1943769lja.29.1475095438830;
        Wed, 28 Sep 2016 13:43:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a126si739293wmd.1.2016.09.28.13.43.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 13:43:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,411,1470693600"; 
   d="scan'208";a="238659302"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Sep 2016 22:43:58 +0200
Date: Wed, 28 Sep 2016 22:43:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: Alison Schofield <amsfield22@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] line wrap and rebase question
In-Reply-To: <20160928181956.GA2193@localhost>
Message-ID: <alpine.DEB.2.10.1609282242530.3211@hadrien>
References: <44f080fb-8ee2-4de0-8480-7b21534757ab@googlegroups.com> <20160927203553.GA20780@d830.WORKGROUP> <20160927220413.GA23877@localhost> <20160927222001.GA21768@d830.WORKGROUP> <20160928181956.GA2193@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 28 Sep 2016, Elizabeth Ferdman wrote:

> Hey Alison,
>
> Good morning! I received some not so good feedback from Greg that I want
> to fix and I have a bunch of questions. The plus side is that maybe
> some of the answers could go into the tutorial.
>
> First he said "please wrap your changelog comments at 72 columns."
>
> Is this something I add to my .vimrc? I've been using "git commit -m".
> is that causing the issue? I thought git commit messages were supposed
> to be less than 50 chars anyway. I'm confused.

The 50 chars is for the subject line.  The 72 chars is for the log
message.  Once the patch has been committed, the log message will be
indented a bit.  So you can't go all the way to 80 characters.  For code,
going a bit past 72 can be OK.

julia

>
> The other issue was that my commit didn't apply to his tree. He says
> please rebase and resend. I think I need to do:
>
> $ git fetch origin
> $ git rebase origin/staging-testing
> Then reformat the patch?
> $ git format-patch -o ~/mypatches/ HEAD^
> $ mutt -H <file>
>
> So I don't need to uncommit/recommit?
>
> Thanks,
> Liz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928181956.GA2193%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

