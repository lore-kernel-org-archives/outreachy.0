X-GM-THRID: 6402003753150447616
X-Received: by 10.25.213.77 with SMTP id m74mr2424027lfg.14.1490651312978;
        Mon, 27 Mar 2017 14:48:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.203 with SMTP id 72ls1215918lfy.19.gmail; Mon, 27 Mar
 2017 14:48:32 -0700 (PDT)
X-Received: by 10.25.216.154 with SMTP id r26mr3186421lfi.7.1490651312486;
        Mon, 27 Mar 2017 14:48:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x188si210741wmx.0.2017.03.27.14.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 14:48:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,233,1486422000"; 
   d="scan'208";a="266448740"
Received: from 109.236.136.163.wls.msr91gkk3.adsl.fix.edpnet.net (HELO hadrien.local) ([109.236.136.163])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2017 23:48:32 +0200
Date: Mon, 27 Mar 2017 23:48:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    mawilcox@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] kernel: pid: Change function
 return value to bool.
In-Reply-To: <476ea4f3-64e1-4c7e-bbcb-36b5091cd8ef@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703272348180.3204@hadrien>
References: <cover.1490581288.git.rvarsha016@gmail.com> <58d87c7c.c240630a.d8622.c768@mx.google.com> <alpine.DEB.2.20.1703270729300.2488@hadrien> <6874a8e7-7574-487b-9423-89bad7e1145a@googlegroups.com> <alpine.DEB.2.20.1703271003090.3387@hadrien>
 <d9905b6f-434e-4943-8c78-8a35bcddfe24@googlegroups.com> <476ea4f3-64e1-4c7e-bbcb-36b5091cd8ef@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-915676721-1490651312=:3204"

--8323329-915676721-1490651312=:3204
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 27 Mar 2017, Varsha Rao wrote:

>
> The return type can be bool but with the unsigned int casting the
> differences. Then the change would make sense.
>
> +static bool pid_before(int base, int a, int b)
>  {
>         /*
>          * This is the same as saying
> @@ -125,7 +125,7 @@ static int pid_before(int base, int a, int b)
>          * (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT
>          * and that mapping orders 'a' and 'b' with respect to 'base'.
>          */
> -       return (unsigned)(a - base) < (unsigned)(b - base);
> +       return (unsigned int)(a - base) < (unsigned int)(b - base);


This looks safer to me.

julia

>  }
>
>
> Thanks,
> Varsha Rao
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/476ea4f3-64e1-4c7e-bbcb-36b5091cd8ef%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-915676721-1490651312=:3204--

