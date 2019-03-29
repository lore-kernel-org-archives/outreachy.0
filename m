X-GM-THRID: 6670961947938127872
X-Received: by 2002:ac2:54b6:: with SMTP id w22mr1269246lfk.15.1553883189714;
        Fri, 29 Mar 2019 11:13:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:3802:: with SMTP id f2ls310228lfa.0.gmail; Fri, 29 Mar
 2019 11:13:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyfnpL/n6Ivr6COMx11yuIQ2nM1YdO0KjSBEt4CEi/eYgVPDiTXGD2VxvQUdh+0Y6RpdEs1
X-Received: by 2002:ac2:4aca:: with SMTP id m10mr1100330lfp.8.1553883188860;
        Fri, 29 Mar 2019 11:13:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553883188; cv=none;
        d=google.com; s=arc-20160816;
        b=hEuTWJIe7fQb7dDD8pxUypcGqsCw6dzwHJ+olTYJe6AGgpfXyCdrgDBoeXLMpJtmr5
         dUIpn/4tKpH7KWs6HbnzlOAZRNsVSWSz/el+B+h4J+DhNmlEz/I1LwKehnaMwslSrEMy
         NrGIOPOZckLww72No+mvQqNLJ55YGr9mB76KdkJEpV8K5CJ1J+nXTl7nfMdW7pp3Ebf6
         P3u0tMb9Lq1jn8pgwSDGza94yW/fmScbJvfr4uVtQKbpP5FP/ofsdr8TyzwkXCtmYKGE
         myEvtnWcR1wQsVqjFXTewm0sfTUqyK8T0XOOpMi8+z3G/hLkbcjsT3istk6s7flNdXnh
         nHOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=jKe4e7X1kUAe09zX8CAvAWF091itcRa8FuEJkQE/KNM=;
        b=nG7o2iZ+lr6CjAWBWkRoCnOuQ5J0BEGczlDqwvUdVEiHKVXWVOOsilBonZeO84OJgh
         /EEjc7nnLZ/ljyLxbrLJ1RvtUFydyhONeQKxbT9xNoNLlYYS8PbNpTvJpZsJR9EwFnVX
         3F7Llqw41jUkOjtThqvcUDG6A0JZLeURGz9E2HGNbfstFkmIx3UCZJ5Ax86rEbDr71gw
         8mkj0YlhJuXP2Med7sssDEWBX7ptMFUPNqon4GOeLzdz2+iYC1M3IDRnvpwu1JeHJcSP
         sgMkosb+n09qajOOtbkyz39dSzOtcqI8zTgkzbICfOo1sDFjOkW8xuhVBQ0jFgredgCq
         0pzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a22si97713lfl.3.2019.03.29.11.13.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:13:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,285,1549926000"; 
   d="scan'208";a="301201069"
Received: from unknown (HELO hadrien) ([109.190.253.13])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2019 19:13:07 +0100
Date: Fri, 29 Mar 2019 19:13:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 1/3] staging: vt6655: line over
 80 characters
In-Reply-To: <969520ee-c1dc-43ca-a091-ef619f6dd2bd@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903291912401.3335@hadrien>
References: <20190322202945.24884-1-vatsalanarang@gmail.com> <20190324085619.GA21361@kroah.com> <969520ee-c1dc-43ca-a091-ef619f6dd2bd@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 29 Mar 2019, Vatsala Narang wrote:

> For two patches in this patchset(2/3 and 3/3) i got the acceptance mail but
> for patch 1/3 I haven't recieved any mail ,So should i resend the whole
> patchset ?

No.  Once a patch is in Greg's tree, he doesn't need to receive it again.

julia

> thanks,
> Vatsala
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/969520ee-c1dc-43ca-a091-
> ef619f6dd2bd%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

