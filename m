X-GM-THRID: 6332661608531099648
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.159.55.202 with SMTP id q68mr983008uaq.15.1474610349038;
        Thu, 22 Sep 2016 22:59:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls8253281otb.16.gmail; Thu, 22 Sep
 2016 22:59:08 -0700 (PDT)
X-Received: by 10.237.32.33 with SMTP id 30mr1236313qta.24.1474610348575;
        Thu, 22 Sep 2016 22:59:08 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id w124si632813ywc.4.2016.09.22.22.59.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 22:59:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id 15so989227uai.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 22:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=BFG10LVOCZeBmkQmI/Zde2bJX7UuV/T0zbHEU8Ztbq8=;
        b=e0t7K5Zt3LncilLBgfB1gfdW17Qx7l9jK7JPEAYdkk69GJMhgWTG6B/BrEowrelsl1
         8emJ0955Eq2OIhjs//x3NyqmWQWQu56CDtiV55NMhkX1M6xz/rsu6goaHT69fMVBOGZC
         19AnxNaUkDapw6JMyKKuXYQ0zIsRtYoUyQA0USYrjaxU16s3GEISoARa6YZc534Y1Glw
         EcyDBZmmj1GIXcf4Fu6bVEo5mIok8FVmapVry4Jww32bt7udThLY9FqsC3Nssg4xQO8H
         InVD5vdenrDPq/aP1LF1/UqzDLuEzT944DyyLpbPDt63Tu+WRh5QQZgnrEXcYZMMSq7K
         Vrug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=BFG10LVOCZeBmkQmI/Zde2bJX7UuV/T0zbHEU8Ztbq8=;
        b=bHFnSavKc7LlhjJJh1QTq1YzAH89vD4yaSk3GENcsDfj1hbDxq9EKXoTdTtBKLYtQm
         rs2CdKKoimoZ0A53ONkaAX1re5rG+orO2VwD+Rl+Jy2IXfyrCGPSnKf/dyIux9KaZ3tj
         N/TRS+OGcYDDeQDUGgjepZb5nDB5ygaynObBB2We1Qqe7Xsdq1vG4hv1t1bxK6jFsr4z
         BvLGM/e6ybo7Stv96HFoeS7qltPyVOSQMzNdmSIT3+fiNshFbrrYZTKJnCOKxdBzN19X
         sL9K8jdlmM5sDajwQYr7Ko6UqSMDscfX6jGgmXWNcRlH3xXfrH455q31Tq+750BMfZfI
         isUg==
X-Gm-Message-State: AE9vXwO7TbIgnvXl4c3gc2OVSsym64JzHb1OMi4jROXWpu1L5gSnjaRvRzu0muCAq9MFzVEsXjN/whEETAE2KQ==
X-Received: by 10.176.4.97 with SMTP id 88mr2652864uav.92.1474610348329; Thu,
 22 Sep 2016 22:59:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.108.214 with HTTP; Thu, 22 Sep 2016 22:59:07 -0700 (PDT)
In-Reply-To: <c33bb083-d19f-473c-9f16-92bbd62d4e80@googlegroups.com>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com>
 <649173d5-38d8-43e3-af3b-a81aab81311d@googlegroups.com> <CAK-LDbJdnH_ONEEcCs-yLeEtMN4cYQKD0Jkc4M_TtOTaDpTV0Q@mail.gmail.com>
 <c33bb083-d19f-473c-9f16-92bbd62d4e80@googlegroups.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Fri, 23 Sep 2016 11:29:07 +0530
Message-ID: <CAK-LDbJvbdbai-8=A9k3re5rojjcnX3Aip4zec5QHjJdMKt+9Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Mutt/Gmail Issue
To: gnudevliz@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 23, 2016 at 1:15 AM,  <gnudevliz@gmail.com> wrote:
> Hey Vaishali,
>
> Thanks for your reply. I finally figured it out. Hallelujah.
> The Debian installation manual specifically says to use exim4 in order to
> set up debian to use e-mail:
> https://www.debian.org/releases/jessie/i386/ch08s05.html.en
>
> I had to closely follow this tutorial in order to finally get it to work:
> https://wiki.debian.org/GmailAndExim4
>
> I also had to fix my /etc/hosts and /etc/hostname file.
>
> I thought I'd post these in case you're using Debian.

Glad that you figured it out. Mutt was working good for me for the gmail.
But I don't use it anymore for sending kernel patches. :)

I think just adding a section in the tutorial with the errors and link to this
Debian specific document might be useful.

> On Wednesday, September 21, 2016 at 9:47:33 PM UTC-7, Vaishali Thakkar
> wrote:
>>
>> On Thu, Sep 22, 2016 at 1:18 AM,  <gnud...@gmail.com> wrote:
>> > Hi everyone,
>> >
>> > Thanks for your replies. I've tried many .muttrc config changes and
>> > Gmail
>> > setup but I keep getting the same error.
>> > I think I'm supposed to set up a FQDN (Fully Qualified Domain Name).
>> > Mutt
>> > keeps telling me there is no HELO/ELHO argument
>>
>> I am not sure about this error but usually Mutt fails for me if I use
>> it under firewall,
>> proxy settings or vpn. So, I don't use it anymore. Git send-email
>> works good for me.
>> If you can't figure out the solution of this error and want to go for
>> the git send-email
>> then you can check this blog:
>>
>>
>> https://burzalodowa.wordpress.com/2013/10/05/how-to-send-patches-with-git-send-email/
>>
>> It just requires to set up .gitconfig. I can share my settings but I
>> think that blog explains
>> almost everything in detail.
>>
>> > On Tuesday, September 20, 2016 at 11:01:18 PM UTC-7, gnud...@gmail.com
>> > wrote:
>> >>
>> >> Hello everyone,
>> >>
>> >> I'm on Debian Jessie and I cannot get mutt to send email. I can receive
>> >> emails and view my inbox in Mutt but I can't send messages. I can send
>> >> them
>> >> to myself though. I can't send them to another email address.
>> >>
>> >> When I use mutt to send an email I keep getting this HELO/ELHO error:
>> >>
>> >> SMTP session failed: 501 5.5.4  https://support.google.com/mail/?p=helo
>> >> yg10sm21072351pab.8 - gsmtp
>> >>
>> >> That brings me to this page:
>> >>
>> >>
>> >> https://support.google.com/mail/answer/6386757?visit_id=1-636100243312716080-1894628512&p=helo&rd=1
>> >>
>> >> I can't figure out how to resolve this issue. My 2 factor is off and
>> >> I'm
>> >> allowing login from unsecure apps. I'm also trying to use ssmtp instead
>> >> of
>> >> esmtp but the same thing happens in mutt.
>> >>
>> >> When i do
>> >> $ sudo ssmtp some...@gmail.com
>> >>
>> >> the email does actually go through though, but it says from root.
>> >>
>> >> If anyone has suggestions I would really appreciate it!
>> >> Thanks,
>> >> Liz
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> > Groups
>> > "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> > an
>> > email to outreachy-kern...@googlegroups.com.
>> > To post to this group, send email to outreach...@googlegroups.com.
>> > To view this discussion on the web visit
>> >
>> > https://groups.google.com/d/msgid/outreachy-kernel/649173d5-38d8-43e3-af3b-a81aab81311d%40googlegroups.com.
>> >
>> > For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>> --
>> Vaishali
>> http://vaishalithakkar.in/
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/c33bb083-d19f-473c-9f16-92bbd62d4e80%40googlegroups.com.
>
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

