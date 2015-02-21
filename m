X-GM-THRID: 2050684354560
X-Received: by 10.194.86.1 with SMTP id l1mr471791wjz.0.1424557710532;
        Sat, 21 Feb 2015 14:28:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.161 with SMTP id dd1ls321339wib.49.canary; Sat, 21 Feb
 2015 14:28:30 -0800 (PST)
X-Received: by 10.180.94.134 with SMTP id dc6mr434246wib.2.1424557710305;
        Sat, 21 Feb 2015 14:28:30 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id ta1si381930wic.1.2015.02.21.14.28.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 14:28:30 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0M03PY-1XXbyz3h9A-00uMFn; Sat, 21 Feb
 2015 23:28:29 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: bcm: Remove space before tab
Date: Sat, 21 Feb 2015 23:28:29 +0100
Message-ID: <6169966.dlznF0JYIW@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424547956-3686-1-git-send-email-yeliztaneroglu@gmail.com>
References: <1424547956-3686-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:b+SlWJd9b81iQOiY5bNFC2GASWkce1k1ZUgDpG62T6nQ9IzLFGS
 Tv55xdfeq9KU5nXrMQuap0AJWXXBTmxThTmHrXwhHpSPuiWKlVmvbCgr53ypIWrE2Y/xym6
 EpGqm0/nQIYoCkHv5cRpaBvmRjez5pYp7dC33uYYosIgm8rV0zBAekk1Eub2N8TcLT0xp/1
 WWJA0UNTXk+QsRXMSOH8g==
X-UI-Out-Filterresults: notjunk:1;

On Saturday 21 February 2015 21:45:56 Yeliz Taneroglu wrote:
> --- a/drivers/staging/bcm/headers.h
> +++ b/drivers/staging/bcm/headers.h
> @@ -1,6 +1,6 @@
>  
>  /*******************************************************************
> -*              Headers.h
> +*              Headers.h
>  *******************************************************************/
>  #ifndef __HEADERS_H__
>  #define __HEADERS_H__

It may be better to drop the comment entirely. We normally don't put the
file name into comments, because files tend to get renamed a lot, making
the comment incorrect, and because it's entirely redundant.

	Arnd

