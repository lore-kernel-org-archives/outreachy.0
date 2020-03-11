X-GM-THRID: 6802769340290564096
X-Received: by 2002:a2e:964e:: with SMTP id z14mr1191096ljh.44.1583907916509;
        Tue, 10 Mar 2020 23:25:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58c6:: with SMTP id u6ls130529lfo.11.gmail; Tue, 10 Mar
 2020 23:25:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv1Ej7k7JUVMKGcecANc7Py1MV3BKnxMnLlaIAMWTQpbKB43UUVYB/dGolpXfdUSj/K4ETe
X-Received: by 2002:a19:6f44:: with SMTP id n4mr1113887lfk.59.1583907914653;
        Tue, 10 Mar 2020 23:25:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583907914; cv=none;
        d=google.com; s=arc-20160816;
        b=lVjZ+X8xMfz2oA1DClGyvp53xs1XA81kJQGezb7W/3HxgK60sNVhnllQ7njfjiuH/e
         WQHwe5dSXDWXGIdn5JRt4jbsWUovWhNmlpPPQU1tVYzwHiEoEhblOxIismlqKUJa5/wy
         3hzCBUohs+0baUIFhVwEEGd7LuuYwlnLXBOBm7laR2blMoayk6WDNH4HRwIxk3DeawlZ
         2uVu4bANpYXZwMBiFEsswwuvTnnu2YOPtHfTe7HPxWjbFuxpVfmexldxr+qQZx8YLbf2
         FpGrHLGuNpq749hEhSKeFb8dUVbe6R8rCY7uKUz8BinqaKlld/3cwH/QOr8yw+yLD0pR
         kVBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=h+Oz5Di+NpNjlewJ9BZoGFH6a+ycnliX4aE8ujSYPps=;
        b=Wii3VuG7EoQM2UbRLySDDpGA42oPpKmmb9qOlT7gtlDmHA/9hcXacVNQBTbBRr2ZnV
         qcUlWCQfjFjQ2rh+ap7LGkXI2M+XsnLaIotYVTFpU2yXrNCq5VSovu9NYJnBQwMe6ev4
         TwzyP8TJ7qXt5V8qu2e4fT0JAjc5PShXpkp3vzQO6ExCnQhrzjjDM+/6vGAKrUDJGGMo
         A9mf7scQC9I+okyJ1yhygys7liwZw64CcqW82yBPOEn91MDv/sNaeJd/aih+sXhIcodJ
         q9QCm4aDTxdK+ASKf25b+m42zf02BJgx2shW6uS1HbmKj79qsLfoKqj2XGtQEmKSHh8o
         yIkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o24si59917lji.4.2020.03.10.23.25.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 23:25:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,539,1574118000"; 
   d="scan'208";a="341952630"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 07:25:13 +0100
Date: Wed, 11 Mar 2020 07:25:13 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumyajit Deb <debsoumyajit100@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Question regarding installation of kernel
In-Reply-To: <CAMS7mKA1m5JEVhNB+fwytLF3JgFYb-8C9xD9DjOmXm52omC4NQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2003110724100.2439@hadrien>
References: <CAMS7mKA1m5JEVhNB+fwytLF3JgFYb-8C9xD9DjOmXm52omC4NQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1888114351-1583907913=:2439"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1888114351-1583907913=:2439
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 11 Mar 2020, Soumyajit Deb wrote:

> Hii
> This is my first mail to the outreachy-kernel list. I am Soumyajit Deb.
> I am currently following the first patch tutorial and accordingly I have
> downloaded the Kernel source tree.
>  I have doubt whether I have to build the kernel source code I have
> downloaded as I am using ubuntu already?

You should start with modifying a driver in the kernel you downloaded and
checking that it is executed.  For that you will need to compile and
install the kernel you downloaded.

For cleanup patches, you just need to compile the kernel to be sure that
nothing breaks.

julia


>
> Thank you
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAMS7mKA1m5JEVhNB%2Bfwyt
> LF3JgFYb-8C9xD9DjOmXm52omC4NQ%40mail.gmail.com.
>
>
--8323329-1888114351-1583907913=:2439--

