X-GM-THRID: 6801392738100051968
X-Received: by 2002:a05:600c:21d6:: with SMTP id x22mr683417wmj.95.1586240765554;
        Mon, 06 Apr 2020 23:26:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:96d2:: with SMTP id y201ls1730569wmd.2.gmail; Mon, 06
 Apr 2020 23:26:04 -0700 (PDT)
X-Google-Smtp-Source: APiQypLc8a+DR5aMUiFsYquYZxxVKtIj5zJw5aqhAyZQ25BHPgt0jHgDcG08jvwPiGME0o6mgQ1k
X-Received: by 2002:a1c:a344:: with SMTP id m65mr700879wme.20.1586240764015;
        Mon, 06 Apr 2020 23:26:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586240764; cv=none;
        d=google.com; s=arc-20160816;
        b=Ecb0dG5Ilqa3TkBp3Tq4H5BYZCui4ssdE3+M9sAoash5V402O8PwnRuqMvlNDI+aIH
         /QYG//ApWbDNQkKhtkl/Xzr1CDGE8oa1byrPKFDV2lwuDb0iVC+VOMsSJPJJgHH4iU/1
         GCYZyl23BF6xf4FW4cnlSfQTTBiW/9CGqfGgbxhfHXs54G3jTD9wPMOdBvCH0+908K+K
         yE614qV05RClEq0z8sXgppg3k8M0yVIZaG4csI0p3EGyCWt+hCjYphnzyqW0ZCAFSuYs
         WlwWiFm44A9LqGVTwNdha7LrOM0MuBCOJbsqqN/1kUVOsR97Djra7z1YkNeV80L51L9U
         lTrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=FxhA664WHUVjiXlLgSqKb6iKYvetMJZHo1JOrCrWb1M=;
        b=LVj4L8PT5VKP3r8LA5oHSQ46kmAMdz4nI9oRagzA0kPtqAHzviXfwz/6YzjaEM2sHH
         lrPNiLLfA5FPBY/a5QKwsyFkgIM6D4UCGqRH9XP4HEOCy6G9B4EFKD4vFhFc448knUPf
         8JJnYEVBYG4uUx2FB5oGcBtbZSN1JBKoFX9oEfmtSATK0ei2PRQt4IJM/2ADkHj6UK2v
         +DggaH9nJvwBr/pV3FA/mfIyyZhm0lUDuMvmQCw8NNZ8sIdQXuAQDS8aeoDt+IiQbZBK
         BLR6piAumoqeqnn2E26rN4c2tWGFsMn6Pa8Zr1u/JL0FzTiOAvg+AfGwIUlkILVd80Vw
         YWdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o125si125397wme.4.2020.04.06.23.26.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Apr 2020 23:26:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,353,1580770800"; 
   d="scan'208";a="345181234"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Apr 2020 08:26:03 +0200
Date: Tue, 7 Apr 2020 08:26:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Need help using coccinelle
In-Reply-To: <20200407022453.GA1720@tulip.local>
Message-ID: <alpine.DEB.2.21.2004070824260.2982@hadrien>
References: <284f12c6-c1ab-4f1f-a325-569a7b8bfc1c@googlegroups.com> <alpine.DEB.2.21.2003071102220.2483@hadrien> <20200407022453.GA1720@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Apr 2020, R Veera Kumar wrote:

> Hi Julia,
>
> I am trying to use coccinelle.
>
> It is nice to know, you are one of the author of it.
>
> Built coccinelle-1.0.8 downloaded from github site as link in inria.fr gives
> HTTP 404 not found.
>
> Please see the configure.log in attachment for the build.
>
> make coccicheck MODE=report is working.
>
> But
>
> make coccicheck DEBUG_FILE=/tmp/b2.log MODE=context
> M=drivers/staging/rtl8723bs |& tee ~/tmp/log/cocci-context-rtl8723bs.log
>
> make coccicheck DEBUG_FILE=/tmp/b3.log MODE=patch
> M=drivers/staging/rtl8723bs |& tee ~/tmp/log/cocci-patch-rtl8723bs.log
>
> are giving errors
>
> coccicheck failed
> make: *** [Makefile:1761: coccicheck] Error 255
>
> It is not with just drivers/staging/rtl8723bs.
>
> Am attaching the log files as well.
>
> Those DEBUG_FILE's have this in end:
> virtual rule context not supported
> virtual rule patch not supported
>
> Is it that something missing from my build system for their support?

No.  Make coccicheck is supposed to fail gracefully when a semantic patch
doesn't support the mode that you have provided.  I will try to find out
why that is not working.  Please try with no mode at all.  It is possible
that that will favor the patch case and fall back to the report case.

julia

