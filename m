X-GM-THRID: 6466384589611859968
X-Received: by 10.25.233.92 with SMTP id g89mr441915lfh.22.1505575730287;
        Sat, 16 Sep 2017 08:28:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.153.142 with SMTP id b136ls782869wme.16.gmail; Sat, 16 Sep
 2017 08:28:49 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC54gyVMGn/tO6VbDsrI30uuTnuoHhJ4PQ9qC31Fp/8cahk4fvufQ41vHscJND3WoegIqXL
X-Received: by 10.28.71.131 with SMTP id m3mr620611wmi.19.1505575729143;
        Sat, 16 Sep 2017 08:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505575729; cv=none;
        d=google.com; s=arc-20160816;
        b=s6x2c3sWdrGRVOgy1cc2ebyaOjgalMIPqTfP7N0kYClWWgHbuW/pute1TQ3pe1ayVv
         A3WJ7+LDNWgsWsNYaoVrTgH+6YnWve5pE/yuOLn9XrSWIjz25j32LVdcA0+yEfDeA2OQ
         S/3Ciy/faFWJ8CSQ/9sifeY9lgp3l/Gtw5OxS6kOpi9mpuFqgjG7nj0fQhJQEP/ateSh
         cHn252qxB8Y5yOykksvrcfNZZGxhHnxxU0vJ784UQuo38aRJiXSkmJSBV6UJF4MpIrZM
         HLEh6twgQOnAI+jFFJePn8VHrjBHjYS4Hj8ePEm2tRdAaHejI8CZAob7/Bzz4GJGBcsX
         6v5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=z0XoG8FsWZgqbbv4C2CtVqbx10LkCmHYEK6JDGTtWps=;
        b=mGq4Eea2N2O1HEFAYPpEaOZnlghWEPVJGQo3mnuYSR7FvIKZVVwDI7VyZSgxgxmBGe
         KvRd5tkbJuOQttpX5l4Q/hPet5m4laxaIA3LOk8r7TvretT5mBDZEAWN5IRPVqDVs3WJ
         +QavvGLpNprpnhlnq42Aohkew9Rxyy0aPPl4pHbbl8UrfcnobvA7Um9IsXXWJgbutlqZ
         3TWJaaKnTBwfRxeMUYSpHaLLr+JbDSgHijh4dZA3bV1CnnRYXgAh0zqGw2GR58pwgc+/
         ZLPMF6u5ShJck/LA3CBSrdAAsBhNVWqoaZAkcgqCoP52OZR3pRT/sFoHnd2fIFz6F1C3
         O7TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l133si214325wmb.3.2017.09.16.08.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 08:28:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,403,1500933600"; 
   d="scan'208";a="291388215"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 17:28:48 +0200
Date: Sat, 16 Sep 2017 17:28:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Remove unused variables in
 structure definition
In-Reply-To: <cover.1505572018.git.srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709161728230.1992@hadrien>
References: <cover.1505572018.git.srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Srishti Sharma wrote:

> This patch series attempts to remove unused variables in structure
> variables and the comments associated with them.

Actually, I would say that a structure has fields, not variables.

julia

>
> Srishti Sharma (2):
>   Staging: dgnc: Remove unused variables in structure definition
>   Staging: dgnc: Remove unused variable in structure
>
>  drivers/staging/dgnc/dgnc_driver.h | 15 ---------------
>  1 file changed, 15 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1505572018.git.srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

