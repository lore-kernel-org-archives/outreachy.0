X-GM-THRID: 6658167413174960128
X-Received: by 2002:a1c:dc82:: with SMTP id t124mr345404wmg.0.1550592296320;
        Tue, 19 Feb 2019 08:04:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e9c6:: with SMTP id l6ls3417738wrn.14.gmail; Tue, 19 Feb
 2019 08:04:55 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZc61QAnxskv1MRJQ4Gryj0iW6F11fy9UyG0sNx2VZQMc1JdfrvIcLNclethXIhEp87YWM2
X-Received: by 2002:adf:dece:: with SMTP id i14mr1492309wrn.3.1550592295491;
        Tue, 19 Feb 2019 08:04:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550592295; cv=none;
        d=google.com; s=arc-20160816;
        b=vQk5LzFey677V1Bpp2xb9ozRk0cyHW6GURbhXSZt9+iHriP8N0sDfXTuQAQV8gZ4wD
         j0cjsTPqRe7RfsU7con5heEElNFagwXu31TWpsWOdqSXNNiBeQhl//UmvItlqQ+MvNVN
         KNA01fDFDJK8d3WPfSKBqV0A5yMoYeVYV4YK/cZmm+OPi+a7tSoqOMlJu/t+ggMXDEPH
         guyXULJ0JRVpW40X3q0Hf5t+KmuXF5H0ef/eh4LxQyJf/ENme/j54UN5qY+Q5nFUKuDu
         NJ0kUa0OFgiooVuQRY614+Tja6RKiqCO3FdQArVy0qF/cMs2a8O7iPjWs20q2LYT/pLi
         FFoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JIDl7KZZfh5SwLqhL7KuCJ+sMlmqtrJU5iC1JrZ7l3Y=;
        b=nAAqqt7yOHNI+I2qmiMyLW1i/9jp3HPeBBKzSX6ggSIOO0U78ZC3Eya+FqRelTQ0Zb
         wsMKaunyLHICVvFVKBkSd1BvbFVhrhV0LaFxFeweoYV6nvINDcgMuz63IUPfAnc7+UIe
         Q3m7ic51A9MLg6rjuduHgl8/sxYp/9d5q9KE/UT3FU4lMgcdQYRM9JtWkuJsKJ/9l4P5
         BIMITFBlAAkA/CFVdefTCZ+G/QH6KXUJXck7Wh9q/fzSEc/quwD77uDgnG6NwJ1p/K9F
         arpSljI410VMM0JxtGcy1dW0WLDywAyqPz7ZxRkTt4MQZOeUaiht9yCpnbOCn3DwKuV7
         Yh4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t2si780999wrn.3.2019.02.19.08.04.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 08:04:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,388,1544482800"; 
   d="scan'208";a="370054244"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2019 17:04:55 +0100
Date: Tue, 19 Feb 2019 17:04:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshu Jha <himanshujha199640@gmail.com>
cc: supriya supugade <supu024135@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] I didnt get message in log like "I can modify
 the Linux kernel!"
In-Reply-To: <20190219155942.GB18454@himanshu-Vostro-3559>
Message-ID: <alpine.DEB.2.20.1902191703400.3588@hadrien>
References: <8f0752e6-39e1-4047-8899-19866fdfe045@googlegroups.com> <20190219155942.GB18454@himanshu-Vostro-3559>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Feb 2019, Himanshu Jha wrote:

> On Fri, Feb 15, 2019 at 02:10:04AM -0800, supriya supugade wrote:
> >
> > I am following the link "https://kernelnewbies.org/FirstKernelPatch"
> >
> > and modifying the driver in native Linux. I made a change in the
> > e1000_main.c file i.e inserted the line
> >
> > "printk(KERN_DEBUG "I can modify the Linux kernel!\n");" After recompiling
> > the kernel and rebooting it, I don't get the
> >
> > message "I can modify the Linux kernel!\" in the log files on typing "dmesg
> > | less". I am getting following error during installing changes.
> >
> > Makefile:1281: recipe for target '_modinst_' failed
> > make[1]: *** [_modinst_] Error 2
> > Makefile:296: recipe for target '__build_one_by_one' failed
> > make: *** [__build_one_by_one] Error 2
> >
> > How should I proceed further?
>
> Post your .config and full logs using pastebin.
>
> I saw one more fellow struggling with this on kernelnewbies.

Did you see the discussion here:

https://www.linuxquestions.org/questions/linux-software-2/kernel-building-install-error-4175608377/

It concludes with:

I suggest you go through the building process in separate steps instead of
"make ... install" in one go.

julia

>
>
> --
> Himanshu Jha
> Undergraduate Student
> Department of Electronics & Communication
> Guru Tegh Bahadur Institute of Technology
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190219155942.GB18454%40himanshu-Vostro-3559.
> For more options, visit https://groups.google.com/d/optout.
>

