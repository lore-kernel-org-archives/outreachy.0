X-GM-THRID: 6389549071972958208
X-Received: by 10.223.160.227 with SMTP id n32mr1087171wrn.0.1487684678202;
        Tue, 21 Feb 2017 05:44:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.130.17 with SMTP id e17ls1593190wmd.10.gmail; Tue, 21 Feb
 2017 05:44:37 -0800 (PST)
X-Received: by 10.28.139.211 with SMTP id n202mr1186837wmd.5.1487684677354;
        Tue, 21 Feb 2017 05:44:37 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id d5si927815wmc.1.2017.02.21.05.44.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 05:44:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-lf0-x243.google.com with SMTP id 86so4932056lfv.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 05:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xJuwPpWVgkwmGXP1TtQm2pl3MbVl275Trkwvras/cAY=;
        b=K5lpRWypoJ5yEuYUMMJVllAAhwYDA9fq2X34dqVfWcegMcY/wQSlJyP8JvfqyVd8Vr
         DCf3ZNlSZQHkspYS/pyID3vTMm+S+f2nXLPUJgj3NGqswU8lRE2abFfqs9G+WrDm6S0q
         2E6T3/Zc3KtXvhL+HOR+HjNwETe84IHtKnYVnidRC+QwcPbl/bzizSJCfHI68BA/U9/e
         Z5o4EmmUX6oejUrtm6VEwfmntOgCHoX+UoecaimOVsdaR1HM+Kx70YtTTwzQCqcfYSTi
         doHBrIDOh4MAHMs8E0wK1I8ZMLsXoZCBDIxqFs6u07wOIPSYGToqB46T2X+M61E2wkbf
         1KOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=xJuwPpWVgkwmGXP1TtQm2pl3MbVl275Trkwvras/cAY=;
        b=kjR/GzkYSzlEMOXoFiTAtgw0U3ojj/XuNWviK+kHH5v37JGVvrQaeD9uXEiniCahg4
         RV1uFS73LNoqy38fNBeeJ066Gwyx97XWBkzgvp2LVAbrooE2gQruaw1qnu3jFwMLDKp4
         fOhFd1fpw0rYHYYFlxbaStgMU+g4Bd1WusBOqUmr/W0kjaMaj8uw/cgS404bCXvjSEff
         KNwC7swPtxBEG24vkov2lhpzC7wafD+KczWRbob9PcPjt4ACDOJBb6Tpmq1se2RCC2/N
         Epwoq8t2k5HwJ3pClzOhkLqC/cUhp3RjEaLqb6LraNYdmlFa0Ql9EKkfmVD4mupCAuWw
         nokA==
X-Gm-Message-State: AMke39knPuzshl4gHKKCVZEAxuV+uiPlgY/1KQThAqAmeyA793rzxwW+6nNub2FE7bM/uQ==
X-Received: by 10.46.80.29 with SMTP id e29mr6976160ljb.121.1487684676821;
        Tue, 21 Feb 2017 05:44:36 -0800 (PST)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra ([84.216.234.102])
        by smtp.gmail.com with ESMTPSA id a16sm6214032lfk.64.2017.02.21.05.44.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 05:44:36 -0800 (PST)
Sender: Johan Hovold <jhovold@gmail.com>
Received: from johan by xi.terra with local (Exim 4.88)
	(envelope-from <johan@kernel.org>)
	id 1cgAk8-0003yc-MR; Tue, 21 Feb 2017 14:44:36 +0100
Date: Tue, 21 Feb 2017 14:44:36 +0100
From: Johan Hovold <johan@kernel.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: simran singhal <singhalsimran0@gmail.com>, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org,
	greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/6] staging: greybus: Remove
 unnecessary braces
Message-ID: <20170221134436.GB10245@localhost>
References: <20170221131535.GA3718@singhal-Inspiron-5558>
 <alpine.DEB.2.20.1702211420300.3121@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1702211420300.3121@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 21, 2017 at 02:20:50PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 21 Feb 2017, simran singhal wrote:
> 
> > This patch removes braces for single statement blocks. The warning
> > was detected using checkpatch.pl.
> > Coccinelle was used to make the change.
> >
> > @@
> > expression e,e1;
> > @@
> > - if (e) {
> > + if (e)
> >   e1;
> > - }
> >
> > Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>

I do not think this patch should be merged.

Note that all of the braces you are removing are for single statements
that span multiple lines, and that is precisely why the braces were
added in the first place. Having braces for such statements often
increase readability even if they are not mandated by the coding
standard.

So I suggest this patch is dropped.

Thanks,
Johan

