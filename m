X-GM-THRID: 6662079194667679744
X-Received: by 2002:a50:b361:: with SMTP id r30mr1374149edd.8.1551161745246;
        Mon, 25 Feb 2019 22:15:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:18b2:: with SMTP id c18ls1521081ejf.1.gmail; Mon, 25
 Feb 2019 22:15:44 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZY7l9/cc9DoBFNKAaeqPEqyppFK+LJHAnSgFhgjXt6Pb/s0MtqtYPwQgfqSXs0jo287mGx
X-Received: by 2002:a17:906:9701:: with SMTP id k1mr2314776ejx.13.1551161744286;
        Mon, 25 Feb 2019 22:15:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551161744; cv=none;
        d=google.com; s=arc-20160816;
        b=dG6JkBm0bJKyDHmFeOKv7hDlEBfB/8eM8m5AenQvlnIUF+DxE4IWMxubyHl1gte8tP
         TiMIyLFYgJjhMP8qJ0mnihPGTGjuFDjwO0ChwsC7FSYVdxzgZa64gOKetuhcP8tsJMd5
         FmIHB+yQ3j0kK2wVMgro4IfQCLSve/TiwSIzEw14MT24/r5b4qTHZ4FCcA0iXEbG5+ar
         mtgcMbXVysdAKp8UGNfh8d7Ap5GSIvXKlH9Ca839ILyUHXGr5pC41tivY0M5CQTr0KX+
         nzXsocks8DEEFKeCbVTK4U6R/GiAwQQGNwdL0vlsWXtPD7goA+H1JC3sQakzGWnwraMo
         hR9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=HZbUXo61801fN+2TQSoE/NHLE4TV7nmQ6koRYKsvWjM=;
        b=UkguCJZPKbhgCPBvFRLoWZ/iuBDa0M0oP7ea2nGDDKW9M1Y+wOdJbSMjK7df/7BrsI
         EIsv20Z3QEbqKhXb+u3UjTUV0rL8NXRK3a9zwMABe9uly+Xv0kkDE5BYkogC9URPmy3g
         X7Qcj+j5u8q6wnJTxDDPcTKxobConGGBP9BUjagHy12Ar0MT7efK868JPLOQUCmSeNL8
         0a3gcxC7qkR/wb8mEvWvsKgFui/mWUsr06rrlyRW8Fy1Q19mgmVv+nubq3J1pSWFQWTz
         TEAC5fq919oPNdJyL+HtGObKlqb28LGlQVKBui+43VQQZSaQLD9weDg4liVLDwLzUPTX
         XDYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h12si441976edh.4.2019.02.25.22.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 22:15:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,414,1544482800"; 
   d="scan'208";a="297319409"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2019 07:15:43 +0100
Date: Tue, 26 Feb 2019 07:15:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: mt7621-eth: add SPDX
 GPL-2.0 license identifier ---added punctuation to v1 changelog text
In-Reply-To: <20190225230929.3861-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1902260713290.2655@hadrien>
References: <20190225230929.3861-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line is still not correct.  You can't describe your changes
since the previous patch in the subject line.  That goes under the ---

v2: added punctuation to v1 changelog text

Please go back and read the outreachy tutorial again thoroughly.  That
contains all of the information you need to know to send patches in the
right way.  You shouldn't need to make things up yourself.

julia

On Mon, 25 Feb 2019, Jules Irenge wrote:

> Add SPDX GPL-2.0 license to fix missing SPDX warning
>  reported by checkpatch.pl.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-eth/ethtool.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
> index 40b4cf011660..d0e97ae0d82e 100644
> --- a/drivers/staging/mt7621-eth/ethtool.h
> +++ b/drivers/staging/mt7621-eth/ethtool.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*   This program is free software; you can redistribute it and/or modify
>   *   it under the terms of the GNU General Public License as published by
>   *   the Free Software Foundation; version 2 of the License
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225230929.3861-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

