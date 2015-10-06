X-GM-THRID: 6202613271340515328
X-Received: by 10.194.109.233 with SMTP id hv9mr6821880wjb.1.1444159523315;
        Tue, 06 Oct 2015 12:25:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.231 with SMTP id fb7ls1139074wid.38.canary; Tue, 06 Oct
 2015 12:25:22 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr3719457wic.4.1444159522904;
        Tue, 06 Oct 2015 12:25:22 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id h2si255143wiy.0.2015.10.06.12.25.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 12:25:22 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0MAHYP-1ZunKV09Kj-00BJNn; Tue, 06 Oct
 2015 21:25:22 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Do not DMA on the stack
Date: Tue, 06 Oct 2015 21:25:21 +0200
Message-ID: <5271552.eVnCbIod9Q@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1444158431-4229-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1444158431-4229-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:2IJq6Th2aZzv/sbFHLJLTmq0DCoQZdiNCTlC2nz7ImH7XbShJJw
 d56HSt0XAwqFxub5ZumqkaIb2Z5WKEktc8TjaUy3NzZklVMTHcR1sJK7k4Jc5A+Ymb1Rh5S
 XIckvAkTszadR8xHt0pRxkYuphi+Hm7YI15X3TSb1WjET/6JuG1+zTnzs9e+8IsKZMcLK7C
 l9D4q+26YriqqN0JILKLg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:EKLtxX+L4h0=:BZhAGNvlqsdjxXAOZFYiLz
 QdqqjjhAsyIxZamt3pXICFFm0z9/gVEhxVuhgdOtqogVLhTBd2jeOYZy3HCBCQgwmovAaO+w8
 pWl73Uehxb0XnnFlkpUJT70wPQWrWRlpsTtBjazwAxvVZUvAPN7kR4s324gy/9aEiwvmfMqA2
 ZgDu7UeZm8PXfrlFrsBgQkJnbI8/3xIbPVHwamN7QL330JsAWuowmca1pIlYRoQUyeu9rgHJO
 qscObEIR/Xt+VwX5NV0Yb4MMAx6bBMupCyujxGq9czikK1d5Ydiy6scItqtDv0Ba1nuLldJNB
 6N5ne1myQ0ZlTCX9QyQyNWs88mPsZLI/X3zH9tEydzJHHOwoGsIEGvHVM4ceC46RydM4ccpXp
 wVfN66O4ICRHaG575L4eLjI0fI3UzIMtC3kJf4ROqJVBRoUbCKodBpCjkZmtEtoqseIQcHDvQ
 gkuJBMl2H1Wh8Wl40hlE0Vf6F/sfUYOx6OG57RpF+954F9ThcyoVyat1eaCcHJzPlrukaqJ6x
 y83hNhU7bKonjtwjY9FZyjU61pchs/HQRDr1+3/ofodTJNoV7juMbwqCLzBPX+8Dh+Owr4U+C
 qjeC4PxqDosN7pbSmET8ap6U2WAQMVNF6cKgfCADDDgLGTo6Gw4z2dqXu+jt5C+73MYOe1F66
 5df1idKORj5VjNi17g5nnXAJHawyDqynEbh7iGvXRVURh6Z8WKWlmVhzCSv4QN4RcWlKRJ5ZA
 quCQeEvNpAx0JExj

On Tuesday 06 October 2015 21:07:11 Ksenija Stanojevic wrote:
> Fix error "doing DMA on the stack" by using kzalloc for buffer
> allocation.
> Issue found by smatch.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 

Looks correct to me now,

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

I have a vague feeling that there ought to be a nicer way to do it
without having to duplicate all those kmalloc calls, but I didn't
find an existing USB driver API for that. I'm sure Greg will tell us
if there is one.

