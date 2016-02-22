X-GM-THRID: 6253814918113394688
X-Received: by 10.67.5.233 with SMTP id cp9mr25303108pad.43.1456140025841;
        Mon, 22 Feb 2016 03:20:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.34 with SMTP id 34ls861076iod.2.gmail; Mon, 22 Feb 2016
 03:20:24 -0800 (PST)
X-Received: by 10.107.152.10 with SMTP id a10mr28657990ioe.28.1456140024792;
        Mon, 22 Feb 2016 03:20:24 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by gmr-mx.google.com with ESMTPS id q187si1349227ywf.4.2016.02.22.03.20.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 03:20:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id s5so54191113qkd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 03:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=2Cx/x6GteCDvFwVbc19qSTP+hTVddrh0tyqatRzdzzQ=;
        b=R/0a/M+LKA9l51ijun79nAlKt7BNUQY1qFjprSuHWU9yr1AIWtFyqmv06vAdSXEoJz
         s8gjIqbXu24LQ9clAMr4RsIhEIONPtl25u091fgdLXwDEAtONlbS+bTfCcpynT0dpTh8
         DNgVEGnaHmGTIdn39pHAM47hGjITtpCagWnR3vIoq7Vw/QNXWlWQlthxvgkd95i6aW9s
         HcuU5C4slqNKwLCVtU19nxm2OEdvqyHdrU6uQ2fSfISvck7tl+0kT7oiZp00NgEBv78e
         nR/s6pQEclxBaI/PbQ1acB5oj01Nl++j95d5WP/HS3pmEg9LJvS09n185f8m7lkX1Et0
         Tcew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=2Cx/x6GteCDvFwVbc19qSTP+hTVddrh0tyqatRzdzzQ=;
        b=MmUfmAlxhbCYLtfQbtcApAgPW2KRkucgH8RS2gD/pqtU0q+lfOwX/GYRkCCTb3zkA0
         DQYt4JXOmDqPDZsIBynvtbV7vBg5h9YUEjumSIvlmO4D+RyHVa/adAAivLXA+6RboV0h
         rMpZqk5ZgCPoEtcx2mJmX1trFaltjOOPn8qvwEVDP/TU6VmMV1ZeoFR3SL9fHqKfVNQi
         FJ+nywkFWkLglcgJ0dVoBF6LFiE0KssimNo521tOCShCoygInsPj3ABT5WJy7qRy5JS3
         BHn+Y9jdraLDpITRlRn1dhahfVQmpp+Wrr1FVy6/LQDiethuFNg20xd17eu//Ydc8R60
         LNSA==
X-Gm-Message-State: AG10YOR5SEVjMWoxFM7m9iwp+72/YqeDfLRINg/hAzk5aiRW1eNhJMEgVmyaRDip+B56zoDhupDBcQYBiLK/pg==
X-Received: by 10.55.209.14 with SMTP id s14mr33486900qki.100.1456140024634;
 Mon, 22 Feb 2016 03:20:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Mon, 22 Feb 2016 03:19:45 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602220528250.2685@hadrien>
References: <20160221183624.GA3428@Karyakshetra> <alpine.DEB.2.10.1602211937020.2512@hadrien>
 <CAFNHFT-veFJ+0-FC_9rJDV3A0uzg1RZmvGDJWnxvBhLfHoZ_7Q@mail.gmail.com> <alpine.DEB.2.10.1602220528250.2685@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Mon, 22 Feb 2016 16:49:45 +0530
Message-ID: <CAFNHFT897nR+k6oasfO8b9-B36vNmvGEiUvC9DO9GMtBAvfS7A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: most: hdm-usb: Use macro DIV_ROUND_UP
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,


On Mon, Feb 22, 2016 at 4:01 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:
>
> > Hello Julia,
> >
> > Like you suggested, I have dropped the macro CEILING altogether and
> > have replaced
> > it with DIV_ROUND_UP.
> >
> > Should I resend the patchset or should I just  send a v2  for this patch?
>
> Normally, if you send a patchset and then you change any patch in it, you
> have to resend the whole thing.  If your previous patch set was a bunch of
> different files for DIV_ROUND_UP and you are now going to add a bunch of
> different files for CEILING -> DIV_ROUND_UP, perhaps it would make more
> sense to make a v3 for the original patch set just dropping this change,
> and then ake a new patch set for the CEILING change.  But if the CEILING
> change is only in one file, maybe a v3 with teh current set of changes is
> OK.

Yes, the CEILING change is in a single file. Patches 1,2,4 are unchanged.
Hence, I'm sending just a v2 for patch 3/4.
Is the following subject fine for v2, patch 3/4

[PATCH v2 3/4] staging: most: hdm-usb: Use macro DIV_ROUND_UP

Thanks,
Bhaktipriya

