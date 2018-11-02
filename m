X-GM-THRID: 6619077441472167936
X-Received: by 2002:a2e:834f:: with SMTP id l15-v6mr613698ljh.19.1541142505727;
        Fri, 02 Nov 2018 00:08:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:9895:: with SMTP id a143-v6ls988507lfe.12.gmail; Fri, 02
 Nov 2018 00:08:24 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fzNFTOpbLDZLF+h+5Qx6YlXqC4/F8nmrm5q+ZZ+CYZY5v6lpPZxTNk5gbYDunZ0S9qSSEU
X-Received: by 2002:a19:d00d:: with SMTP id h13mr481741lfg.7.1541142504813;
        Fri, 02 Nov 2018 00:08:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541142504; cv=none;
        d=google.com; s=arc-20160816;
        b=zK5Xp64BnTtMnKU16QWol02zgbV92XXENvoSlHd0q/nZGtC/0mWYchcbuZZPO3fpJt
         Om7qrxTxM4N11lkNpUvMxDEJfodY9wasavfh4aZMQz1zR22U/rchrBSMlNtkL96SKEae
         qizAXAWQ1A7ygjVHt7OBLEVqdLm6F518xP81BZPUdB7GlP8ta5qhcbUmnJcyi1nqAiec
         1g07ivMxy140MIQpOHn8N4Uzv1BESaJWUO4DqNr8IidmWVtsGioPiMkL9M/pDDqUVE6D
         VxoePdDCTnvZwg6qC9Gg1093ZmcMZ68fq9Yrh6UTsXEeBL/fDA/VmFVEgUj+IyPilSms
         L9Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3HMFgLddf/PYd3Pj2Etvc8xsur8/9gvVE0EBIkeD2HM=;
        b=lbnBJUfTG315j7xjIZ1Asok2QopeGEjW2rmTbv+BEX9qkcXd6rCvRkq32duYW5oXn6
         jqThdrVzzN+ttkHTqH6r/rm+NcjNzcqaHX2JvbtJH99W0LiZveD5XoFlKMQzmPqDpwtK
         yHr5Wu2tJduy84F7FJ59FIgrtUQkyvgClqhPmik3yPlvHTHRbYf1LHY3udgQ89GAtILY
         mepMePj6vUbzqteKwgdOdODNo/1LTjuTNRl3vdbAPtMUx0BGso/Y1oAQ24GZ0nUsI4VE
         0hB/hR6ORHP882RBiVxzB6mewaEbqlOuTZRkwi1kxGg9kDD3mvej8z2fOSLR5Lcd0G0v
         bv7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l5-v6si41200ljh.4.2018.11.02.00.08.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 00:08:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,454,1534802400"; 
   d="scan'208";a="284137909"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2018 08:08:23 +0100
Date: Fri, 2 Nov 2018 08:08:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: greybus Fix SPDX
 identifier
In-Reply-To: <a37d37114de31fc8bb116bceadd2cb0fbc28f56c.1541123999.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1811020807180.3064@hadrien>
References: <cover.1541123999.git.code@wizofe.uk> <a37d37114de31fc8bb116bceadd2cb0fbc28f56c.1541123999.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Nov 2018, Ioannis Valasakis wrote:

> Fix the SPDX identifier as by replacing with standard C comment the
> file
> Reported by checkpatch

Try not to use Fix in your log messages.  It takes up a word and doesn't
give any information.  Here you could start the sentence wit Replace, and
the Fix would go away.

julia

>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/control.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> index 08a51c652a10..efa0d30a88c2 100644
> --- a/drivers/staging/greybus/control.h
> +++ b/drivers/staging/greybus/control.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Greybus CPort control protocol
>   *
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a37d37114de31fc8bb116bceadd2cb0fbc28f56c.1541123999.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

