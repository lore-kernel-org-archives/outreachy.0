X-GM-THRID: 6200282727557627904
X-Received: by 10.152.163.65 with SMTP id yg1mr784256lab.3.1443637294806;
        Wed, 30 Sep 2015 11:21:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.168 with SMTP id e8ls53684laf.38.gmail; Wed, 30 Sep
 2015 11:21:34 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr773744lbc.23.1443637294287;
        Wed, 30 Sep 2015 11:21:34 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ha7si75096wib.0.2015.09.30.11.21.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 11:21:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,613,1437429600"; 
   d="scan'208";a="180264503"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2015 20:21:34 +0200
Date: Wed, 30 Sep 2015 20:21:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: aybuke ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Use preferred kernel
 type
In-Reply-To: <CAEAX3JqSBe4HY0+1b6NhGoJ=HH-fbCf=sATKyh7fwTNvLF+71A@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1509302020470.2410@hadrien>
References: <1443615808-6064-1-git-send-email-aybuke.147@gmail.com> <alpine.DEB.2.10.1509301647590.2526@hadrien> <CAEAX3JqSBe4HY0+1b6NhGoJ=HH-fbCf=sATKyh7fwTNvLF+71A@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 30 Sep 2015, aybuke ozdemir wrote:

> Okey, I'll send the correct v2. I edited my name field. But I have one
> question.
>
> Am I just should edit the for uint*_t found by checkpatch.pl in ethernet.c
> file or change all the uint* types in same file.
> Because checkpatch.pl only find 2 uint* type control in file. But more than
> 2.

It could be reasonable to change them all.  Daniel mentioned the principle
that it is good to do something everywhere it applies.  Perhaps the
checkpatch rule is not general enough.

julia

