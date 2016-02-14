X-GM-THRID: 6250871374774009856
X-Received: by 10.194.19.195 with SMTP id h3mr1113497wje.1.1455434606859;
        Sat, 13 Feb 2016 23:23:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.30 with SMTP id o30ls490044lfi.94.gmail; Sat, 13 Feb
 2016 23:23:26 -0800 (PST)
X-Received: by 10.112.125.99 with SMTP id mp3mr1092803lbb.3.1455434606217;
        Sat, 13 Feb 2016 23:23:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si316563wme.0.2016.02.13.23.23.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 23:23:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,444,1449529200"; 
   d="scan'208";a="164634477"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Feb 2016 08:23:25 +0100
Date: Sun, 14 Feb 2016 08:23:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Remove unused
 macros
In-Reply-To: <fced03a5-0c11-4936-9521-7a69e0624eab@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1602140822400.2039@localhost6.localdomain6>
References: <1455394376-2616-1-git-send-email-bhumirks@gmail.com> <20160213212255.GA5341@kroah.com> <fced03a5-0c11-4936-9521-7a69e0624eab@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1375702498-1455434605=:2039"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1375702498-1455434605=:2039
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 13 Feb 2016, Bhumika Goyal wrote:

> 
> 
> On Sunday, February 14, 2016 at 2:52:56 AM UTC+5:30, gregkh wrote:
>       On Sun, Feb 14, 2016 at 01:42:56AM +0530, Bhumika Goyal wrote:
>       > The macros PlatformAcquireSpinLock and
>       PlatformReleaseSpinLock are not
>       > used anywhere so remove them. Used grep to find occurences.
>       >
>       > Signed-off-by: Bhumika Goyal <bhum...@gmail.com>
>       > ---
>       >  drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 --
>       >  1 file changed, 2 deletions(-)
>       >
>       > diff --git
>       a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
>       b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
>       > index d46d1c7..33eabf4 100644
>       > --- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
>       > +++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
>       > @@ -80,8 +80,6 @@ if ((BTCoexDbgLevel == _bt_dbg_on_)) {\
>       >  #define PlatformProcessHCICommands(...)
>       >  #define PlatformTxBTQueuedPackets(...)
>       >  #define
>       PlatformIndicateBTACLData(...)        (RT_STATUS_SUCCESS)
>       > -#define PlatformAcquireSpinLock(padapter, type)
>       > -#define PlatformReleaseSpinLock(padapter, type)
> 
>       Can you also remove the commented out places where these macros
>       were
>       being called?
>         Yeah sure. I am sending a patchset for that as the comments
>       are in rtl8192u.
>       thanks,

Please set up your mailer so that it makes a difference between the text 
you are responding to and the text that you write,  Your response looks 
like it is coming from Greg.

julia

> 
>       greg k-h
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/fced03a5-0c11-4936-9521
> -7a69e0624eab%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-1375702498-1455434605=:2039--

