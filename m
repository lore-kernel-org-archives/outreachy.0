X-GM-THRID: 6375156266607575040
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.46.81.66 with SMTP id b2mr1517286lje.31.1484339425343;
        Fri, 13 Jan 2017 12:30:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.136 with SMTP id 130ls610574ljf.13.gmail; Fri, 13 Jan
 2017 12:30:24 -0800 (PST)
X-Received: by 10.46.22.87 with SMTP id 23mr1920956ljw.7.1484339424792;
        Fri, 13 Jan 2017 12:30:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si216904wmd.0.2017.01.13.12.30.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Jan 2017 12:30:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.33,223,1477954800"; 
   d="scan'208";a="209088541"
Received: from p5093cbd0.dip0.t-ipconnect.de (HELO [192.168.3.159]) ([80.147.203.208])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Jan 2017 21:30:24 +0100
Date: Fri, 13 Jan 2017 21:30:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: AFSHAN MASSARAT <2013ecs09@smvdu.ac.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] can't find 'printk' in log file
In-Reply-To: <f090d5bb-5b40-43b9-9149-fc8da96cd30c@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1701132129460.2279@hadrien>
References: <f090d5bb-5b40-43b9-9149-fc8da96cd30c@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Jan 2017, AFSHAN MASSARAT wrote:

> I'm following the guidelines provided in the "FirstKernelPatch" page. Under
> section "Make a driver change" I don't get the "printk" function in log file
> after typing "dmesg | less" command. I tried making changes to the wireless
> driver "iwlwifi" and its probe function was located at
> git/kernels/staging/drivers/net/wireless/intel/iwlwifi/mvm/scan.c. Can
> anyone help me sort it out?

Perhaps this driver is not installed on your machine.

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/f090d5bb-5b40-43b9-9149-
> fc8da96cd30c%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

