X-GM-THRID: 6329443835400159232
X-Received: by 10.46.1.75 with SMTP id 72mr1710375ljb.10.1473688654330;
        Mon, 12 Sep 2016 06:57:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.195 with SMTP id g64ls499385lji.19.gmail; Mon, 12 Sep
 2016 06:57:33 -0700 (PDT)
X-Received: by 10.46.32.76 with SMTP id g73mr2631457ljg.9.1473688653531;
        Mon, 12 Sep 2016 06:57:33 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y7si1201733wmd.0.2016.09.12.06.57.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 06:57:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,322,1470693600"; 
   d="scan'208";a="192860267"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 15:57:32 +0200
Date: Mon, 12 Sep 2016 15:57:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: shailygsoc@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Patch sending failed
In-Reply-To: <bde04747-c655-40f1-b790-52a0594b62e9@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609121556390.29099@hadrien>
References: <bde04747-c655-40f1-b790-52a0594b62e9@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-35162481-1473688652=:29099"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-35162481-1473688652=:29099
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 12 Sep 2016, shailygsoc@gmail.com wrote:

> Hi,
> I just finished my first patch, a small code cleanup task using
> checkpatch.pl.
> But I'm unable to send it to the respective maintainers.
> I used git send-email, it returned SMTP code 250, but I received a mail
> later on, saying:
>
>
> "Delivery to the following recipient failed permanently:
>
>      {maintainer_email}
>
> Technical details of permanent failure:
> Message rejected.  See https://support.google.com/mail/answer/69585 for more
> information." 
> for all values of maintainer_email specified.
>
> How do I get past this?

Could you forward to the list the To and CC lists of the message you are
trying to send?

julia
--8323329-35162481-1473688652=:29099--

