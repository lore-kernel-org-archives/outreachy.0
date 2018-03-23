X-GM-THRID: 6534171640869158912
X-Received: by 10.129.72.74 with SMTP id v71mr6601196ywa.221.1521837486810;
        Fri, 23 Mar 2018 13:38:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.97.65 with SMTP id v62ls283307ywb.43.gmail; Fri, 23 Mar
 2018 13:38:05 -0700 (PDT)
X-Google-Smtp-Source: AG47ELune71FCsHImAZkP+IGlqE+1/FeB4JH7nhcbVPZa0HzpZ8qVUEeJ3JdtEzHNTUhnlRphziL
X-Received: by 10.13.232.149 with SMTP id r143mr11789982ywe.200.1521837485746;
        Fri, 23 Mar 2018 13:38:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521837485; cv=none;
        d=google.com; s=arc-20160816;
        b=O0izWxTeag8OecFOHMw4PRGv8QhqBlkU/JuT4GUmC/5qM9YKD1dcUx5t4bgrEJ0K4T
         TOKXXaWBgcGSRskT/yUPosLI21DyysUMDWscN15rpiBIBsKNBj6PJ1vnJS2QhxlqRs+x
         dWQFEzQlfNy5xUnQwAeKHmv5fPNuyNXwxy/80LOecyB2eWl+3SfTeJYBR/v/I0sXnB6R
         czF1hvh2C5baMKa7gwDDFRsYax4qrHBjjZk/2wtrCXQtOaRO1eYSRUnqf9a0MdtYCaWA
         YwhhC9jkKrR6cA7Os7SWg5pJMhy94b/tf9P3w1zl0fl1iNUmsuMfkeuBgubiG6dAeOgG
         VnZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=PZnVK08PE+J7NSb3m5m9LOQy4U4EHUFp1OvYj4EcGm8=;
        b=ZcjGEnf+dxcqtYIkVm9gzqwRVZNAIxYcU3ht/Cg2uRTPbOhRhw9VMcMB4WXuJE+orn
         A2RxoBEVWBLmLdtb2bWMchhtGAnvwNybPFP2pLxzbkCNPp3l2nq3/yMmH2JVzAZeQue5
         IpHDoIVx6MahckwauzUxXqCX2ahlXjX7V3GFmQ+LAAL7cLzbx2E6QV+Mg8EoipDrWnUZ
         sVEFPS/szT89OBAJLDPL8Oa0nObccJ7qGi9zqWiRUC14FWAZvHK9bRbwbBKrp0ZDzpvi
         ERpUchqTC15qv8MyeVyvpPBaJekw78PBrF/8bhiNQ26bySk2j3oZx0dEQIuDDKxhNcH5
         wMcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Sx8vp0J0;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id f8si530618ywh.1.2018.03.23.13.38.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 13:38:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=Sx8vp0J0;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x243.google.com with SMTP id v194-v6so4151573itb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Mar 2018 13:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PZnVK08PE+J7NSb3m5m9LOQy4U4EHUFp1OvYj4EcGm8=;
        b=Sx8vp0J00Wf52igjVpMQVE8QvwTZpIeqETHKwBOD/DW6iMeHQhj+/367PQXtSr4yNF
         89c2A5skQC3tAp5H6hTnaMGv60kuiZuX6w4P8s2Z+hNc5P9Xnw6sLMj+1ASLKn5Z89OV
         LYHM/vYGq4ZES+nSW7sD1adTRJ9x8hhmipsnk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PZnVK08PE+J7NSb3m5m9LOQy4U4EHUFp1OvYj4EcGm8=;
        b=har3d76FDUV2ejOnXMBwRHoJMZYByy3Z66plhRf5bOJOGUmG4CPQtcx0pweY35rxtP
         QxImsPutB1UauIJ/Mjk1QPSHQKMpQqG5xfV5LnNrzRaHnUDEBLJ+xHZttsFmO0vbBnQl
         Z/RPSz6AFoA9vtaPFyG5jbB2888bg0lH0+FoeRMy2uViHxb4Ba4rclr8HQU2u/X5z4at
         Mj4edb+AGHg0NbkBY9HaQ8Ni07qqBps7TbdcLCZ/Ipb+nZ06qaZkCQWVhoR5SOV3ZyAz
         h/B4H1T5ZxXyUjRQ0YYCGIY843ip57Z4se3jjGw0xdL58+4CbUmPVXYseq9SVYocK6W7
         +jJw==
X-Gm-Message-State: AElRT7G9B6WyO6rCbphf/4Td2uaUtzisirs5PXBL8bgDY/gB7HttMuVm
	zOSRuvXe8IrJEWg3bh+63BJNdPX4O+q6u6e/9bvnJg==
X-Received: by 2002:a24:9b8a:: with SMTP id o132-v6mr15406141itd.82.1521837483723;
 Fri, 23 Mar 2018 13:38:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Fri, 23 Mar 2018 13:38:03 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803210733230.2559@hadrien>
References: <alpine.DEB.2.20.1803180739260.3299@hadrien> <e84b04f6-0288-4490-b3e3-8bf9166f3d4f@googlegroups.com>
 <CAO393ABtUKH6t6aZwSX0tPoDX7dQ5MggeWsN8t+Rhd1wnV6DBA@mail.gmail.com> <alpine.DEB.2.20.1803210733230.2559@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Sat, 24 Mar 2018 02:08:03 +0530
Message-ID: <CAC4++KARyc2Z8OGM_HR=OkhT3NWeQSZ6NyKaDxvECXDipFQ82Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: application
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shraddha Barke <shraddha.6596@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 21, 2018 at 5:03 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 21 Mar 2018, Shraddha Barke wrote:
>
>>
>>
>> On Tue, Mar 20, 2018 at 9:54 PM, Nishka Dasgupta
>> <nishka.dasgupta_ug18@ashoka.edu.in> wrote:
>>
>>
>>       On Sunday, March 18, 2018 at 12:13:08 PM UTC+5:30, Julia Lawall
>>       wrote:
>>             Hello,
>>
>>             Currently three of the kernel projects have a
>>             deadline of March 22 and the
>>             Userfaultd project has a deadline of March 29.  In
>>             either case, the
>>             deadline is 4pm UTC.  You can find out what time
>>             that is in your area
>>             using the following link:
>>
>>             https://www.google.com/search?q=4pm+UTC+to
>>
>>             You make a separate application for each project you
>>             are interested in.
>>             If you are interested in multiple projects, please
>>             clearly indicate your
>>             preference between them.
>>
>>             julia
>>
>>
>>       Does this include the project "dri-devel aka kernel GPU
>>       subsystem"? Its deadline is also listed as 29th on the outreachy
>>       website.
>>
>>
>> Yes, you should make a separate application for "dri-devel aka kernel GPU
>> subsystem" project as well.
>
> Th date for DRM changed after I sent my message.
>
> julia
>

Oh, okay! Thank you for the clarification!

>>       Thanking you,
>>       Nishka Dasgupta
>>
>> --
>> You received this message because you are subscribed to the Google
>> Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send
>> an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to
>> outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/e84b04f6-0288-4490-b3e3-
>> 8bf9166f3d4f%40googlegroups.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>>
>> --
>> Shraddha
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAO393ABtUKH6t6aZwSX0tPo
>> DX7dQ5MggeWsN8t%2BRhd1wnV6DBA%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>>

Nishka Dasgupta

