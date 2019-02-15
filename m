X-GM-THRID: 6658167413174960128
X-Received: by 2002:a7b:cd83:: with SMTP id y3mr703136wmj.7.1550241609098;
        Fri, 15 Feb 2019 06:40:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a1c3:: with SMTP id v3ls1290478wrv.17.gmail; Fri, 15 Feb
 2019 06:40:08 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZxy3z73rMmtQbctm10qPuvBic8Hmiy7FdOrBb6mQq1QRbzbal6h4Azg8cvYF05s8cmoFgV
X-Received: by 2002:adf:f248:: with SMTP id b8mr590431wrp.9.1550241608133;
        Fri, 15 Feb 2019 06:40:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550241608; cv=none;
        d=google.com; s=arc-20160816;
        b=xFliT23eW82dsEkE3v3e+jmekBoCfRhUQBj+r3me4W6xaLDKwO/euqIh0zi+coPngO
         oQbNw/1PR6Efd5hmSoHDfMM5KiesRNC3vXjvfyps8Q/kLAdJWJBbbl3LOHjhfNsdbxM3
         wsAEtd4H85QmVv4ZJQ6rQk97yzw0O9V2QKZk98DRmoOpxKCjn635D1z/Vdvx+ApV4ARN
         WHd6P3xZBVE/1brOhrPZGkCb7/pyUcR0m/M60k6K44jMSpD7bhEqyxiuqL1aH/sZ1u5w
         RsSBxV8LRf6fTlO4yBupmeSWHln5kzIIGzm5UK9qbtp9wz1xujEJkDCOKYPNoy5aGVN0
         6yOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=B4FztvQeLI838RAMiD0cNyjL2ZWTKh007mxXCCe5Tfg=;
        b=vbKo9VqdeHYXxTkLIJU8uhtbEwckScZsT7JLSnfkPCTmrMM9ZDfuqXDN2LjlbI34Wk
         MG/qno4NqjQcjBtx9VEKwZY7dYHTp4i2z2Jl8naOCjpK35UesB2f8dY6kG4kAVgvimTf
         2pFw1LFpU3hx0kgXkmYIGVJkDJJ46TCuwi8YVS5H4W4aBGFYlByl8jzVDjSawtMluXuW
         YP5a7sI49mTF0pcSwFBJ8KjITVmA0N+TWRQDkJxCWjQxupzx5UJUjbyi+IuIqNkD/Gs0
         mizQfMycMK8zMGHlkWj329oXjWaBzIz5/R8vWjTrPhlP8LvTSN9p0J6uxQPE6CKDXOBv
         DX5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j21si207911wmh.0.2019.02.15.06.40.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Feb 2019 06:40:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,372,1544482800"; 
   d="scan'208";a="369595719"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Feb 2019 15:40:07 +0100
Date: Fri, 15 Feb 2019 15:40:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: supriya supugade <supu024135@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] I didnt get message in log like "I can modify
 the Linux kernel!"
In-Reply-To: <8f0752e6-39e1-4047-8899-19866fdfe045@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1902151537500.3617@hadrien>
References: <8f0752e6-39e1-4047-8899-19866fdfe045@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Feb 2019, supriya supugade wrote:

> I am following the link "https://kernelnewbies.org/FirstKernelPatch"
>
> and modifying the driver in native Linux. I made a change in the
> e1000_main.c file i.e inserted the line
>
> "printk(KERN_DEBUG "I can modify the Linux kernel!\n");" After recompiling
> the kernel and rebooting it, I don't get the
>
> message "I can modify the Linux kernel!\" in the log files on typing "dmesg
> | less". I am getting following error during installing changes.
>
> Makefile:1281: recipe for target '_modinst_' failed
> make[1]: *** [_modinst_] Error 2
> Makefile:296: recipe for target '__build_one_by_one' failed
> make: *** [__build_one_by_one] Error 2
>
> How should I proceed further?
> [IMAGE]
> Feb 11

The application period doesn't start until Monday at 4pm UTC, so you
should hold off on writing to this mailing list until then.

In your case, it looks like you should try compiling your module
independently, to be able to see what the build problem is.

You should also be sure that the driver that you are changing is really
the on used by your machine, but it seems that you have not gottent to
that point yet.

julia


>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/8f0752e6-39e1-4047-8899-
> 19866fdfe045%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

