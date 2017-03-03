X-GM-THRID: 6393296356207755264
X-Received: by 10.25.203.151 with SMTP id b145mr491131lfg.17.1488555529866;
        Fri, 03 Mar 2017 07:38:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.83 with SMTP id 19ls991929ljv.49.gmail; Fri, 03 Mar 2017
 07:38:49 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr581530ljd.16.1488555529132;
        Fri, 03 Mar 2017 07:38:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h62si171464wme.2.2017.03.03.07.38.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:38:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,237,1484002800"; 
   d="scan'208";a="263023702"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 16:38:36 +0100
Date: Fri, 3 Mar 2017 16:38:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, david.kershner@unisys.com, 
    sparmaintainer@unisys.com, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net, 
    florian.c.schilhabel@googlemail.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2 0/3] Replace "the the " with
 "the"
In-Reply-To: <1c412adb-4f88-47e2-aa29-016e62fc882a@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703031638170.3490@hadrien>
References: <1488555300-9140-1-git-send-email-singhalsimran0@gmail.com> <cd698db9-81f1-482c-90e7-f31bac89df7f@googlegroups.com> <1c412adb-4f88-47e2-aa29-016e62fc882a@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1717363403-1488555505=:3490"

--8323329-1717363403-1488555505=:3490
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 3 Mar 2017, SIMRAN SINGHAL wrote:

> Please ignore this patch as on this wrong version is written.

What is wrong?

julia

>
> On Friday, March 3, 2017 at 9:06:52 PM UTC+5:30, SIMRAN SINGHAL wrote:
>       Please ignore this patch as on this wrong version is written.
>
>       On Friday, March 3, 2017 at 9:05:05 PM UTC+5:30, SIMRAN SINGHAL
>       wrote:
>             This patch series replace "the the " with "the" in
>             various drivers.
>
>             v2:
>               -Adding cover-letter for the series.
>
>             simran singhal (3):
>               staging: wlan-ng: Replace "the the " with "the"
>               staging: rtl8192u: Replace "the the " with "the"
>               staging: unisys: Replace "the the " with "the"
>
>              drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c |
>             2 +-
>              drivers/staging/unisys/visorbus/visorbus_main.c   |
>             2 +-
>              drivers/staging/wlan-ng/prism2sta.c               |
>             2 +-
>              3 files changed, 3 insertions(+), 3 deletions(-)
>
>             --
>             2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1c412adb-4f88-47e2-aa29-
> 016e62fc882a%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1717363403-1488555505=:3490--

