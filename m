X-GM-THRID: 6675066065749278720
X-Received: by 2002:a50:b104:: with SMTP id k4mr3307986edd.12.1554184215912;
        Mon, 01 Apr 2019 22:50:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1f51:: with SMTP id d17ls477705ejk.11.gmail; Mon, 01
 Apr 2019 22:50:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx8+ALkxaCZ6pgeufKfACnG93Uwc2FwMMnIf/6IgdMMaCQKsrBAEhn8gNYrsKEiWMJrafDe
X-Received: by 2002:a17:906:a417:: with SMTP id l23mr4310691ejz.4.1554184215248;
        Mon, 01 Apr 2019 22:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184215; cv=none;
        d=google.com; s=arc-20160816;
        b=L4SouYG3f3IibawDrj2K4h3ym3IRAJy+b81pvn1Q7i0PLRu1X3YAl3CQgg8F2vrWJF
         /GthcFSkkWBUf1qUO2PqWnALnhwsP3CdMH7invqInOSEgD9r5QMPPKQGsg9P98Qu097C
         RxZPBcGJlxEB9oNstbHAsLHcKPgqCmY2AdlhgNOfB0YoxQspKn510F7Xr0H5LU7wGkln
         lYPS1oqgujmc8NrucHk7mgGrPbZYXhAygHPTVx9EiNuk03U4NLI8XqXKuX22nKjpFkgn
         Bp8/2JcfrJGovZNaqhNyzpz9Z0SDw/ssbBka8bRFfKz/tyf6Lmbn42CQkzu68hpOoVES
         oHLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7/Ts9VcJFnX4jY4rOg915dmlGpO0KpkymUnzbojuCG8=;
        b=a1UhP0HPmUwjGhw+nq1J5PSjQZVeSxsdqLOGCzI7OC+rgoKtZEOGbmNaHfI0CE6drs
         CFQpiu4yQnQ1cQFu9m9+zg1iNcuKzz5L0XsU+/wGFs/ZQph7v96sgKujJ52FWBCMXAWf
         aaIvSfz0C9TbBniN9xz9RPKphqFfE9f/TBhjOdPzXt6GXyrIKwvK0ke75X3THkRRJbWk
         /pWuUq8esNV/AZGhnp9R76Ti7xDS2K3nAVVVHyH68N//jbYnVvg7Ao7dkB8HLwGddhdw
         gJ59oXcKnFgyuc180yaG9orqUaJzxaF2suY6UFRvFSU+LLu6Y16lgWr8vfKD2V+3MXdR
         4Crg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w13si546538edb.1.2019.04.01.22.50.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:50:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,298,1549926000"; 
   d="scan'208";a="376747108"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 07:50:14 +0200
Date: Tue, 2 Apr 2019 07:50:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Outreachy internship project timeline
In-Reply-To: <CANTOzWFMtD=pWqa=fm96+AdLa5rGj3=-Mq_9jWh6tethkwAtGA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1904020749520.2664@hadrien>
References: <CANTOzWFMtD=pWqa=fm96+AdLa5rGj3=-Mq_9jWh6tethkwAtGA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1683261430-1554184214=:2664"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1683261430-1554184214=:2664
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 2 Apr 2019, Payal Kshirsagar wrote:

> Hello,In the final application there is a subject to fill about Outreachy internship project timeline and I don't know what to write here.
> Please guide me to figure this out.

You need to contact the mentor for the project(s) you are applying for.

julia


>
> Thanks,
> Payal 
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CANTOzWFMtD%3DpWqa%3Dfm96%2BAdLa5rGj3%3D-Mq_9jWh6tethkwAtGA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1683261430-1554184214=:2664--

