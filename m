X-GM-THRID: 6335466366571642880
X-Received: by 10.129.106.193 with SMTP id f184mr10603481ywc.56.1475129950844;
        Wed, 28 Sep 2016 23:19:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.41 with SMTP id h38ls2422887otb.2.gmail; Wed, 28 Sep
 2016 23:19:10 -0700 (PDT)
X-Received: by 10.176.66.6 with SMTP id i6mr3692142uai.34.1475129950386;
        Wed, 28 Sep 2016 23:19:10 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a3si495633paw.1.2016.09.28.23.19.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 23:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9E8A93EE;
	Thu, 29 Sep 2016 06:19:09 +0000 (UTC)
Date: Thu, 29 Sep 2016 08:19:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: amsfield22@gmail.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Rebase/line wrap question
Message-ID: <20160929061913.GA28764@kroah.com>
References: <20160928192508.GB2193@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928192508.GB2193@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 28, 2016 at 12:25:08PM -0700, Elizabeth Ferdman wrote:
> Hey Alison,
> 
> I received some feedback from Greg that I want
> to fix and I have a bunch of questions. The plus side is that maybe
> some of the answers could go into the tutorial.
> 
> First he said "please wrap your changelog comments at 72 columns."
> 
> Is this something I add to my .vimrc? I've been using "git commit -m".
> Is that causing the issue? I thought git commit messages were supposed
> to be less than 50 chars anyway. I'm confused.
> 
> The other issue was that my commit didn't apply to his tree. He says
> please rebase and resend. I think I need to do:
> 
> $ git fetch origin
> $ git rebase origin/staging-testing
> Then reformat the patch?

If you use 'git rebase -i origin/staging-testing' you will get the
option to reformat/rewrite the commit message for the patch (it will be
one of the options for the list of commits, see the git rebase
documentation for details).

That's what I use when I have to rebase and edit things up, saves you a
step or two.

hope this helps,

greg k-h

