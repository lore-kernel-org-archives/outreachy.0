X-GM-THRID: 6805826308521590784
X-Received: by 2002:a2e:9bd2:: with SMTP id w18mr1612080ljj.58.1584608847738;
        Thu, 19 Mar 2020 02:07:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8541:: with SMTP id u1ls354914ljj.10.gmail; Thu, 19 Mar
 2020 02:07:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv3Rfz9ezM18gjKvZO5lmKFTe5FIU+29oz9/3Tzmakk3tDvwDT1v+c20rkROBQh/e6U4Pzc
X-Received: by 2002:a2e:8192:: with SMTP id e18mr1557852ljg.57.1584608846100;
        Thu, 19 Mar 2020 02:07:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584608846; cv=none;
        d=google.com; s=arc-20160816;
        b=UHOG8VlB3JCeMME/pC58sQqt8Cn9gBi1v4+VNf3GSyqOvUjJk1iZqRXmWFIrrV21P/
         HfIFV6IQMYbEibOdY/cL64k2MR81yCw+1R2dxMWZ0P/Kftx4Dt2h6AheVwq7/FqN3CAP
         fzFgGadZ2XHNAfJp+n6Z1RCvAJ4ZAoZ3mOQ2+XXs+Qnd1GcLZCY9VQzTRX9rr0Trx2gA
         EzP0ne0wx10CPWkERYE5bp3oZhWJY7RgAa1v26JgI1tOEWWQrMFvq8qOw7dDl4MNcrlZ
         OpbBGBWoFfBLty1lCg4eU8LeLgiOdSTLX3VrY7gyilw3IOT/nkwruNbp6XajRQyVmQKt
         ydCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=h1R0YbIxSL/5zM7eKZcbIFfdEOYaVit5KiTCfGSjJII=;
        b=Qe99z8LANPEiP7Bl474Gyn2WdEYvDd+7BCrP+7FgoL+Ga/lM8XJSw30qeTsnok7VpQ
         zUCvVycwY/tY9BVne3lz2C0JjP9VhuGVa/RLdAzxBQpEvSZoukeYgT0Ch8HGVwEzPvuL
         TOFYO+83V+JAXhRUQCP8QuGDn0tkZGn++ND94KAQBha0d0dVobwx/f5UQNWyhKYMqSJI
         SZPZGHLSeE/8c5khsN47iNv2CqzxM5AdOB3x5DHAS7JuslUbJJkNwFvgzDBUSUMf1jMt
         MdUBftUVhqfsi0CILO2gW/r0tWc/wHTatmOcKy3L3igCevq1V7G9WuYexJCNXIuU7ajy
         Uxng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m11si63084ljj.2.2020.03.19.02.07.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 02:07:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,571,1574118000"; 
   d="scan'208";a="342897997"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 10:07:24 +0100
Date: Thu, 19 Mar 2020 10:07:24 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
In-Reply-To: <20200319090413.GF1723@tulip.local>
Message-ID: <alpine.DEB.2.21.2003191004480.3010@hadrien>
References: <20200319080144.GA1723@tulip.local> <20200319080905.GA3489391@kroah.com> <20200319082249.GC1723@tulip.local> <alpine.DEB.2.21.2003190930420.3010@hadrien> <20200319083953.GD1723@tulip.local> <alpine.DEB.2.21.2003190940190.3010@hadrien>
 <20200319090413.GF1723@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Sending msgs to outreachy-kernel@googlegroups.com using cc does not
> works. If I send as To: it reaches.
> Google groups blocks CC msgs I think.
> Oh my. I wasted all the time.
>
> I am sending all the patches again.
> Please specify these things in Outreachy pages.

When I received this message it had the mailing list in CC:

Date: Thu, 19 Mar 2020 14:34:15 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches

I am also sending this message with the mailing list in CC.  I think that
the problem is elsewhere.

Also Greg said that he didn't get your messages at all, even though his
address was given explicitly.  So I think that the problem is somewhere
else.

Nevertheless, it seems to be solved.  So just do for your other patches
what you did for this one.

julia

