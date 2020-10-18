X-GM-THRID: 6885043430736527360
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a05:6402:1c1b:: with SMTP id ck27mr15039710edb.218.1603052100036;
        Sun, 18 Oct 2020 13:15:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:848:: with SMTP id f8ls2566578ejd.4.gmail; Sun, 18
 Oct 2020 13:14:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz8NDwxM/Wge95rq+QwBVLY03hgfQe6IpXp96/s0waqnZlMh53LAQYt98kxOdt3ZKHfbLIw
X-Received: by 2002:a17:906:4cc2:: with SMTP id q2mr14670128ejt.422.1603052097613;
        Sun, 18 Oct 2020 13:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603052097; cv=none;
        d=google.com; s=arc-20160816;
        b=N1rOUW/bFR+C3i8Hjep35c+JniaLATO4BbzWJp1v/B/IyLB3UEnPqKLQaEmDX0xtQ4
         QqWH+N60u7pBoSUNErKcqa6DkAa/NHLRhNKPH21XRi/oZVXnLAIZ/yLqqX4pSpP8iTyp
         R5i//BpdqBreULkaFFdif8BzAxE7ZliVp6+qw3bWUKAqwDVwThtBPpIOEzWq8AMcCjrd
         WtD9MJBZ/l1CjbBv1B6ILwSIVPJWSfvUH/r2mYXzVUpDpMPxPuXHK55NUcvkBBZwGZeL
         aEQsIeX/VCjBEhiPRR5yF7BZOHLUeNP5gJ3h3Vm9C1gFL9kK638DZol6UtI9JGXyvnNR
         QwJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:mime-version:user-agent:references:message-id
         :in-reply-to:subject:cc:to:from:date;
        bh=X7q29yHjVrkCCbYykl5YTquwLw66nLgp69+GBiaEvRE=;
        b=EOJDDAQdfjNwGt8QuEDwjaInB0NqGP/CMVdmyzj+39i1XrkCR5SAH0z1GXzDYHKeci
         pO37OLAu8BHJ7brdZjZ1Cfqm7tfkcWpGH52hLwEFcAv0Y0xSDRpIMcHlkk2KM2dAXE1/
         lp0Zwf73NwC4iO5GOe6njkYBOVA98+VBInXwQrWeOHlDPVQS/QEgvJK2M+w9peOU4nAt
         CeTX75zyIT3KEIcxkSgbymKFivGQuvnJnuowpTOIggqKUymItrfvNN8j4ohxrFvH1flW
         5dbDQOBpLbweKBkJtHX6or8T+U+skUE6xMXhh3Yy9KYptW5SU5GddJVwLE9+a6K0BIXY
         kxmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id lf25si375326ejb.0.2020.10.18.13.14.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2020 13:14:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,392,1596492000"; 
   d="scan'208";a="473180780"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2020 22:14:57 +0200
Date: Sun, 18 Oct 2020 22:14:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Izabela Bakollari <izabela.bakollari@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Need help with checkpatch.pl
In-Reply-To: <935594dd-9aaa-4fe6-8200-9ddcb2c7eb8dn@googlegroups.com>
Message-ID: <alpine.DEB.2.22.394.2010182146010.2759@hadrien>
References: <935594dd-9aaa-4fe6-8200-9ddcb2c7eb8dn@googlegroups.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-5807810-1603052015=:2759"
Content-ID: <alpine.DEB.2.22.394.2010182214100.2759@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-5807810-1603052015=:2759
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.22.394.2010182214101.2759@hadrien>



On Sun, 18 Oct 2020, Izabela Bakollari wrote:

> Hi,
>
> When� I run checkpatch.pl, I come across an error message.
>
> perl scripts/checkpatch.pl -f drivers/staging/wfx/* | less
>
> Checkpatch.pl is giving me this error:
>
> Global symbol "$gitroot" requires explicit package name (did you forget to
> declare "my $gitroot"?) at scripts/checkpatch.pl line 980.
> Execution of scripts/checkpatch.pl aborted due to compilation errors.
>
> Can you please tell me if I am missing something?

I tried your command and didn't get the error you are describing.  I get
some messages about a module names ply, but I also get checkpatch
warnings.  Your drivers directory is a subdirectory of a linux kernel that
you obtained with git clone?

julia


>
> Thank you,
> Izabela
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/935594dd-9aaa-4fe6-8200-
> 9ddcb2c7eb8dn%40googlegroups.com.
>
>
--8323329-5807810-1603052015=:2759--

