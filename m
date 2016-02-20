X-GM-THRID: 6252907967708921856
X-Received: by 10.107.152.10 with SMTP id a10mr18106881ioe.28.1455948402967;
        Fri, 19 Feb 2016 22:06:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.9 with SMTP id c9ls306425iod.26.gmail; Fri, 19 Feb
 2016 22:06:42 -0800 (PST)
X-Received: by 10.66.119.197 with SMTP id kw5mr15812704pab.15.1455948402705;
        Fri, 19 Feb 2016 22:06:42 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by gmr-mx.google.com with ESMTPS id v197si888770ywa.1.2016.02.19.22.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 22:06:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id s5so39210679qkd.0
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 22:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=f8El9i6tBX9Bd0jIjALCMTRPvLoFdMSxrRRmk9La9as=;
        b=FbsEvXASFqGREfTMm+jUgmSpAf3n+BfX9Ih1ulP09v2dy+qR6W4P8eD4z7niKLqCKt
         FUBm7qVNIRMEYSIUJ+1LsX/y6SelmeGQ/qAZuvq+EgKOWYOfgTnZWi7zESWoBdOEKCBN
         eVpFrLl6OF5yEd2mXBngEgIjJDLCXsxMB7Gnk45zUKyM0g429ppT6MCGR23erqW7y1Dp
         za603rIiYt9oX782YmBu59Yi62I6uJvogPCKPoi9zk5Ca0EqmqBAdA9a0BWnmUumKGg/
         7hFT1kEIEarChbytzb5jrDz4xPC8w5dcbi5R5hagJlwu75TahGVMMabvgsZuRXuU41HN
         tSow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=f8El9i6tBX9Bd0jIjALCMTRPvLoFdMSxrRRmk9La9as=;
        b=RRplkyXpLeJbe3WS3mvz1RmBZbINEhjoAeORq3zfPI57EvPWgUdfJATurXvx4QH2ta
         J9+pQHRHhK9tYpmPSD/qU27DsE3Wxsk0R4epKShv3wPlZQX+LX1s98DTZWzov/UW1pbe
         KbQMtR7YPU1BANPwuoHYZp1GCt8J8tO6WULXJTYqQoYsxBINlP18NUWZEy1VsSDJGoEj
         7Cae9l4/E3nK4sjeKe7xKTMREhI7hHncqIWLKGZlFr2G87sEhF7xA8MTcCscpK0lY0so
         gcNWxA3LH13jfPucZyw5T/tkR/j/uiGFq+QZizjbpwG7G7X8ZCsWBWZ8rFEm6nEQg9+0
         x+yw==
X-Gm-Message-State: AG10YORNmEuhsMpRYRcYN/Wf00DTGAa7gq3pYFqoQDembP7Gvhcf1D4ZpsCeMqPGOOpYcT59lskaRDSP17DrMg==
X-Received: by 10.55.209.14 with SMTP id s14mr21275671qki.100.1455948402506;
 Fri, 19 Feb 2016 22:06:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Fri, 19 Feb 2016 22:06:03 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602192321190.2806@hadrien>
References: <20160219075654.GA12205@Karyakshetra> <20160219160442.GK13177@mtj.duckdns.org>
 <CAFNHFT96V4Pt==M0ZRup-iZDn3FE1SZ8T_m_sxqsg6gqQ=7K1Q@mail.gmail.com>
 <20160219194548.GM13177@mtj.duckdns.org> <CAFNHFT8Q1PPg8Eu73_NHtbtqBTWaMqgtgHDXXU+3-mEnAFmtkA@mail.gmail.com>
 <alpine.DEB.2.10.1602192321190.2806@hadrien>
From: Bhakti Priya <bhaktipriya96@gmail.com>
Date: Sat, 20 Feb 2016 11:36:03 +0530
Message-ID: <CAFNHFT-wRguhHuhPKCDX0cravwv8=PsH7PLJOuwhs5-XTtHiSw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Use alloc_ordered_workqueue
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Tejun Heo <tj@kernel.org>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,

Thank you for you reply.
On Sat, Feb 20, 2016 at 9:53 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> The explanation should be in the patch, so that people who look at the
> commit logs in the future can underatand the reasoning involved.
>
 Like you suggested, I have mentioned my explanation and reasoning in
v2 of the patch.

> Not knowing much about this problem, I'm not sure to understand:
>
> Also, there is no difference in execution characteristics between using a
> dedicated wq and a system wq.
>
> Is this a general statement, or is ti particular to this case?
>
It is a general statement for system_wq. Hence, I have removed this
statement from my patch.

Thanks,
Bhaktipriya

