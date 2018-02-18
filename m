X-GM-THRID: 6523785201916575744
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.80.215.210 with SMTP id m18mr3153378edj.0.1518937316399;
        Sat, 17 Feb 2018 23:01:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.190.10 with SMTP id a10ls2842722edi.6.gmail; Sat, 17 Feb
 2018 23:01:54 -0800 (PST)
X-Google-Smtp-Source: AH8x227D+HOYD4odty9vE9VrCFYo8N/+OjstF6JulPz1JjgXEBHtPnH8pmmVSEBPTFV4CAt/u/+p
X-Received: by 10.80.149.230 with SMTP id x35mr1747590eda.3.1518937314525;
        Sat, 17 Feb 2018 23:01:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518937314; cv=none;
        d=google.com; s=arc-20160816;
        b=a1txcmmCvrbmh8p966E0EZFXLWKMH0+98ckp/Og3iWkTS00W30IJk1W/rMV0Mai4tt
         uIAOneRO18x2YrKsDa1JfKeC4/1X21QZ4a3HxKh+z4Jf/tci+xqJuJ3UyeGwbo2Fl1HP
         vkrHubML4YVc7NgqrasGnRoLwAYY6uZ69mc9KtYDuZaSUqByZ5IxbH+gvx0RQqoas5va
         b60xg8v655xMiWSDfwU9hjMMc1doj2CzephKhNTRYxvBY5GJwSJjeHl4fMz8AwtJBmML
         +BWXFCc1upEhe6lcpgl9u+89gwomN6b+miA2NgPXYg/QJfmExkzOdsvRYjyIQyP9ikBX
         /tWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=WYubWItg0AH4HyDbIx+GXrleyTPt/L8+UPj7BMk0IGw=;
        b=pv/iRyYVcPkYBCJR5DIq2Jm7k8izBpHLhLcQ6sizvRg2VNXRzJ57olXAPfe2ROOQBF
         EKw3KBX8k1zQTbCHhvrT/oZg6T4ftvxJKcNh/4iW1Uk9DOBj8xMVZzjjaC5eIKnWf0Nq
         LN0VkvtJPem/rS0JCJ5KtxcjicZdK4IJUlWDN5uybycFwG9W3Fe5CknBLsZUB84gjwjX
         Hz8BECqC4II1uqoiLotLPZkKAfBdS6df0BSAlBPBEbkP120k8yTS2ftbTH7guKlXgIFX
         PAjptCPYC2NcHGpxCT91JGrQguNK1D/4Y4w9PEICSKcBPw3t17zH/aqaReUeFr4Z//ce
         cbJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m19si1362580edd.4.2018.02.17.23.01.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Feb 2018 23:01:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,528,1511823600"; 
   d="scan'208";a="314095176"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 08:01:54 +0100
Date: Sun, 18 Feb 2018 08:01:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: oormilaghantasala@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Application Process
In-Reply-To: <013a9e4e-435b-4b81-ad16-0f84a44a096b@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1802180800330.2720@hadrien>
References: <013a9e4e-435b-4b81-ad16-0f84a44a096b@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 17 Feb 2018, oormilaghantasala@gmail.com wrote:

> Hello mentors,
>
> I am totally new to this! So could you please guide me through the
> application process.
>
> Quick Questions:
> ->Do I have to fill any application form before getting done my first
> tutorial?

You have to fill out the Outreachy eligibility form.

> ->Do I have to contribute small tasks before applying?

Technically no, but you will have very little chance of being accepted if
you only submit cleanup patches.

> ->Should I contact a mentor to get started with the tutorial?

No.  Just get started.

Thank you for your interest in the Linux kernel.

julia

>
> Thanks,
> Oormila Ghantasala
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/013a9e4e-435b-4b81-ad16-
> 0f84a44a096b%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

