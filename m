X-GM-THRID: 6465198588662120448
X-Received: by 10.25.16.224 with SMTP id 93mr558043lfq.8.1505297085940;
        Wed, 13 Sep 2017 03:04:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.138 with SMTP id t132ls52541lfe.8.gmail; Wed, 13 Sep
 2017 03:04:45 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4y4Wa+cqk1tHDD2HVB8BiNk0RkZqAz9tEzVuzpIZdQYQpah4pLmHRCLsE6B33/wNbxjpjE
X-Received: by 10.46.18.149 with SMTP id 21mr1131045ljs.28.1505297085223;
        Wed, 13 Sep 2017 03:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505297085; cv=none;
        d=google.com; s=arc-20160816;
        b=y4YwCwp3TGyByFUQ9YoyErMZTeTEqXPptN7EPh56jN/+0iepdZHbiI4kYfb4uwQSKr
         R10BXLOWvlmbSQ8N1b3JxvVx9WkDQb8lztN9potqBrpTTmj34ZqflLD+dWkczGQQnZK9
         JSP1Zx9pte8Q7HP9VTwI6fR5SVX8HCCrwWJVd6vVR/svvzpjpCQ8Z40d7NPwyynDEUSo
         t+OhzqgHpkwf02Lqx7krQMILphcN933atCHOoN4txHbdAtWezB09ltx4jziVXiMKW5lh
         buFuIGENxmoP/W9tG0x05dgdKe7ePZJCb/6Yjyw3woMCSWP08q3znenPSfUmMsY/WKqi
         QK1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=yVlfCy8UyB16XM7EHbPZ4qx6XiRCElLPxY95XO0ZtA0=;
        b=SZqly6JBzF5L6DkSNoi8F8n+g/d+Ih3Tma8zAN/Xt5R80JNxb/jpziQPvDfTg5M7l7
         V4Nu/G8Mm5SCraCYWEJg+aangNVbYn33dcFYuZf42RWn5F2mINsjsX+a1+hdPWIWVqpw
         nsfCjMnHwSS0UWPYx0IHdGIXjs6fWHjKzgigYD0POMAeGby6OnIKPIHLWQ+muUTh+LQn
         MPMlMmA32q4vpeq2gSVHOosGi3s6QZGvXoxWdJMoCIafJ6pgasFfsVga/9+D7h5XvB7Z
         GfGKjgRbjp9kQXNEtWQbUsZUAkNWzQXph0Y5YVqj2GRFkOaZzRoa5CEWwg1ky0LaoEhv
         ETKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 200si72208wmj.0.2017.09.13.03.04.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:04:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,387,1500933600"; 
   d="scan'208";a="237316121"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 12:04:44 +0200
Date: Wed, 13 Sep 2017 12:04:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Colin Ian King <colin.king@canonical.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, kernel-janitors@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, 
    Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: DR Checker and KINT static checkers
In-Reply-To: <92cea65d-9461-3fed-8e07-cd41059410a9@canonical.com>
Message-ID: <alpine.DEB.2.20.1709131203520.13908@hadrien>
References: <20170913095202.a6zsi3xeryzhmxrl@mwanda> <92cea65d-9461-3fed-8e07-cd41059410a9@canonical.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Colin Ian King wrote:

> On 13/09/17 10:52, Dan Carpenter wrote:
> > LWN.net recently had an article about Dr Checker.  It's a promising new
> > static analysis tool.  The LWN article is for subscribers only until
> > tomorrow, but anyone can read the PDF or install the code.  It would be
> > really interesting if someone could run Dr Checker on a mainline kernel
> > tree and post the results.
> > https://lwn.net/Articles/733056/
> > https://www.usenix.org/system/files/conference/usenixsecurity17/sec17-machiry.pdf
> > https://github.com/ucsb-seclab/dr_checker/
> >
> > The other tool that's quite interesting is KINT which looks for integer
> > overflows.  It's a bit of a pain because you have to annotate some
> > kernel functions to make it work.  The PDF and source code are here:
> >
> > http://css.csail.mit.edu/kint/
> >
> > regards,
> > dan carpenter
> >
>
> Funnily enough, I tried Dr Checker out earlier this week.  One has to
> make it do a fake build of the kernel to gather information on how to
> build the specific kernel config (e.g. how it was compiled and the gcc
> build flags) and then this gets parsed by DR-Checker.  Unfortunately it
> seems that it only supported arm architecture builds and it could not
> handle the gcc output for a modern x86 amd64 gcc (gcc 7.2). I kind of
> gave up after a couple of hours trying to make it work.  I suspect more
> patient developers may figure out how to make it work. I may go back and
> revisit this when I have some free time.

You could ask the authors.  They may be happy to have some feedback.

julia

>
> Colin
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-janitors" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>

