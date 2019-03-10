X-GM-THRID: 6666842031928639488
X-Received: by 2002:a1c:a8c1:: with SMTP id r184mr1846451wme.4.1552245299199;
        Sun, 10 Mar 2019 12:14:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:3d6:: with SMTP id 205ls451283wmd.1.gmail; Sun, 10 Mar
 2019 12:14:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjEtduetpJ6DfE0vliWkq9pxp6bSlG6ALsREfNdrp4POwC75C4j4Ynx9toeK0Hr15TlqO2
X-Received: by 2002:a1c:a8c1:: with SMTP id r184mr1846447wme.4.1552245298394;
        Sun, 10 Mar 2019 12:14:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552245298; cv=none;
        d=google.com; s=arc-20160816;
        b=fQYnv39xLEnq8iFxWyqVMO91mRDp/lnP8pVsY9ocySWdToC7uXrsEgLGNqE2wM/G+G
         noj1eWuEJKxBmSH51z98fIzmeR/lYnyiVoJy34r87aENBB8Fvt9/eMhgDEpvO6ubswhH
         zYFxdvc6u8zlMyw6ZE2SURww2tGhBJPXuLbRVmPW4ykIRGY2w01T1d1DCsOR32jAMJyA
         5pE5lpPbUboTxpj0FTTHbG8DFYc3wSl3nBw8i3qLTHpp2ge6V3pr+tiKVk26dsaDv0eA
         3xxFstwvDYu1hIyN+QqVsjOExeRfjYe0I/rJrJVKxbej+6f4aqe7pnJByYV//5CDyZeT
         U54Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=moYeBcsrXHUWCx/X7IVOzeHmRhTh0NKgvSXaxQOGVHc=;
        b=IcDZLFwgILIBRwGa359i+5pbbt1MKd9qMCi4JdJHDblVIj6qEOdzS38btnDXkyt68G
         vAOcX/QAEPdD9NvEjMqNUHJPK9o9QwxeNTM6tJ8m5XDI5Pg1zupdUEi2LTpkw0xIOhMy
         NnK/tVQW06Ydi53+n6bfB3d2GzN3mDh3598aFt5NKd7TMZE8OqWvUh0cLHQUSZIF4PW/
         AtYT21r59ZKq42jfftU5rzF9/ZzZBJv2x1CZP3asQYKbEMnX7Y+L324wH8qouIIva7DC
         FmiPnw+NHxino0RJF9hB92Cz/t3h1d7uDKTJMsT9du5WlC/MHH0f4+WeOjUCrvplTk/v
         BUiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b8si188542wru.1.2019.03.10.12.14.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 12:14:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,465,1544482800"; 
   d="scan'208";a="372708859"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 20:14:58 +0100
Date: Sun, 10 Mar 2019 20:14:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Branden Bonaby <brandonbonaby94@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Question about Checkpatch.pl errors
In-Reply-To: <20190310191158.GA25717@branx011-Vostro-430>
Message-ID: <alpine.DEB.2.21.1903102013380.3131@hadrien>
References: <20190310191158.GA25717@branx011-Vostro-430>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Mar 2019, Branden Bonaby wrote:

> What if you try to fix a checkpatch error message e.g "lines should not
> end in '('" but in doing so you now introduce another warning message
> e.g "lines should not be over 80 characters". Fom what I understand this
> is bad as we are trying to reduce warnings/errors not introduce more.
> However, what if after you fix the '(' error the line is now say 80-83
> characters long. Is this still bad and should be avoided? Should we just
> leave the line the way it was and focus on another error?
>
> If there is another guide in terms of which errors take precedence over
> others I'm open to reading it. I just dont want to "fix" what isnt
> broken and then make it even more unreadable/unclear.

It's a good question, but there is no real answer.  You need to use your
judgement.  And perhaps your judgement will be wrong, and someone will
tell you :)

julia


>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310191158.GA25717%40branx011-Vostro-430.
> For more options, visit https://groups.google.com/d/optout.
>

