X-GM-THRID: 2104888393728
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b6f9ba0027ec0340
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr673679lah.8.1424603375412;
        Sun, 22 Feb 2015 03:09:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.71 with SMTP id fu7ls378747wib.29.canary; Sun, 22 Feb
 2015 03:09:35 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr632999wid.1.1424603375136;
        Sun, 22 Feb 2015 03:09:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si456620wib.2.2015.02.22.03.09.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 03:09:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,624,1418079600"; 
   d="scan'208";a="122864887"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 12:09:34 +0100
Date: Sun, 22 Feb 2015 12:09:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Convert comments
 from C99 to C89
In-Reply-To: <CAL7P5j+ivFBOca1aEUUW+9sH32H14VkRqRCfAZgA27PbTzOW=A@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1502221208350.2612@hadrien>
References: <1424549883-29082-1-git-send-email-ksenija.stanojevic@gmail.com> <alpine.DEB.2.02.1502212207091.2296@localhost6.localdomain6> <CAL7P5j+ivFBOca1aEUUW+9sH32H14VkRqRCfAZgA27PbTzOW=A@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; CHARSET=US-ASCII
Content-ID: <alpine.DEB.2.10.1502221208391.2612@hadrien>

> >> +/* IEEE80211_DL_BA   | */
> >> +     /* IEEE80211_DL_REORDER| */
> >> +/* IEEE80211_DL_TRACE  | */
> >> +                         /* IEEE80211_DL_DATA        | */
> >> +                         IEEE80211_DL_ERR      /* awayls open this flags to show error out */
>
> After fixing this comments I get warnings line over 80 characters,
> should i fix it or leave it for another patch?

Try to make everything nicely aligned and to fit inside 80 characters.

julia

