X-GM-THRID: 6391984177458184192
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.99.177.78 with SMTP id g14mr777448pgp.67.1488292839583;
        Tue, 28 Feb 2017 06:40:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.1 with SMTP id f1ls427038iof.6.gmail; Tue, 28 Feb 2017
 06:40:38 -0800 (PST)
X-Received: by 10.99.122.25 with SMTP id v25mr850314pgc.96.1488292838654;
        Tue, 28 Feb 2017 06:40:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g205si2119926ita.2.2017.02.28.06.40.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 06:40:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,219,1484002800"; 
   d="scan'208";a="215024330"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 15:40:36 +0100
Date: Tue, 28 Feb 2017 15:40:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Problem with coccinelle.
In-Reply-To: <dad01fb8-4b21-46ce-806f-1235c8910474@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702281539510.3872@hadrien>
References: <97a8b35a-3899-436b-8455-6fdd5d3a6ccd@googlegroups.com> <465dc1ff-b520-4ad1-862f-0fa268803f06@googlegroups.com> <alpine.DEB.2.20.1702281455380.3056@hadrien> <2c41d6b9-a3f8-4229-87ba-a31145c451c5@googlegroups.com>
 <dad01fb8-4b21-46ce-806f-1235c8910474@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-807997464-1488292828=:3872"

--8323329-807997464-1488292828=:3872
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 28 Feb 2017, Varsha Rao wrote:

>
>     Hello,
>
>     Thanks Julia and Vaishali for helping me. I understood the reason for
> blank output.
>     Since, the *file has already been updated with the coccinelle output
> patch and
>     as Vaishali said, so there is no case where coccinelle can be applied.
>     Probably the example needs to be changed, as it may create confusion for
> newbies.

Ah, ok, sorry aout that.  I was concerned about the parse error.

I will improve the example.

julia

>
>     Thanks,
>     Varsha
>
>     *File referred here is most/hdm-dim2/dim2_sysfs.c
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/dad01fb8-4b21-46ce-806f-
> 1235c8910474%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-807997464-1488292828=:3872--

