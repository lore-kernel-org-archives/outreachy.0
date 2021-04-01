X-GM-THRID: 6945672657015668736
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a2e:bc0a:: with SMTP id b10mr4556280ljf.231.1617262495420;
        Thu, 01 Apr 2021 00:34:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a409:: with SMTP id p9ls1098513ljn.0.gmail; Thu, 01 Apr
 2021 00:34:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLmYMunt3GZwX48qzEFy7fC3oIb9RWGubkjGrp+lhgX2I4a8LZEIPYPuNwGlBDWmRtBxak
X-Received: by 2002:a2e:300d:: with SMTP id w13mr4720555ljw.199.1617262493522;
        Thu, 01 Apr 2021 00:34:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617262493; cv=none;
        d=google.com; s=arc-20160816;
        b=cmvJXMaKj0AH+l2JsN9SuN3c+mMSHVthNz6GVNb+zf3eYDb1XHiJuAzOGglG3EqDsa
         jrFA9sHohYCLi++WGT9I/BfdheqpnjOz+3FOKy/AaffZQc47s0n0a+4CYMoLos4Ff0LZ
         AXubvXnu5bdOc5OvPlJ/xypBeIVBkmW+u4AHT406DRWZnS8R9f6Q8xru1CndjX7yh3hX
         YD4k8MxDR/gCM1K5nZYeY6+kXKrZQ7UEnWshCFx4yWS4DgAOEjG6eF7sisH17gYLXOI2
         F/WpO9uf1kNv0bf/z79rOJ2p+tHT+srDK1cOV7yDSTax/m/5+DzaobcMVqW/YKZE/yGL
         GXYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=6sqOv+Z310f8xNe9iluraYLoQqY/BVAV43aQIpV7v08=;
        b=oo6JgQtcR8C5ie2NWbJPj6ZysUYV9xW0coZGnFbWC18RtZBByqS0M5jQiWm97yShhR
         y8SEVG1tLrjfGO3lSUIpuP+btRgT60mtMXIvtQu/ijFPW8l/6zox9LFFrQTqBgcgtXA9
         GwgZvzovEc8D5QMLhJeBGBcqlrPXkpdrHSrjo4OGTUflhqSaKWKrjg7IwQ2MAiR9WXFB
         TL8jVxMZa19igErD0Q8wlYappTYhJ/CVaGUBhePkUz4byWAwbdPvs5KsuLiPSvHhicdD
         8ieAwA7c4+vz4vD/JexVTduclJReWKSK8YMy3I1JuKHqf1PABpDVnAIzr0ZGanAmD+eB
         7g5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v26si323488lfo.2.2021.04.01.00.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 00:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ASN73Aav0fWZ1C1Cbk0HzlW9K7skDl9V00zAX?=
 =?us-ascii?q?/kB9WHVpW+afkN2jm+le6A/shF8qKRUdsP2JJaXoexjh3LFv5415B92fdSng/F?=
 =?us-ascii?q?ClNYRzqbblqgeAJwTb1spwkZhtaLJ/DtqYNykese/f7BOjG9gthPmrmZrJuc7k?=
 =?us-ascii?q?w31gTR5nZshbhm9EIz2WHUFsSA5NCYBRLuv+2uN8uzGidX4LB/7UOlA5WYH4y+?=
 =?us-ascii?q?HjqIjrelovCRIh9WC1/FGVwY+/Ilyj0hASXygn+9of2GLO+jaX2pme?=
X-IronPort-AV: E=Sophos;i="5.81,296,1610406000"; 
   d="scan'208";a="377468720"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2021 09:34:23 +0200
Date: Thu, 1 Apr 2021 09:34:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Edith Puclla <edithpuclla20@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Modifying a driver on native Linux - which
 file should I modify?
In-Reply-To: <6f63edb0-7bf7-442e-8027-04df9e7d6e58n@googlegroups.com>
Message-ID: <alpine.DEB.2.22.394.2104010933400.2908@hadrien>
References: <7735e765-8b0e-415b-9630-ffa2b4f74a91n@googlegroups.com> <20210331044853.GU351017@casper.infradead.org> <6f63edb0-7bf7-442e-8027-04df9e7d6e58n@googlegroups.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-304171139-1617262463=:2908"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-304171139-1617262463=:2908
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 31 Mar 2021, Edith Puclla wrote:

> Thank you, what I understand is that I could modify xhci.c for example,
> adding a  printk, the idea is to add a change, compile the kernel and then
> reset the changes. Is what I understand form the tutorial, let me know if I
> am wrong.

Please do not top post.  Put your comment under the comment you are
replying to, so that the person looking at the message can understand the
context.

julia

> El martes, 30 de marzo de 2021 a las 23:49:03 UTC-5, Matthew Wilcox
> escribió:
>       On Tue, Mar 30, 2021 at 09:37:15PM -0700, Edith Puclla wrote:
>       > Hello Everyone, I am Edith from Peru, and I started to compile
>       the Linux
>       > kernel.
>       >
>       > I am following this
>       > guide:https://kernelnewbies.org/Outreachyfirstpatch?action=show&redirect=OPWfirst
>       patch#kernel-setup-done
>       > *Section*: Modifying a driver on native Linux
>       >
>       > I chose to modify this driver: *xhci-hcd* but I can't find the
>       file to add
>       > a print printk(KERN_DEBUG "I can modify the Linux kernel!\n").
>       >
>       > I look at all the files located in the same path of the
>       Makefile after
>       > executing: git grep xhci-hcd -- '*Makefile'
>       >
>       > Could you please tell me which file could I modify for that
>       driver?
>
>       The Linux Makefiles are written in a rather terse way that isn't
>       necessarily the easiest to understand for someone who's not
>       familiar
>       with them.
>
>       $ git grep xhci-hcd -- '*Makefile'
>       drivers/usb/host/Makefile:xhci-hcd-y := xhci.o xhci-mem.o
>       xhci-ext-caps.o
>       drivers/usb/host/Makefile:xhci-hcd-y += xhci-ring.o xhci-hub.o
>       xhci-dbg.o
>       drivers/usb/host/Makefile:xhci-hcd-y += xhci-trace.o
>       drivers/usb/host/Makefile: xhci-hcd-y += xhci-dbgcap.o
>       xhci-dbgtty.o
>       drivers/usb/host/Makefile: xhci-hcd-y += xhci-debugfs.o
>       drivers/usb/host/Makefile:obj-$(CONFIG_USB_XHCI_HCD) +=
>       xhci-hcd.o
>
>       'xhci-hcd-y' is the list of .o files which make up the final
>       link step
>       to make xhci-hcd.o. Is that enough information for you to figure
>       out
>       which file to modify?
>
>       (I'm trying to get you past the immediate problem you're
>       hitting, which
>       isn't terribly important, without just giving you the answer)
>
>       The other thing you can do is build the kernel with 'make V=1',
>       which tells
>       you what the build system is doing instead of the shortened
>       output.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/6f63edb0-7bf7-442e-8027-
> 04df9e7d6e58n%40googlegroups.com.
>
>
--8323329-304171139-1617262463=:2908--

