X-GM-THRID: 6391116266457792512
X-Received: by 10.25.151.69 with SMTP id z66mr1190216lfd.12.1488090418545;
        Sat, 25 Feb 2017 22:26:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.82 with SMTP id m79ls549723lfg.26.gmail; Sat, 25 Feb
 2017 22:26:57 -0800 (PST)
X-Received: by 10.25.216.74 with SMTP id p71mr1420127lfg.17.1488090417236;
        Sat, 25 Feb 2017 22:26:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h198si427764wmg.1.2017.02.25.22.26.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 22:26:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,207,1484002800"; 
   d="scan'208";a="214734136"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 07:26:55 +0100
Date: Sun, 26 Feb 2017 07:26:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 6/7] staging: sm750fb: Replace NULL
 comparison.
In-Reply-To: <3910855f-4359-4013-8faf-df751d5367cd@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702260726171.2087@hadrien>
References: <cover.1488045682.git.varshar186@gmail.com> <58b1cd6d.c525620a.a8728.d746@mx.google.com> <alpine.DEB.2.20.1702252152590.2179@hadrien> <3910855f-4359-4013-8faf-df751d5367cd@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2114052974-1488090416=:2087"

--8323329-2114052974-1488090416=:2087
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 25 Feb 2017, Varsha Rao wrote:

>
>
> On Sunday, February 26, 2017 at 2:23:18 AM UTC+5:30, Julia Lawall wrote:
>       On Sun, 26 Feb 2017, Varsha Rao wrote:
>
>       > Replaced NULL comparison with pCurrentDviCtrl->pfnInit. This
>       patch fixes
>       > the following checkpatch issue:
>
>       This patch appears to have been sent twice?
>
>     It was out of order, hence I deleted the previous one and sent it again.

You can't delete mail - you send it and it arrives.  Sending it twice is
more confusing than helpful.

julia



>
>     varsha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/3910855f-4359-4013-8faf-
> df751d5367cd%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2114052974-1488090416=:2087--

