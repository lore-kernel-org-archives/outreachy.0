X-GM-THRID: 6805826308521590784
X-Received: by 2002:a17:906:3e06:: with SMTP id k6mr2067215eji.29.1584606049196;
        Thu, 19 Mar 2020 01:20:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:c794:: with SMTP id cw20ls722966ejb.4.gmail; Thu, 19
 Mar 2020 01:20:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs4AURwrCDf0gQnO5T5udylkkeoHcvzTAKU/vwk1gMggPRo529S6vUyXO4FJgxoCrCVEcwZ
X-Received: by 2002:a17:906:f90b:: with SMTP id lc11mr1817619ejb.35.1584606047947;
        Thu, 19 Mar 2020 01:20:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584606047; cv=none;
        d=google.com; s=arc-20160816;
        b=scifTEedN89emWN6bkIq6Ipmqe5VJBHfJgJeYm9FOqU1vUpcSA4PXI4B8oBeBzMutU
         fpz1mq/VZjJL+V+LaUlhP6fDsJpwbnZV9SyJsXBSFIoWNhX/svz805sdeM9ccAUbWib0
         swrdY/eE2akfbyoQNq/3BNSwFtAq3og7adJkOaUtu+pO1axz2Vv602KL2Rre1vaZzPFB
         CYP9V+GgMtkBCQFu+w0gM495muTDGJY6gn84qjxIZBcFuK2zubvmCWvTRl1oMGc8yprv
         jVAKk4ThhQz3owLyFhsC5SqODCwdX12s2RGmovG6Cdpo5ZbhSMAs/VlDkjlzyWjGuAxu
         DTYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xEZR9eS4SLoOF7+f4dx5U1pEzW2wjM1NYf51DY7PZqU=;
        b=wH1NtOqfYcFftafW7dXCa4Cf8nWaozi2NKSrjSOpD9HPSmyvMY+jI6Ipzo0c8A0mLI
         ZAXWUrXhYXyJFd0xHfpWOezJdAFAI/lYKFi0EBZP/itYoSks6Z7ZCq9VIKep/oH35MV5
         OGTXFsJ8JT84PnCSmR3cWMr224hj0LafjSS612XmpxSrKlq/4QJ0OTcfjNTEV+1ql7sK
         ku9vPYDbouNobztZ9a2rXyPHETcA6tKl05lp1sQWIvFIW/3sUpKZOt4i+Tk2WbYNRod5
         Fr5i3nmVHeQPMq4fcL/PFDUNbyxCR9J92/WmjGfqjom1eunbUoFyXv/EOmbA8/ogeO5M
         yAMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id x7si68511ejw.0.2020.03.19.01.20.47
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 01:20:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26018 invoked from network); 19 Mar 2020 08:20:45 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 08:20:45 -0000
Date: Thu, 19 Mar 2020 13:50:36 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] I need feedback on my posted patches
Message-ID: <20200319082033.GB1723@tulip.local>
References: <20200319080144.GA1723@tulip.local>
 <alpine.DEB.2.21.2003190910040.3010@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003190910040.3010@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 19, 2020 at 09:11:14AM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 19 Mar 2020, R Veera Kumar wrote:
> 
> > Hi,
> >
> > I posted patches on Saturday. But I did not got a msg from Greg
> > about they being accepted. Yesterday Greg posted that he has
> > seen all outreachy patches upto now. And if we do not get reply's
> > for the patches we should resend. So I resent it yesterday.
> 
> Are you sure they went to the mailing list?  I looked on the Google
> website and I see two discussions involving you yesterday and they both
> end with a request to resend the patch.
> 
> julia
> 

Yes. I received them back from outreachy-kernel@googlegroups.com
mailing list. I will check google groups site in a web browser.

Veera

> >
> > Please I need a feedback about my patches. I do not know what to
> > do otherwise. Also the Outreachy contribution time is only 1 month.
> > And we have to do this 10 patches and 2 patchsets before project
> > specific task. I need time for that also. Please consider.
> >
> > Regards,
> > Veera
> >

