X-GM-THRID: 6395900241087823872
X-Received: by 10.25.0.141 with SMTP id 135mr2730734lfa.5.1489170145643;
        Fri, 10 Mar 2017 10:22:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls1069238lja.0.gmail; Fri, 10 Mar
 2017 10:22:25 -0800 (PST)
X-Received: by 10.25.223.67 with SMTP id q3mr2772113lfj.1.1489170145196;
        Fri, 10 Mar 2017 10:22:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si26147wmg.0.2017.03.10.10.22.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:22:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,142,1486422000"; 
   d="scan'208";a="216340345"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 19:22:24 +0100
Date: Fri, 10 Mar 2017 19:22:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/4] staging: rtl8712: Refactor
 conditionals
In-Reply-To: <cover.1489161001.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703101921330.3356@hadrien>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Narcisa Ana Maria Vasile wrote:

> This patchset reduces indentation level by refactoring conditionals.

Refactor is a very vague word.  It could be ok for the subject line, but
the log message should give more detail.

julia


> The patches were done using Cocinelle.
>
> Narcisa Ana Maria Vasile (4):
>   staging: rtl8712: Refactor conditionals in wpa_set_encryption
>   staging: rtl8712: Refactor conditional in r8711_wx_get_freq
>   staging: rtl8712: Refactor conditionals in r8711_wx_get_rate
>   staging: rtl8712: Refactor conditional in r871x_get_ap_info
>
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 142 +++++++++++++-------------
>  1 file changed, 70 insertions(+), 72 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1489161001.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

