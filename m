X-GM-THRID: 6201888067640360960
X-Received: by 10.112.209.73 with SMTP id mk9mr4531510lbc.14.1443991169229;
        Sun, 04 Oct 2015 13:39:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.92.40 with SMTP id cj8ls688280wib.15.gmail; Sun, 04 Oct
 2015 13:39:28 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr1467737wib.7.1443991168314;
        Sun, 04 Oct 2015 13:39:28 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id bn1si258393wib.0.2015.10.04.13.39.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 13:39:28 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0MHYCK-1Zm7rA0Dr2-003JK6; Sun, 04 Oct
 2015 22:39:28 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Do not DMA on the stack
Date: Sun, 04 Oct 2015 22:39:27 +0200
Message-ID: <5522999.85D2llbvgZ@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:vihRpEma6W26v0uNIh4mP9kn8v2MmnFAZ2l8aqF2CAgwTDN/Af5
 HO1eYblnTogqHHsLRjOgGJneCLKPjlZtRJl0P/CwY4Ggm6nap0NdR3oBd41ZI9L6sJhWYaY
 RKPsat0WyboIiNM8AWRjbVOJUIPIhRGoPNxWBeW5JIUQwmt9qaXQ3G1CWDtf8swul2bg8bE
 zuDs04NYMmZLX56mUFEaA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:KQCpV09gw0Q=:HulUSL3/adVAC6GvNHNoIY
 /nLZFgQQhHoR2szgrRM7zjhEc53zaSwyk/4smp9wlIahUzNNMX5WZHzZttLLO2pDyDGfchcWU
 zZWZHzGx/+cFqNQkalNoj4tfUr6TS2UuBK724O7lqubA7zAdaWTUFO1s+E7nVkh1O+5OvUljv
 HtbLLY9GcCn1WZwX97f4040xB6Ns8BYDbOy3c2GBZ/vhO9bmGcPXGdGDMYLEtN+jfv2Sc52jY
 om9cZoTw2DsWVUOfiypCR+1D/C6TFnRe54G8bp+plRXcyTmDeliXVPyokhMKjZTMQiO10wKss
 cbOsRDHXXAVBR6VABcHt/BMfj4x5srgTG6hpDqI309C+VbfGrPBQtf6DSB7jZjgwkygM838Hi
 UHb8iOVgG+TK9tGWHx4oHMAWpBu1Y3BjnsudO0JBBiYl3xk00GObbCC2sP1MtiZgepK+HXGIV
 9BLCvsnxweohqcxw2SPr4fNTpcoJYbW6BwG+ZzAD0smj9sk/+L0zOIrN8sAzCSTYbcT8mPi7p
 oVLxtCgPgGEfqwwUtF+oSkxKzdAjxRNjXu2idusyQdsq0tb5J2tIBjV6EzJreTcgrr5vIujbg
 aFE8I4kSI65gjV47eAZ4DuDIcEaVWOONiSsVbof6+QvAJT+WRgmpXBb+ol3umKn0hYmWQ/gR4
 pU4vYGdghTMq+HB1wId5uH5Ia4jL7DMiGZ9BIijUKLZK/fAb2Fvq27k8JDs0eOXZAGpNRD9Aa
 ycAqL555fClN8Rn1

On Sunday 04 October 2015 22:13:02 Ksenija Stanojevic wrote:
> Fix error "doing DMA on the stack" by using kzalloc for buffer
> allocation in rtl8192u/r8192U_core.c in the following functions:
>         write_nic_byte_E()
>         write_nic_byte()
>         write_nic_word()
>         write_nic_dword()
> Issue found by smatch.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 
> Ksenija Stanojevic (4):
>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte_E()
>   Staging: rtl8192u: Do not DMA on the stack in write_nic_byte()
>   Staging: rtl8192u: Do not DMA on the stack in write_nic_word()
>   Staging: rtl8192u: Do not DMA on the stack in write_nic_dword()
> 
 
The changes all look wrong to me, can you guess what the problem is
when you read them again?

Also, these are four instances of the same code, in the same file,
so it would be reasonable to do a single patch, and then you can
do the other five instances in the same file as well.

	Arnd

