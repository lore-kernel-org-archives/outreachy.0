X-GM-THRID: 6467580145196597248
X-Received: by 10.200.46.99 with SMTP id s32mr1551825qta.50.1506201538217;
        Sat, 23 Sep 2017 14:18:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.216.137 with SMTP id a131ls1078013ywe.8.gmail; Sat, 23 Sep
 2017 14:18:57 -0700 (PDT)
X-Received: by 10.129.230.3 with SMTP id u3mr1887866ywl.75.1506201537197;
        Sat, 23 Sep 2017 14:18:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506201537; cv=none;
        d=google.com; s=arc-20160816;
        b=ZNsOljzZBe8nuF8Tee9vixgB5LcM8vJf6B/IUva14imKGfSphEwCfHhKOaGJnvMZzg
         b0yQ24mj9brk/Nn4HQ7b4gi2z53k/CowGbfuZo6mEQs168gTaDGk5hq2Wr5d6FZ7vIuQ
         Eiq6B+Vm0bxxUF05ukbyvUYr6i3DAFE3i7j0LaZuY6gc3AOgnLmdcWDHXbEWLeIlO6Di
         ofPrvBb1yi2HNWKhvt8Pezb/Oq4b6eGCFRghQd2DNvCleRB8NkWrol8FOCP2LUdSHahT
         +XJ/x1vtoYbF2PrQtLp14ckyhZC46IMY8PfIyBBqUNO5LwwXuAD3FedbvgZIKr1ExJo/
         3xKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=JEVp95cGqYyhD1305c5rsLacVK4B3u8xoPoaWO9X+oc=;
        b=UFcBNyTK/GyagzxiMVQWpNuctf2JMtLJsmLPVzhsGMhu+rdGrYMIA/jW7rrfs2PTE5
         RQVlYhLcezEoTvWutx9elT6oxuFCxAivZuwX0OSa9zos3964AMQ+ClOaXR7YUEJxIjww
         8QP6ww2/y+DFXMot82r6cqD9uGFXVr4vQZl7OUngc/IQm8Evdyp9LdYTFBAAOJHZDeQ1
         pFwn6fBYaZ84zq3yzGtyS6oz7+X5kubDOLo8AeD68i8KJEkqGhtbdu7jVkamk8uJyGoD
         k6XKoOptpI6pG7J7UaDtN7zJCBbjGDSiM2Rnbr8ijy+Hz7pvyK+NQDG41J8h2K1iRKHU
         P07A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oojR3RW3;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id q127si110323ywc.32.2017.09.23.14.18.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 14:18:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oojR3RW3;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id t46so2844823qtj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 14:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=JEVp95cGqYyhD1305c5rsLacVK4B3u8xoPoaWO9X+oc=;
        b=oojR3RW3077yLZjWWONz05U6msN7/GKlVRrgs3o2w8HZMJj348c+w/l7Rm3TxkOIjE
         AkfoOIdjWd3lUKSeVI6M97XJ7m70WsWgZ7XA4QO8YW6bCPav5a7qj65R+OqwnoVbaHQ4
         Klf+GGeEdz8roj1OSrlkv45NsdCtZVMu/g+WJTd8Iw0z6bi9MTUnrK8iPkhEmsuYI2gZ
         ZyXgT0EhhY71mVs+5GysiQ8s4kgNqOsIBWXbchnQYDFlRE8oVUj2GMreeU0Xp++JnjLk
         c8ff66RjzUxVWov6/glCDlr+NOx0vK7YvhRrNoZ3paMj6dnrttdM+4cGrgOyYVC3PAHE
         J0NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=JEVp95cGqYyhD1305c5rsLacVK4B3u8xoPoaWO9X+oc=;
        b=Bz/2Af0m5SGC5Ap9zIgghay1aZyHJS8pAatP7sKZzI/xqMigq119rrPAd4VxMxKRWU
         +xD+SpE0rSrGFkaCvzUJJuFU582IKy/FJapXe+6sM6OgmKpkAX/zFVE24ukwBgOpAyGT
         O2/UTw9UwyY5PD9lPZzCEu+Z2wB6x7bY6VnzF1Bu5a48BIDpyelHoSqDENy9+LZ9CDyg
         kRtaitgQ7wN3D4jQUqlqpGaCOI93KLm0tXm8f8EC3iI4ruQM5vT/RerHROvmEYBS8g1p
         0ryp7k1HsHetR95H2MHawkQL57nSfpg6RYLEYcz09jYy/hvV37rXdXrwgiZtSrSAZTGE
         jV9A==
X-Gm-Message-State: AHPjjUiHqbr/qDglVKw4DmYB33dP0q0wWcIz46e4HQ0QBFTLHNnwPgX9
	+JUFK5K/Pdjok8EbxcK6Ayo5tiCk+NtMgeNIUMjhGqfz
