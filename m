X-GM-THRID: 6526226538878205952
X-Received: by 10.80.230.18 with SMTP id y18mr1749772edm.2.1519506475819;
        Sat, 24 Feb 2018 13:07:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.169.98 with SMTP id m31ls4747175edc.0.gmail; Sat, 24 Feb
 2018 13:07:53 -0800 (PST)
X-Google-Smtp-Source: AH8x225IrEgKg6wP0PuqugcW3MIWony1pKKPyf4JUyGPVFpyUPJxghTNEhWdtjgTAZ0dTBB3KW6h
X-Received: by 10.80.202.201 with SMTP id f9mr1742976edi.12.1519506473576;
        Sat, 24 Feb 2018 13:07:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519506473; cv=none;
        d=google.com; s=arc-20160816;
        b=cH6mWzF9hp7ktO2M7aA6cpSd8oyPTDH3XON3PzxFH4ZWUGsw7r29dKPmGUjdcG+Bdu
         ZDAb+Km4AHtkXrBFJOsX0R1hMPuW88Cf/mQct7RE573ot46/JRLTFuE+wHB0HKXGk/hq
         d6chr3o8mJI2stB2JVQeKrppouXMI01HDotwW8iE5q6zXyKQE4gGTs9qUxKJQAppZRzd
         TlFZ3oz4h5SyWU8y+aMwxibWt02/E5p5VDwkhfEFVCUPnQO/ud0i2EHtBfFsLFqZb/sr
         ekrWEUWWiFDPPShe/zO+rXihUbjomCFfgPvXox6c03esCmmK5B19ueYSAOrY79f5YHYw
         2pdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=SLqMoZyKSMVCTLA/zonEihuFxPqix/m71Bfk/L3lvAE=;
        b=wWIP6CQvocEEzwZUkcXqDMKcQTS0kC/m79Slp3xOFPq7x995nVuLHLGk564SK0obeT
         kZOKg7ixv9zh7ErzI5ZbdNWvGwDkFtReDvbBXNfhsQbZIoB0+6hhmogTr+KA3oaogHUY
         QzMjQlQ5cLTWYBYzc6iiC0WyzKfJu9sb97g5C1FPdRzreM4ONtvYwlI9tZyPeJbOr0Ah
         Yp14PIbr+AbacSwmgNAnJ+zmQPJo2Tm7ul5cT9uPBEh6z+/Jmj5qRQkSqTjDTqcUPNBE
         PUqLZmjO6Bk5Qan0MItafRdIWys6YZPy5fZ5ZS/OrCtIIbn3j6uc2qBmHiZLnxSOe6Ah
         xJiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t4si247546edt.2.2018.02.24.13.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 13:07:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,389,1515452400"; 
   d="scan'208";a="315154165"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2018 22:07:53 +0100
Date: Sat, 24 Feb 2018 22:07:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Hetavi (Haley) Shah" <hashah@crimson.ua.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: use structure pointer to
 get the size of the structure
In-Reply-To: <CANfc03LXBghmpVRbbi=qdiMS=cnhcN64Ctifz4w+ib5p9LWfTg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1802242205170.3243@hadrien>
References: <1519505516-10389-1-git-send-email-santhameena13@gmail.com> <CANfc03LXBghmpVRbbi=qdiMS=cnhcN64Ctifz4w+ib5p9LWfTg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1782219197-1519506473=:3243"

--8323329-1782219197-1519506473=:3243
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 24 Feb 2018, Hetavi (Haley) Shah wrote:

> Hello,
> I have recently found out about this project and would like to make some
> contributions. 
>
> May I know what is the first contribution that I can start with?

Please start by reading and working through the tutorial that is linked to
in the outreachy page: https://kernelnewbies.org/Outreachyfirstpatch

Also, please don't respond to random mails with questions about other
topics.  It is particularly confusing to see a mail that has a PATCH
subject line and is not a patch.

julia
--8323329-1782219197-1519506473=:3243--

