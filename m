X-GM-THRID: 6668981360875536384
X-Received: by 2002:a1c:234c:: with SMTP id j73mr27711wmj.19.1552755624096;
        Sat, 16 Mar 2019 10:00:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7e52:: with SMTP id z79ls1252017wmc.4.gmail; Sat, 16 Mar
 2019 10:00:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx+9EHr/hY0ZP0vKKDyA5MDDsxWqv93RsAI9zu2K8qWSdRgbYzyzh0wm1HSySp48Aqs8W3X
X-Received: by 2002:a1c:9e0c:: with SMTP id h12mr305723wme.3.1552755623079;
        Sat, 16 Mar 2019 10:00:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552755623; cv=none;
        d=google.com; s=arc-20160816;
        b=bFyu2pVwF/lqhWmFcjfzKH1IXbAXtwbsE0AJVUmIF31RnwRkg+A/jzuzMdiObYYaRB
         vWlsBHXxm89riW74gx2owyTTfA583UDX1AbRCHMi1EBQm0c3mWVC+LmgtiNrGkb/+AOU
         Mm9hw0CSXa1KIzjWN1/YRsXQKvhhZYE6dm6VtSa9kOVJMdyEsaVO2FLIZulqEw6VLAcL
         PJnPR9B/OQUf0eAZ8fvRkKsnx8TTBfBp6hj9jGbS3+ydvyYcKGPArZhgqJFJ/7QH2VE9
         rTPUaoSscuWi7/oUfrMsK44UBfvzuAakg3S6NvqvNegVXA9cfbMzr2siG5mhsiIVmBoG
         yrnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0VWdg3z11Rd2ZF2nnQZAC5z3ki1u6abhOwf/Jv7zVcc=;
        b=VCWAb1+3ujQSAtKksCsPTveaIM/iy8Y7IEov2pjz+8aAzTgotjpsSmJqq0wcxEipbS
         myMSPkLaNhmuIlS/ofXxRzF1W/nBbaMw0rUwluIrOiN9pghFoOZiCUl9g2V3fiMoEihf
         eRR59WRwYUOCviCqb3CkJevVfNMpFmrX7QhJ74JAmfbaPbgnkRYCCjG3/QBRSOWfX9cE
         X2b4IY/Y+9pBTxtx+7EmN/jN/Z8/nl2PjMeiNj/DLU51ZzIITY8CS+Ry/HobSqgfLGxM
         LSF3GnbAM/37DLyjB3oFDOIC/PyzWiE6cIbStQ82sU5XTcJP53aXpRyUv1tJhCvIv5l3
         ZaIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n5si294938wrj.0.2019.03.16.10.00.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 10:00:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="299590607"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 18:00:22 +0100
Date: Sat, 16 Mar 2019 18:00:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sanjanasanikommu@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: rtl8188eu: rtw_recv.c:
 fix a paranthesis issue
In-Reply-To: <a3fb8066-35c9-4437-a698-702363bd39bc@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903161759480.2487@hadrien>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com> <20190316133711.8968-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.21.1903161445230.2487@hadrien> <a3fb8066-35c9-4437-a698-702363bd39bc@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1691203253-1552755622=:2487"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1691203253-1552755622=:2487
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 16 Mar 2019, sanjanasanikommu@gmail.com wrote:

>
>
>       Yeah, I would change them.
>
>
>
> 1.Also, umknowingly I commited a mistake by not mentioning the version of
> series.
>
> 2. I will reedit the patches and send them gain i.e 
> PATCH[2/3]
> PATCH[3/3]

That would be [PATCH 2/3], etc

> 3.I am confused what should be my version number for patch 1,2,3 after
> changes.
> Is it v2 or v3?

Pick a number that is bigger than what you have used before.

julia

> Plz let me know...
>
> thank you
>
> sanjana 
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/a3fb8066-35c9-4437-a698-
> 702363bd39bc%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1691203253-1552755622=:2487--

