X-GM-THRID: 6803932242595807232
X-Received: by 2002:a2e:a401:: with SMTP id p1mr778425ljn.106.1584491617314;
        Tue, 17 Mar 2020 17:33:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls4683805ljh.2.gmail; Tue, 17 Mar
 2020 17:33:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs7H5S/vt9RA8sCGygRgvubImU3iqssLiZgYt1uE79CIAc+CSXJ2K6I54tPiz7axGyHgR2d
X-Received: by 2002:a2e:5ce:: with SMTP id 197mr774058ljf.234.1584491615933;
        Tue, 17 Mar 2020 17:33:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584491615; cv=none;
        d=google.com; s=arc-20160816;
        b=GCxkRu0XdeLNZNqDVfFA0j/lZ/5CaWeoljgexCnYiPsn2eVkrRsgqKvn688uailk9r
         oWJMSTwC13RZPkyf5ZmY0xqK9zqWYuu2jOUr4Y7tS/COG0I8/Js3niAddxykX12TDaKq
         /4R5QD+Ob6mqLi4veDM68+oAE/b4rt8IYocay03MP8wqp6WHIUu7zBwjZjsfyKq15GIL
         wP9Oi8Ke5Naovw4/PUkn/M4FFN1MvNjGhcfzaCFp4BB+PS2uAIRmbq1Fp9JRtjJxdAK2
         NOGOXqC7Uwc/NbKETLMAlBF9ADYeGjYjibhFvRVh3Yyz5eONZRg59HLRYakWh59Wkijz
         EOsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=P+Rf+nWkdAx2z6kjhIVmqZnIWEW4oaeGhDYTR0h0IQA=;
        b=AKSsTbPxY8A8DXD6XYgi5ERSIPTDHUMmnCjbIgibmCzyMd8Ji+ZISme7p1Y2BE5Flp
         SUz8SMYHFg/u552uSU10U+Uy64f8xTrDpCzYH3GGwD23ypYzxKL9Rs+12EoHi7T4oAe1
         VMUEIpZJLRss52d36TVosumWX+eKbo+mp23nl4d/HAgTNXCxzUOnqP2+bPfRcDvOnwTI
         lyPLP/75sYpVl8hYm5h/SvVOFog+5DaKSYZpfQ/nRl5JHCgcNelps9NKo6CgxJJGzNB9
         6NPbUdfASTIza2uBuclhCDvcTEOsfZPLmT06h111PQqpyTKpa4CtbV8lPulHwklvnAEJ
         d4gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id v191si96252lfa.4.2020.03.17.17.33.35
        for <outreachy-kernel@googlegroups.com>;
        Tue, 17 Mar 2020 17:33:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 4085 invoked from network); 18 Mar 2020 00:33:34 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.249.223.67)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 18 Mar 2020 00:33:34 -0000
Date: Wed, 18 Mar 2020 06:03:27 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Kershner <david.kershner@unisys.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Documentation: Fix
 for longline and typo in doc
Message-ID: <20200318003325.GA1739@tulip.local>
References: <20200314053136.GA2160@tulip.local>
 <20200317110044.36940c33@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317110044.36940c33@elisabeth>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Mar 17, 2020 at 11:00:44AM +0100, Stefano Brivio wrote:
> On Sat, 14 Mar 2020 11:01:51 +0530
> R Veera Kumar <vkor@vkten.in> wrote:
> 
> > Fix longline and a typo in documentation.
> > Found using checkpatch.pl.
> > 
> > [...]
> >
> > @@ -56,7 +56,7 @@ NOT covered in this document:
> >  2.1.1. Overview
> >  ---------------
> >  
> > -The visorbus driver handles the virtual busses on which all of the virtual
> > +The visorbus driver handles the virtual buses on which all of the virtual
> 
> This is not a typo, both spellings are correct and you are anyway
> keeping a "busses" in the other section. We also
> have drivers/i2c/busses/. If checkpatch is reporting this, I think it
> should be fixed.
> 

English US spells busses.
English Uk spells buses.


The dictionary database used by checkpatch.pl, codespell is the problem.

> Please re-send.
> 

Sent it.

Veera

> -- 
> Stefano
> 

