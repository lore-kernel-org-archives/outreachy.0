X-GM-THRID: 6753200563017482240
X-Received: by 2002:a7b:c08f:: with SMTP id r15mr1558555wmh.45.1572473139530;
        Wed, 30 Oct 2019 15:05:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8183:: with SMTP id 3ls614625wra.12.gmail; Wed, 30 Oct
 2019 15:05:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqylOYeuTg2ItXKEAx9OrHXz9WPctdO+/CmUZNjVYKewLlO1J0FKZEnVPqCh7d8M+rAGnRCK
X-Received: by 2002:adf:ea07:: with SMTP id q7mr2048626wrm.78.1572473138367;
        Wed, 30 Oct 2019 15:05:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572473138; cv=none;
        d=google.com; s=arc-20160816;
        b=X7cxDtFk6Oaml1pkq0BuxXgGVK2vXO0SyoizaFrXuFf4U5poOLKH7u9x+M4LZa5tEE
         NmQErEY0Vg1umEzQ0bKQhzxcs2T4g7mI4swbL2C32LBqEt8Mq2fs9Vwz1AL5iSKUJtGx
         roOhxXGVhxHiXD3twsPztUNo0GqHZ2U4A6EgKgJ8PGySBEpQpbRKQWgKiI/W+S/EE2jX
         l7Zy7cLSrq2ZMbc6JCrQDNvJ33vTwB6vpU7ae5VGWtwTyi+RdByUHjI4baKnsIEHVGvj
         n4Ul3kaTWoj/Ai9o00NNfVnyMrOU0nUWh7IrWqmDG8qdesTq0zzLfLUZrT5DUtbLsQD9
         YU7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=FFWCdmhedWj5LoSyvF278grEykDfLSoisbAvsA0TL8Q=;
        b=t4dnkqg4iIfq8DZiGQlRoFms/5f/VSlWW5k/pCqC2Diado1L4hhEDqHipfm2gW2gQ1
         Jska1TkDvChNX06uMw2yKM9l7lCkOEIPXipb3E33/PmzweE4ta2adoBDY+w79qRp9tNX
         2RvaXJa0wnmldLA93u9QL3vZKK2DSPo+nwzejwUjk4UqZ9EVcT9upGEVLYfiD+k3ibpD
         nLaormHVGXl8LhUUjjNzsAjvgAYgbW5IOaOjUe77sifhfGMZiAhuXH3pDgKr5n2RCWXl
         vVoWcUSp45FWm1w8hhUikMjcYy8feOWdw9ZGaVToeFxy2SEKKmSZxy++6p7E2o3GAmYA
         eNQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y185si277495wmd.4.2019.10.30.15.05.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:05:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,248,1569276000"; 
   d="scan'208";a="409708311"
Received: from abo-81-75-68.mrs.modulonet.fr (HELO hadrien) ([85.68.75.81])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 23:05:38 +0100
Date: Wed, 30 Oct 2019 23:05:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Driver dependency
In-Reply-To: <97327d78-e57e-4401-817a-dbe1cc08789b@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1910302305150.3273@hadrien>
References: <CANR89jaTHmRieV47zcr3MZJ69cmNSBOtuTLN88bti4HAf73CkQ@mail.gmail.com> <97327d78-e57e-4401-817a-dbe1cc08789b@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1872625980-1572473138=:3273"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1872625980-1572473138=:3273
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 30 Oct 2019, Jamal Shareef wrote:

> This is the same information I am getting from menuconfig. I was able to turn on COMPILE_TEST.
>
> Are you not able to turn on COMPILE_TEST?
>
> It is the first option under "General Setup" and it is labeled "Compile also drivers which will not load"

I'm not sure to understand the status of this issue.  Is the problem
solved?

julia

>
> Thanks,
> Jamal
>
> On Tuesday, October 29, 2019 at 5:27:13 AM UTC-7, evan chime wrote:
>       Hello Guys
>
>       Please am trying to modify a driver and the driver depends on COMPILE_TEST.
>       COMPILE_TEST is [=n]  and depends on !UML.
>       UML is Symbol: UML [=UML]                                                                                                            Type  : unknown
>
>       I've read the newbie tutorial many times, please can someone help. I guess !UML means UML shouldn't be on ie UML [=n], then "!" will make !UML true  
>
>       Kind regards
>       Evan
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/97327d78-e57e-4401-817a-dbe1cc08789b%40googlegroups.com.
>
>
--8323329-1872625980-1572473138=:3273--

