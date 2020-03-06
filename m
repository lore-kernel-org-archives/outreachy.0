X-GM-THRID: 6800771854723186688
X-Received: by 2002:aa7:c594:: with SMTP id g20mr1485037edq.192.1583477310397;
        Thu, 05 Mar 2020 22:48:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c98d:: with SMTP id c13ls625470edt.0.gmail; Thu, 05 Mar
 2020 22:48:29 -0800 (PST)
X-Google-Smtp-Source: ADFU+vsLPEjQWRfjoCmDOEgOLpG1dtaTqAoiqptsZyh2KlUv5wAkmk5k+DvGGFtqPlg2JlA8JpMB
X-Received: by 2002:a50:f149:: with SMTP id z9mr1541141edl.246.1583477309174;
        Thu, 05 Mar 2020 22:48:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583477309; cv=none;
        d=google.com; s=arc-20160816;
        b=T3DwGlsLb2jDN9t4wEvC84TUdN2HdA77KLjPBfAuaYg9r6vEqdQQ1eMqQso3tXjBe/
         jPp52Slx6dZk+dpbOoSGicUUUS5r6Ho0u+V4gF7vRrMb6VkNV+sbtFgRwA/JkRUBZ2cD
         wSprWsq4Y26IiCWG061+ohtG0m0DGC4I0A+AJoH36ShlJt9jphyrkfHL+yduKtaDTIdW
         AUBQJNWrogmcFiz4OapJM9pObXV75U8g4axW6Q3mq+OtU2VgC913TPzRCjysWej8R/VZ
         1g6/RI8anZ6E3tXrOqC8TKBA1cO1IeBx89NomLfJHg6xsqj5pdTlmF7XpIQL4UUG1wGe
         C6jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=xdV6QfjmCDROzDPgFop5K8hXiJOp9xTBmcIZGkkq3Zw=;
        b=xdoPPX2uHRQyxIg+adzwy4CshXThyHhJ4sTgkZ5NFe+g4p8RBing/i6OIMWPplzMgT
         n41U1FdJpXYoJRlTbWywmKB9cVne2d0HyydfWImVZJ7dm1ZNzmUls+MOPBj9FDwvePSX
         c/+CoVOcHrNKp3Mfr8LLuctoCX4qwAV/Zfd0KFcGtT6yKeqgS0YJRffOXIwTcs53K2j2
         F3u4DG/o6gwc3AhoKZdHxVKYB2l8w+08EoY7h6pS2UC949/tEWm8YhIs8eGBDqnH1YWI
         O2P82hYn0wE+gUlteNV7YirP4SSGFibcEfUNPiorYX6XigVgrYdakzWdfVtl3NWGVHCP
         pahg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h10si88842edn.1.2020.03.05.22.48.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2020 22:48:29 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,521,1574118000"; 
   d="scan'208";a="439077391"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2020 07:48:28 +0100
Date: Fri, 6 Mar 2020 07:48:21 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Issue with checkpatch.pl
In-Reply-To: <CANTOzWH1FNBWVAuzg8Eu7svt3ZrcWA3NqOhYhGo-xU87J5R_+Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2003060747320.2978@hadrien>
References: <CANTOzWHSNXEXaGo-0e9PUsCFvX5QmsVmfF4qJa3ii=H9Cs+B6A@mail.gmail.com> <20200305182833.GA2106984@kroah.com> <CANTOzWH1FNBWVAuzg8Eu7svt3ZrcWA3NqOhYhGo-xU87J5R_+Q@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-648616398-1583477308=:2978"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-648616398-1583477308=:2978
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 6 Mar 2020, Payal Kshirsagar wrote:

>
>
> On Thu, Mar 5, 2020, 11:58 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Thu, Mar 05, 2020 at 10:37:51PM +0530, Payal Kshirsagar
>       wrote:
>       >         I am trying to find files to cleanup using following
>       command
>       > ~/git/kernels/staging$ perl scripts/checkpatch.pl -f
>       > drivers/staging/android/* | less
>       > and I am getting a prompt as "Must be run from the top-level
>       dir. of a
>       > kernel tree"; I am running the command already from the top
>       level , I am
>       > not understanding how to solve it please help me regarding the
>       same.
>
>       This works for me, are you sure you have a "real" kernel in that
>       location?
>
>       odd.
>
>
> Yes, I am running it in my original kernel.
> Still not getting any solution:)

Maybe you could send a screenshot showing eg the results of ls, cat
.git/config, and your call to checkpatch?

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANTOzWH1FNBWVAuzg8Eu7sv
> t3ZrcWA3NqOhYhGo-xU87J5R_%2BQ%40mail.gmail.com.
>
>
--8323329-648616398-1583477308=:2978--