X-Google-Smtp-Source: AOwi7QDAwsQiM7TJFrT2hVBx2Xt/I5SwDA4DLO4gx+bDzaIXtXCM5f/bdoFvgD2L7SUmo3QpjC9EDf9VJMvwgaAJv6Q=
X-Received: by 10.200.49.170 with SMTP id h39mr4943257qte.162.1506201536854;
 Sat, 23 Sep 2017 14:18:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Sat, 23 Sep 2017 14:18:55 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709201104510.3290@hadrien>
References: <20170919195406.n6kztu5q3pnduhir@fireworks> <alpine.DEB.2.20.1709192225010.2518@hadrien>
 <CALta04zspRuf0a2ELBCYZOXK=K4UDkPTeEDJN=sUBYuZEzJbXg@mail.gmail.com> <alpine.DEB.2.20.1709201104510.3290@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Sun, 24 Sep 2017 00:18:55 +0300
Message-ID: <CALta04wjWw+iu-0exV7aW5fEiJqG-xGmzgkw08-4Qwz3txOGpw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Use
 netdev_info instead of printk
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On 20 September 2017 at 12:06, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 20 Sep 2017, Georgiana Chelu wrote:
>
>> On 19 September 2017 at 23:28, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Tue, 19 Sep 2017, Georgiana Chelu wrote:
>> >
>> >> Replace printk with netdev_info because struct ieee80211_device
>> >> contains a net_device structure.
>> >>
>> >> Issue found by checkpatch.pl script.
>> >> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
>> >> dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
>> >>
>> >> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
>> >
>> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>> >
>> > Maybe all the locally defined debug levels are not really needed, and the
>> > calls to the debug macros could also be replaced by appropriate calls to
>> > netdev logging functions.
>> >
>> > julia

Hi Greg,

Are debug levels still needed? As Julia pointed out, all IEEE80211_DEBUG_*
macros use printk(KERN_*) in the end. Do you think it is useful and safe
to replace these macros with netdev_*?

Thank you,
Georgiana

>>
>> I think there are two options:
>>
>> 1. Replace IEEE80211_DEBUG(IEEE80211_DL_ERR, ...) occurrences with
>> netdev_err(dev, ...),
>> but these debug messages are shown only when CONFIG_IEEE80211_DEBUG is defined
>> in the kernel configuration.
>>
>> 2. Change the IEEE80211_DEBUG macro to use netdev_* instead of printk.
>> But, that would require extra checking in order to use the correct
>> netdev_* macro.
>>
>>
>> extern u32 ieee80211_debug_level;
>> #define IEEE80211_DEBUG(level, fmt, args...) \
>> do { if (ieee80211_debug_level & (level)) \
>>          printk(KERN_DEBUG "ieee80211: " fmt, ## args); } while (0)
>>
>>
>> So, what is your opinion?
>
> One option would be to drop the whole mess and put everything at _debug,
> because everything was ultimately done with KERN_DEBUG before.
> Unfortunately this code doesn't seem to have a specific maintainer who
> might know whether all the debugging messages are still useful.  Perhaps
> Greg would have an opinion.
>
> julia
>
>>
>> Thank you,
>> Georgiana
>>
>> >
>> >> ---
>> >>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 4 ++--
>> >>  1 file changed, 2 insertions(+), 2 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> >> index 8aa38dcf0dfd..0f86195680e8 100644
>> >> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> >> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> >> @@ -143,7 +143,7 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, P
>> >>
>> >>       if (ACT_ADDBARSP == type) {
>> >>               // Status Code
>> >> -             printk(KERN_INFO "=====>to send ADDBARSP\n");
>> >> +             netdev_info(ieee->dev, "=====>to send ADDBARSP\n");
>> >>
>> >>               put_unaligned_le16(StatusCode, tag);
>> >>               tag += 2;
>> >> @@ -345,7 +345,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
>> >>       pBaTimeoutVal = (u16 *)(tag + 5);
>> >>       pBaStartSeqCtrl = (PSEQUENCE_CONTROL)(req + 7);
>> >>
>> >> -     printk(KERN_INFO "====================>rx ADDBAREQ from :%pM\n", dst);
>> >> +     netdev_info(ieee->dev, "====================>rx ADDBAREQ from :%pM\n", dst);
>> >>  //some other capability is not ready now.
>> >>       if ((ieee->current_network.qos_data.active == 0) ||
>> >>               (!ieee->pHTInfo->bCurrentHTSupport)) //||
>> >> --
>> >> 2.11.0
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170919195406.n6kztu5q3pnduhir%40fireworks.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALta04zspRuf0a2ELBCYZOXK%3DK4UDkPTeEDJN%3DsUBYuZEzJbXg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

