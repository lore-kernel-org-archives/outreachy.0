X-GM-THRID: 10414332051456
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,14f284b32a4ff3e1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.67.74 with SMTP id l10mr359927lbt.23.1427741706578;
        Mon, 30 Mar 2015 11:55:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.12.83 with SMTP id eo19ls692814wid.27.gmail; Mon, 30 Mar
 2015 11:55:06 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr8939319wjc.5.1427741706219;
        Mon, 30 Mar 2015 11:55:06 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x22a.google.com (mail-la0-x22a.google.com. [2a00:1450:4010:c03::22a])
        by gmr-mx.google.com with ESMTPS id xg8si725995lbb.0.2015.03.30.11.55.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2015 11:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::22a as permitted sender) client-ip=2a00:1450:4010:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::22a as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x22a.google.com with SMTP id p7so92161279lah.2
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2015 11:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=J2b+VfsKKqMg2fZ7bDaeyQulQs26lvpqaY5k542YjQc=;
        b=MGk7eRK4YQy54C7thn+p+RS7XkVAlFnsR+oC+1P0Vjaxpm0sKBh2Cfn/R9d5zY3naN
         TA4yOuVBZc2lmzSeDli9EgFPkyyAXdTeFGL84JmrAZhN9aX/X0hHboXd+vQ9kGE/mgmk
         3p0g5ZLXr/AH4edq9GbsKPx/lJkykBxagBowfS8BmSZPdyuc9S0/2GFy9+uZ6BZWiMUG
         mS3RknTSb89tUef/eDsKi/68kRMrlGjdQxy/ecHqLT6JLubxTuWcZ5dNqA98wtDch1Bp
         WfTJdYxZT2lC2VRbjQ8i6N9hrLOSwKZzBCs6i5ehKpEuaCxA4EcWYB0WcjgKkgirLvOA
         x4/w==
MIME-Version: 1.0
X-Received: by 10.112.131.66 with SMTP id ok2mr27511441lbb.51.1427741706124;
 Mon, 30 Mar 2015 11:55:06 -0700 (PDT)
Received: by 10.114.199.6 with HTTP; Mon, 30 Mar 2015 11:55:06 -0700 (PDT)
In-Reply-To: <20150330184007.GA2862@waves>
References: <20150330184007.GA2862@waves>
Date: Mon, 30 Mar 2015 20:55:06 +0200
Message-ID: <CAL7P5jJy92+U3dgcVOzNS0OZZZFn=5pv-aHPwEDYiR+iSJ31-w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Some general questions
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 30, 2015 at 8:40 PM, Aya Mahfouz
<mahfouz.saif.elyazal@gmail.com> wrote:
> Hello Everyone,
>
> I had a couple of questions lingering in my head for quite some time
> now. I'm reading lots of articles but I'm interested in people sharing
> their experiences as answers to the following questions:
>
> Is it possible to setup a simple cloud-based compile farm? Are there
> guides or projects that would help with that? My question comes after
> seeing Fengguang Wu's kbuild testing farm reports.
>
> From experience, how do you usually debug new drivers? What tools do you
> use?

I used nm tool and addr2line.

>What do you think of tools like kgdb and kdb? What do you do for
> example if testing a driver freezes the computer it is running
> on.
>
I rebooted it by force, by pressing power button.

Ksenija

> Thanks,
>
> --
> Kind Regards,
> Aya Saif El-yazal Mahfouz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150330184007.GA2862%40waves.
> For more options, visit https://groups.google.com/d/optout.

