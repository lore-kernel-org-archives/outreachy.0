X-GM-THRID: 6530656197776769024
X-Received: by 10.28.170.145 with SMTP id t139mr22607wme.2.1520542130721;
        Thu, 08 Mar 2018 12:48:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.77 with SMTP id v74ls31479wmv.7.canary-gmail; Thu, 08
 Mar 2018 12:48:49 -0800 (PST)
X-Google-Smtp-Source: AG47ELssNDi7dKPQwM9ISAgV3zNvl+iRcGPZusW1CCJ15O3jOnPmEVRzIu3g3kHuRjkW/5W9bmWa
X-Received: by 10.28.227.5 with SMTP id a5mr20142wmh.7.1520542129925;
        Thu, 08 Mar 2018 12:48:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520542129; cv=none;
        d=google.com; s=arc-20160816;
        b=nZ9ji9dReZeM2QJALcnqK9nlveT2GQ27lfgCH0Logjkv6OnTGM0C2w2K7ZWKRLsT6I
         Rt2RDMJqlSCjAVKS1+maFk8S689ryeNpKz8pe78Hp/eM16ixuckvZ/gH4oGiI0D6pivW
         hx0W6LEe3FFSQTD3iiUa3vcCd+Xdv56H2wFTSioMfHfJy2y3NbQd9EQZlgpNtnPZ3+AI
         Dcf7UGH/nFWociGc3GoqAdt5qhugZnxPKT2rfrRtK7DJx0CPNZ3yvaXWRd4OE7sCmjsq
         VgJ0WnrQaLunTaIjQn6HwM+7d0/sxFPhmLimHu0SPBL+rX73QWxqACdECF5v61RZJweD
         w8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=y0mAZTZsrWdZgYRF/Xt/Xo7TNu9a/ANyGB6a2VvPmBk=;
        b=rxtJKPhyhx8Ttl5d8i463JTfzZX6yBXdPyveBfxkMOCWf8PhEumK+4QYsiRf96T0Zi
         nx7NeG2fgVanyZ4YLzY1kYzi/NxWg0fQdE6xIrYGVd7bmdszHZfkG762S0z5IXAx8NAg
         lQZU+xlpr8jPA5yl2pfmBy4pMRIHoWeNRnh7HNvceyJJzaqYJbPSHV4sBO25p8AbJOQ2
         4SDdZ5WDeoM34dxHTMJFlEzGAIfowSMvn2ZJaRQuKldlqY5K8DHLuhgamuXJjLODAJyx
         J+efjFvEtpxmJdpvAksF3g/kSchZW1et7gKGKXb4nRirHFQjJN6AEQOb+YXvj8tEJsIp
         Ttqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id j199si459221wmj.1.2018.03.08.12.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 12:48:49 -0800 (PST)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 2D507120B4;
	Thu,  8 Mar 2018 21:48:49 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KAPt0onTtXLI; Thu,  8 Mar 2018 21:48:48 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (static-176-158-111-12.ftth.abo.bbox.fr [176.158.111.12])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 8FA3110695;
	Thu,  8 Mar 2018 21:48:48 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.90_1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1eu2T1-0003wW-9n; Thu, 08 Mar 2018 21:48:47 +0100
Date: Thu, 8 Mar 2018 21:48:47 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: speakup: Replace simple_strtoul with
Message-ID: <20180308204847.2bmei7z43tdqvsgg@var.youpi.perso.aquilenet.fr>
References: <20180308195332.2hao4ys737ubr275@var.youpi.perso.aquilenet.fr>
 <1520539425-16513-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1520539425-16513-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Nishka Dasgupta, on ven. 09 mars 2018 01:33:45 +0530, wrote:
> While we are on the topic of speakup, should I also stay clear of the
> checkpatch warnings in keyhelp.c:102 and keyhelp.c:743 to add a
> KERN_<LEVEL> signifier in the printk() commands on those lines?

That should be fine.

Samuel

