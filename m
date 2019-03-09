X-GM-THRID: 6666346191524986880
X-Received: by 2002:a1c:4e0c:: with SMTP id g12mr1799349wmh.9.1552138669111;
        Sat, 09 Mar 2019 05:37:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f350:: with SMTP id e16ls2567476wrp.13.gmail; Sat, 09
 Mar 2019 05:37:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqxXeH9QKjHyGR8QrjDHW/KeNu2WJ6alX00SY4Z0HwAJ3I5YairfkLhiPyXxL3gw50wU8owc
X-Received: by 2002:adf:a390:: with SMTP id l16mr1298037wrb.11.1552138668346;
        Sat, 09 Mar 2019 05:37:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552138668; cv=none;
        d=google.com; s=arc-20160816;
        b=MuA0D0gXCrke8+KD2L5fEY/Uif+FkZfs8Kd+L5FMEPC7ERSTI7/BA+JAf2mvByBl1t
         LCqEEARQSJ6zy3Uq19NKichyDIDl+mY6t/hSq0VlOjBMShk/DXGsZ8szFZexJ+/z3os+
         1seR5qnF7PLbrWCsTRgAWhe2GyK4eviGSoBQESr9nIMDUXOSDxI/7VNCmqmaEiNTLnx9
         pI6CCgP7JZ977YKn9ROxARKhTs6Lg13ClHzzW0TEdvMD+VOZc79R8Zw83J/0FVjP4P+p
         11ijekIr3Y9urN/BaFZ9ZKrX57NqB7EFEdjPktnBNYBc6hcQzLZ8yRJQCLq8nyJDQHAO
         LiFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0Jhrk/hsjPAFXzdFsQCpMF0qqtrF9G0c1wirdTi/Y+s=;
        b=xtj6ZpH4MLmpE5Hn2UmeCCnc30rSnMZ2VhEDdRiCtYIlnPuE3Cp4cqNvfUBIJUpSYz
         zvsf5spRvzjRSL3LaGAtLkfd0APKy2AH8NJKYRAL6qiSpDPWUo6B6hCN3nZipqQUyS53
         S8hOc6rwMWJuTnP48gx7Ja8LNu+fJMVavtYKhUdd+hvrtNV8zpgE9nOaNihztob2A6s5
         nCvxrOhJxm3v1WVEaBuoMItqiZz62cZM21lYl12C1d3Pxs9DzWoDs0bFOccYp094u/h7
         d2D5x6NBVRLxSv3j/eF9Pfa1sLxDvCgouCNUbBn2vrV9X3ow4KC4UaSa6PQ4xHjJoIL6
         ocrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b8si30688wru.1.2019.03.09.05.37.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 05:37:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,460,1544482800"; 
   d="scan'208";a="298656248"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 14:37:20 +0100
Date: Sat, 9 Mar 2019 14:37:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] remove unnecessary local
 variables
In-Reply-To: <20190309110743.41443-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903091436330.2452@hadrien>
References: <20190309110743.41443-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Mar 2019, Himadri Pandya wrote:

> This patchset removes unnecessary local variables from functions
> wilc_set_tx_power and wilc_get_tx_power.

The concept is almost the same, so it could be just one patch.

When you resend, check that the arguments are properly placed and there
are no blank lines at the end of the file.

julia


>
> Himadri Pandya (2):
>   staging: wilc1000: remove unnecessary variable ret
>   staging: wilc1000: remove unnecessary local variable
>
>  drivers/staging/wilc1000/host_interface.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190309110743.41443-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

