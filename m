X-GM-THRID: 1653519417344
X-Received: by 10.43.161.6 with SMTP id me6mr15064637icc.21.1424730352794;
        Mon, 23 Feb 2015 14:25:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.85 with SMTP id e79ls2617902qgd.4.gmail; Mon, 23 Feb
 2015 14:25:52 -0800 (PST)
X-Received: by 10.236.62.193 with SMTP id y41mr14204028yhc.38.1424730352627;
        Mon, 23 Feb 2015 14:25:52 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id t6si940412igz.3.2015.02.23.14.25.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 14:25:52 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0M8WFH-1XckeM1fc3-00wF9Z; Mon, 23 Feb
 2015 23:25:49 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Katie Dunne <kdunne@mail.ccsf.edu>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: replace __constant_cpu_to_le16
Date: Mon, 23 Feb 2015 23:25:46 +0100
Message-ID: <37285442.vDIcUeIgEy@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150220234401.GA9928@katie-Inspiron-5748>
References: <20150220234401.GA9928@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:QwT+pp+s0L2v4nGLV4Hn3aspRRyrSyEQLNoJXdZuoC+Vtf7ATj+
 X0gpjkcUtLZ4XqQc8OPNTtwKQgnVxb/6xI7XPkEU/NopDFfJJr0rWT96+C1JhDSIk35XLhO
 ioP40YynlGYsFa8iZf7d5+ZmEz0Dwg3ZjdvfiheqrgNxujTEIG02iM5Psij9S/x1BIaQy+k
 OwdQjQUv5lBa4y/SZyxFA==
X-UI-Out-Filterresults: notjunk:1;

On Friday 20 February 2015 15:44:01 Katie Dunne wrote:
> 
>  #define SetFrameType(pbuf, type)       \
>         do {    \
> -               *(unsigned short *)(pbuf) &= __constant_cpu_to_le16(~(BIT(3) | \
> +               *(unsigned short *)(pbuf) &= cpu_to_le16(~(BIT(3) | \
>                 BIT(2))); \
> -               *(unsigned short *)(pbuf) |= __constant_cpu_to_le16(type); \
> +               *(unsigned short *)(pbuf) |= cpu_to_le16(type); \
>         } while (0)
> 

You could fix the indentation at the same time, and clean up both
copies of the function if you see code like this.

However, a better fix would be to just remove the macro entirely,
as it is not used anywhere.

	Arnd

