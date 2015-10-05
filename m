X-GM-THRID: 6201888067640360960
X-Received: by 10.182.65.134 with SMTP id x6mr24533840obs.14.1444015655748;
        Sun, 04 Oct 2015 20:27:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.16 with SMTP id n16ls1558846ioe.80.gmail; Sun, 04 Oct
 2015 20:27:35 -0700 (PDT)
X-Received: by 10.107.131.194 with SMTP id n63mr24056049ioi.8.1444015655534;
        Sun, 04 Oct 2015 20:27:35 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x234.google.com (mail-ig0-x234.google.com. [2607:f8b0:4001:c05::234])
        by gmr-mx.google.com with ESMTPS id a11si880293igv.3.2015.10.04.20.27.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 20:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) client-ip=2607:f8b0:4001:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by igbkq10 with SMTP id kq10so53950065igb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 20:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=rbxSS2sOnp5lZnh2L1WIDX0yXvUF6MK11LIqcbt3u0E=;
        b=DpMykR0cXrtCv94hZ/8LaTw9PuVNqogMXoQcQmLeu5BwoPdWCEXdhJVjPXi5lE/Hsz
         TCoAiz+GKes59f7GemhPxUNt+5kVR5dy3ICEDtmwgDPT2LPSC1nIMVnhVyYQFtLnDEpB
         EgeMlr90gElJXJoM7Z8e+YXRTYBKhwVt1Lo843JCkNH65Mhyx0i/Q5KWBceZEWwOzmXz
         wskZS1sYalIAEyJI1/0DI560IvQWDWanMQrbZDeva06ZLfHcSxFEQD/ltwthmWzqJde3
         4IRBBZbIKd6XiMw4sON+RI/hD2VfKQ0KDoeBUHQpYu0Uqn5cngdHZPsCSeQ9qvw4vEJa
         01Iw==
MIME-Version: 1.0
X-Received: by 10.50.23.72 with SMTP id k8mr2663129igf.69.1444015655407; Sun,
 04 Oct 2015 20:27:35 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sun, 4 Oct 2015 20:27:35 -0700 (PDT)
In-Reply-To: <20151005031746.GD27303@kroah.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
	<594338659176808944f42cc535049b9f401c64d7.1443989364.git.ksenija.stanojevic@gmail.com>
	<20151005031746.GD27303@kroah.com>
Date: Mon, 5 Oct 2015 05:27:35 +0200
Message-ID: <CAL7P5jJYCu-ibEqqHgkUP24_3PhxfJkmW0zupU9Mn5jhzS3B=g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: rtl8192u: Do not DMA on
 the stack in write_nic_byte_E()
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 5, 2015 at 5:17 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sun, Oct 04, 2015 at 10:14:00PM +0200, Ksenija Stanojevic wrote:
>> Fix error "doing DMA on the stack" by using kzalloc for buffer
>> allocation.
>> Issue found by smatch.
>
> What does smatch say after you made your changes and you run it on the
> code again?


I made a mistake i should have replace &data with pdata.
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151005031746.GD27303%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.

