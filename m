X-GM-THRID: 6665843056733847552
X-Received: by 2002:adf:822f:: with SMTP id 44mr928493wrb.2.1552030142747;
        Thu, 07 Mar 2019 23:29:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cd99:: with SMTP id y25ls103885wmj.2.gmail; Thu, 07 Mar
 2019 23:29:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqxLEh+jGHCIuo9EGDXBAftaBLJ5trMrOvYE5J1G91AunKrmTou3xRdauBRBIRJBCb20JLSL
X-Received: by 2002:a05:600c:21c8:: with SMTP id x8mr1316813wmj.14.1552030142014;
        Thu, 07 Mar 2019 23:29:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552030142; cv=none;
        d=google.com; s=arc-20160816;
        b=zO4isVBtpENa63K5C6NR6hkeTQJ4RUnyHZc7YOHXuioJFP/jsPEn0SiKOSuEwWNH4b
         jHab7gfSjGOUsZyOgrpNHP5i6C9sM5o7jDzbUDB0t31kvzlfch62zyVC2NqwH2tcACRJ
         d7ZlsL0H8Ouo3zziLQUqiMR/sKI0EqeiYjfCbE41WBFm2yAkLXEq68QKnbSNY7muIzYc
         AMk7ahjpCAi/dt2twTr5Yt4K1SHoeD5sLntQkNsgHaNSrHDbJJJTZ/EwBftBUDLxiUoc
         T5VjN/qZcYALfk6ozPcUVX2ne8Cx6JkNTFDpl+8j2Kc6P99JpOxHkfqIxNnmhkLNO173
         R6Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fR2J6eHYQFp0sSF5Po3pox8XDQr6+cgsFueKG6w39yE=;
        b=zVFdFIoWWZhBSHo9dtYLoRT5cBfngHOnKghkUMwXoYWiowMix+3NGF1y14pJFUv3so
         dDKIpDIA2LammQrEHlpsxmBirC6scjuu2uGOLjd5dMlj4pwZLoGgAzOatZuqkfDTMXlp
         x5mCP2VTK0Z8rP+mzrNfTgjx1x8TtgveoN0EZu2w5BLmDS83RurrsGraZnk5bENdOsj4
         I6Ia3SaK7Pbfd4a4nhOfiFozRXuIf07GkY74mYMrexzQ/EDIJMMBSTujkLW89PxX4n/a
         zs5tlckC5/n/PTtetc3ozMUs7EQjz2Jdz1s+gOmGYXUukcUqEkvnQF8zC5CXnu3byNZv
         axIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c24si329401wml.0.2019.03.07.23.29.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:29:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,455,1544482800"; 
   d="scan'208";a="372450298"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2019 08:29:01 +0100
Date: Fri, 8 Mar 2019 08:29:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: etsai042@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/4] Staging: most: dim2: Fix
 SPDX-License-Identifier in errors.h
In-Reply-To: <8d797e93-e9be-4122-b9a7-5baa4d41ccf2@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903080828230.5073@hadrien>
References: <20190308031013.7952-1-etsai042@gmail.com> <20190308031013.7952-2-etsai042@gmail.com> <8d797e93-e9be-4122-b9a7-5baa4d41ccf2@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Mar 2019, etsai042@gmail.com wrote:

> Sorry to mess up patch version, I'll revise it.

It's nice to quote what you are responding to, so the reader has some
context beyond the subject line.  Just to remember for next time.

julia

> Wentao
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/8d797e93-e9be-4122-b9a7-
> 5baa4d41ccf2%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

