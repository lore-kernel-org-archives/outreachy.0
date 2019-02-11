X-GM-THRID: 6656651051112857600
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a7b:c8d0:: with SMTP id f16mr628932wml.16.1549872692089;
        Mon, 11 Feb 2019 00:11:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fb8c:: with SMTP id a12ls2328150wrr.2.gmail; Mon, 11 Feb
 2019 00:11:30 -0800 (PST)
X-Google-Smtp-Source: AHgI3IanknaizlBOibOgkCDNDihsv88/tf4VT7AX/sXkDlrrPBLuYgv7ilbttiuBheN5JSI6UIW5
X-Received: by 2002:adf:f5c8:: with SMTP id k8mr1613419wrp.26.1549872690532;
        Mon, 11 Feb 2019 00:11:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1549872690; cv=none;
        d=google.com; s=arc-20160816;
        b=CvmikS0li6UsU3G6J8L64O3eMrnQZ4BxaA2CwZG4d2sa1QF6oeQIwsu4VKiREVRPZ1
         qKA0NzDqyS+r6SFZMzbo4BaXQWuJSWv1IbgNyMZPogWanjuIe73KmqRTBWlDQ5F2+6Wp
         Tp+wpV+DsfVLnem31McCsYIsS2ccYZUOfFDdFA6/yn53tUFpi9hxK1MiKuRXKPejFAcF
         hoCjal72O3IC5jjrMiUannrKF6FdX9cLZLVK2aFMgfq3wr7TLY9S67GN+OSYqlRWgNt4
         noe5fkyT5Xqi4dfrveojq3hwaWKFP7z2c5XMJO/VB9jD+m1w1wkD4pdDFaLBdwONgbUi
         S3rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=b5J9rkiKASk3y2FKm0+Qw81xn6Sf+qh7GckLM9S+8rE=;
        b=uEBdonbZUORGm6QyM0gMgUEtkMxi3ypTPCy7hBjUm6PijGvHZLPSu2NJwHpfx9OTcE
         B8pkWZVFLeb0Hu43Nh+1QJGzh9/49fA4NJVEGxp3h0qjjisElI2rZ+t7JYLHzWEAStn7
         bP6yB2taRhpkvQydV42nEN34AlKgIvm+52D1eeI5Xq5FICjHUAtxZTf58XvUDLT4E3d5
         y2nUb+x/WzUvOJ6Lsqq1qoznY0nqwqkpCsalkeRWGEasW0cRdg5EP9wS1w5UMwJMvCI2
         MNoQBHJSRPtOs6W4lLcTx99pDIE1vrVLFYyq8YqK3waee1+JuQJVg19e7jeemeDBC5wy
         NBvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c12si392521wrn.5.2019.02.11.00.11.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Feb 2019 00:11:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,358,1544482800"; 
   d="scan'208";a="295727237"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Feb 2019 09:11:30 +0100
Date: Mon, 11 Feb 2019 09:11:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: afshanmassarat@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] I don't get the message ,"I can modify the
 Linux kernel!\n" in log files
In-Reply-To: <93b12a4e-5839-45ad-982d-76682ab53098@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1902110909180.2626@hadrien>
References: <93b12a4e-5839-45ad-982d-76682ab53098@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Feb 2019, afshanmassarat@gmail.com wrote:

> I am following the link"https://kernelnewbies.org/Outreachyfirstpatch?action=show&redirect=OPWfirs
> tpatch#kernel-setup-
>
> done" and modifying the driver in native Linux. I made a change in the
> e1000_main.c file i.e inserted the line
>
> "printk(KERN_DEBUG "I can modify the Linux kernel!\n");" After recompiling
> the kernel and rebooting it, I don't get the message
>
> "I can modify the Linux kernel!\" in the log files on typing "dmesg | less".
> How should I proceed further?

Perhaps e1000_main.c is not actually part of a driver that is used on your
machine?

Actually, this list should not be used until the application period
starts, which is one week from today.

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/93b12a4e-5839-45ad-982d-
> 76682ab53098%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

