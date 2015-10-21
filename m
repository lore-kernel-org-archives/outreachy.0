X-GM-THRID: 6208217817238470656
X-Received: by 10.112.198.33 with SMTP id iz1mr2741575lbc.8.1445464140714;
        Wed, 21 Oct 2015 14:49:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.169 with SMTP id b9ls510138wiy.35.gmail; Wed, 21 Oct
 2015 14:49:00 -0700 (PDT)
X-Received: by 10.180.89.41 with SMTP id bl9mr2840274wib.1.1445464140092;
        Wed, 21 Oct 2015 14:49:00 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id c7si937615wiy.3.2015.10.21.14.49.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 14:49:00 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0Mf6Az-1a9Afa0TzV-00OUbX; Wed, 21 Oct
 2015 23:48:59 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] firewire: Replace timeval with timespec64
Date: Wed, 21 Oct 2015 23:48:58 +0200
Message-ID: <6860460.1I4Oque96X@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151021213544.GA2468@amitoj-Inspiron-3542>
References: <20151021213544.GA2468@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:RGsm4U5fWB+9NyRsIuuZDJJAkHhPAr0+XWcs7wOuglm/0pbGgKS
 CRMzdyh1cWqTrja3Dz6tZALScOeKvjrgX1ZAq26LmguUMegHJ54VoCSWhdzHqBsKDJV/jSG
 bUGriRWIaiGyzfB78Bj/UM3Zz7IxFJ+eoodNqT+ZUAommIibbWalVUbp529P6uW53YLT6Xg
 Y6QwMUbhgRtt6iu8OJYNg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:O8tgyWzFslA=:A/d3oH2YPXe0u9HUNZm4HZ
 ptWoPESsgJvo+I5kRigvGouztEJNmVQt59jABQXnGjfpNKYJqXYQ3BW7GYSsMwZJo+72yGNIn
 MSqoY+XOsDLQHKSI/2dMec88ypEBEykcgx7GBCDCUFb1Pu1VT0CTUHRktLNAraPnXlLJ8shrK
 a/5MmpJKBsMT9G/hl7lcZzlfzDinJfL8Ck732nLd2QHL8Pp6DzO+VlxAiUxWIBSf5YKq0CwUn
 e8+f84M2j1HfsDr7xJyGOu8WBAH6FgWA9iOO9xZ/aHu1HjToNblYf5BZd1WCuOpMxDbnOVYlx
 Nl2Kf6TWl+OsDzSDMARjS5sdHP43yiGAv8xnhtdYM6vtNFVknKQirwQvDz7OJWOP/9vsmp6bX
 7XNyZ1oLUAXl0xEj3d7HxbzZ2XekoRD4BnH5B0KWUg86RL1NuVwUZzc8wGY27fKNr5dVkbN62
 uHeS01i0GQVXnDjB3zO0FwBUVPCfNBSo2pDKOol5Ity8DSCNQTkXmUao+/2G+ItddEb/DXgTh
 91Qrg309b7gjwyNR1vGbPntuXn4CbG3sQBlwD5xS38aT4FTnip8wQtWb472ka8FntXrOcrG3d
 /pDZyba9Nhk1qA/a0lEJrGnUAL8xkRtGXLuxSausWY+zKTveHn6liOGGC5JNq1goeHzvFR7V5
 4QAzVHOEwD7w6QUo+iU1KgTJis2MJehAOy3Le9q0vaWVGlhZzvuTsc9QhYkLAHbfTJZ427Dhn
 9UN8MIbKydDiEqJO

On Thursday 22 October 2015 03:05:44 Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval' will break in the year 2038, so
> we replace the code appropriately.
> 
> This patch replaces timeval with timespec64.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

The patch looks correct to me, nice work.

A few small points:

- It would help to be clearer about the fact that this driver
  is not broken in 2038, because we only use the microsecond
  portion of the current time.

> @@ -413,17 +414,18 @@ static void
>  packet_irq_handler(struct pcilynx *lynx)
>  {
>         struct client *client;
> -       u32 tcode_mask, tcode;
> +       u32 tcode_mask, tcode, tv_usec;

The naming of the new local variable doesn't make sense in the
absence of struct timeval. Either rename it to something like
'timestamp' or remove the variable and do the /NSEC_PER_USEC
computation in place.

> -       do_gettimeofday(&tv);
> -       lynx->rcv_buffer[0] = (__force __le32)tv.tv_usec;
> +       getnstimeofday64(&ts64);
> +       tv_usec = ts64.tv_nsec / NSEC_PER_USEC;
> +       lynx->rcv_buffer[0] = (__force __le32)tv_usec;

I have a small preference for ktime_get_real_ts64() over getnstimeofday64(),
though the two are functionally identical.

When you have addressed these, please send the patch again, and
Cc the maintainers according to scripts/get_maintainer.pl.

	Arnd

