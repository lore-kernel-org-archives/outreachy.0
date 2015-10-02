X-GM-THRID: 6201108859850850304
X-Received: by 10.112.164.1 with SMTP id ym1mr2963314lbb.15.1443819278544;
        Fri, 02 Oct 2015 13:54:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.161.20 with SMTP id k20ls241557lfe.88.gmail; Fri, 02 Oct
 2015 13:54:37 -0700 (PDT)
X-Received: by 10.112.40.17 with SMTP id t17mr2963912lbk.10.1443819277938;
        Fri, 02 Oct 2015 13:54:37 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id xl3si122506wib.1.2015.10.02.13.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:54:37 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MCfv0-1ZqKYp1y54-009RuQ; Fri, 02 Oct
 2015 22:54:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] Staging: lustre: obdclass: cl_lock: Declare as static
Date: Fri, 02 Oct 2015 22:54:37 +0200
Message-ID: <6944166.1fiYEf27RQ@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.11.1510030216380.24977@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com> <4965740.aaLffJxEfT@wuerfel> <alpine.DEB.2.11.1510030216380.24977@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:gcoq8d3gAZA4DaxqcaGuLv6vF57hhZ0IQiNwS3f8EaQF6LBRJJf
 83URKHXqjlyCr8NZVXVHpbbpdcrxDOluAIU7z3lkQ1FELw6Zn7cKLurrk9jTbRC8nruz4Bf
 qlmoMCXmeTISmHUcG9QxSUkjRz58f47KvgwGYqhJSafS+iClM61ZFw5MBhHqb7lTfJ08u2+
 5jROCwkCWTsMK//zfI+Og==
X-UI-Out-Filterresults: notjunk:1;V01:K0:kOM3TFj3X0U=:0+0TjGVpm6mb/18UeCyf2Q
 NzLCoPCqvMUWlfeUVWB6LS6ByZ5MEhaUGqCi3DPfNOG/My39Vk8RAqdA007Ym3flDaULnj4uF
 EvpZfTTAv9Ow+7+UqjRXOtdt8WRk+VFYcwQMBrF8R9BLQoPEZ8R4jlaxt4oulGxfxgL/ErQem
 lpFsmNu1TqAkozx94c3OYuwaSG6dMA3F+LnZFbFwgediNPkKgysKYGg3JyDVkxzpEApZPhkSG
 8IzmMSWeRJv9wCfFvKlbacY0sxyeWuDZ6fsVtirMBx+bLjLpA+an1qABeRE3N17LqG0Bwk5ox
 SApQeD/6e2yCqSYLTF0xEEQVdaoR7l+eWv7B5Ga5/7loyhVRclOmIIqoQ39/Gofd1SIVOdMLM
 BwpFmnBZitzZ7aQmzCrtx8/QZRaMPgBA6QgNiNgEdsQj6Tr4QS84Va1zTl1SThhVt2OY+8rNj
 MXodHJ1LGmLT+Kgl+DImJ8HAqwOBIeOYGnMF8XTJmKz38GKVT/xAUUHGegoF/B1Ld0bLRHXMv
 CS06eO0b3vePc7avTgSIt2hw59wnAdNm8o6ugPwUIXiFR18/WzyCsdt9Rc36IsFLZHW8P2eSO
 oyDMih906mdzJ+NMF7aOjzd7z/X46V6QKCuSHTwcZJXszh2SVfw/aje7wBNYcTMKjqAJM8BQF
 XNleEOwAzBtmXo7aMkaRcNcDmPUwOZxuKKBe7jDiGLxQIZGIJ+N8R/1hhOwZ0HyEDNN+ytyDJ
 0YGnxYlH1froHP8e

On Saturday 03 October 2015 02:21:10 Shraddha Barke wrote:
> On Fri, 2 Oct 2015, Arnd Bergmann wrote:
> 
> > On Friday 02 October 2015 23:19:11 Shraddha Barke wrote:
> >> Declare cl_lock_intransit and cl_lock_extransit as static since they
> >> are used only in this particular file.
> >>
> >> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> >> ---
> >>  drivers/staging/lustre/lustre/obdclass/cl_lock.c | 10 ++++------
> >>  1 file changed, 4 insertions(+), 6 deletions(-)
> >>
> >
> > I still see declarations for these functions in cl_object.h, you
> > should remove them at the same time.
> >
> > I would have expected to see a compile-time error as a result of
> > your patch, because you have an extern declaration and a static
> > definition for the same symbol.
> 
> Yes that would normally happen. But the declarations for these were 
> removed in another patch 4 days ago.
> https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=a83a765d14df24c8fa0fc500d24b0334638ee828

Ah, got it. I guess it was actually me who removed the lines, I just
forgot about it, and I would have thought that I put them back.

My initial dead code removal patch converted these two into static
functions already, but then I realized just how much work it was
to do them all at once, and I decided to revert that conversion for
the time being and only do the code removal then.

for your patch:

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

