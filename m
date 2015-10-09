X-GM-THRID: 6203759305105080320
X-Received: by 10.112.181.10 with SMTP id ds10mr2991379lbc.3.1444425667792;
        Fri, 09 Oct 2015 14:21:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.81 with SMTP id n78ls364560lfi.33.gmail; Fri, 09 Oct
 2015 14:21:07 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr3018956lbc.5.1444425667079;
        Fri, 09 Oct 2015 14:21:07 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id ch7si25514wib.2.2015.10.09.14.21.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 14:21:06 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0MLgGJ-1ZlU2r38jL-000pbH; Fri, 09 Oct
 2015 23:21:06 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Replace GFP_ATOMIC with GFP_KERNEL
Date: Fri, 09 Oct 2015 23:21:05 +0200
Message-ID: <8361732.BvEsE9DUWK@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151009211427.GA29470@amitoj-Inspiron-3542>
References: <20151009211427.GA29470@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:LdhwXhQ+3TtLbWwiSiO9cPUi2eAF/5EeSyarpluzp0+vt8G7oCq
 76fzKlwCy9Z3mzz1wNWhAkICwtXt9mkEpYQTr1v4wBjuzPaFP+UA427wvXt3WuhvUNBiyHF
 aTeXA/VtzPQR/jS2kiWwfe7AsN0ffFyfRChG65/NoGJJVZgY6ru4tUCFmNB+3AnA8tWtiR4
 XB3Fv/Y8LRpWgN2+brbnA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:MpjsEkODLLI=:075qGtifvAotkvoBqt9DKk
 R1mC2v4DllUiF1GlOHyajcnTfofJeL68ZI0x/bDHvx0QfKcNURctvWWoRB82Hm2Vkqiyc/AaV
 xdt6x4MQVukuP4vkF7tJYDsdfItsE2e9Z7s/zFvamDDDTHickQVmgG0NNnhD0znJsMQyN6I7I
 lcG/txjphMfUQulZzAr1aImDUQyd3YKvc0n4qDxuO/ZQkRonnYftgvUqZMTrwqpxai9nSshiF
 nyZCkiYj8wP86ll7qqQEpYvKNCGPWFgGBG698tyHJSIv19APsk73YSTCxvwHue0Iuz/KyedJV
 b/+izbZGdCeKTIdWuqQVXQmgl2pvZ8rZ2FfyCJ8YovveyVxvcpK6r1PYQUljxFcdt38KQIGU+
 aj4+UXTYKkZLR1xrFr1/+QpeXc4Nrs4zDsMLHUQNfpKzY3J6wOEztgJvQTEnE1QBdZjllyJs1
 A3EiC3BVapaUqzOLUXWEV/qZtJur4MbR82FCRONQqsyB7u4076ooXz0Ln8oyqJXhrBHCdSQJJ
 7XBWqCWgXaFmeCobWYu5q3KBixA1VTXJp4CBqZ9SnUy0X/XjDVWpCX4g+23yOdCuOSptYrXMn
 1dTx+Vfi4tfVRsf3//K1dVGcSvz4URm2KvzO1kBLTFbY1ABuoZAykRwqW+XzaTsOWeH2LWqAc
 PePisA9bTSzD4vA2l1mJrxQm+M01zstZZqiq/ELcdSQv0L8IRKwhh21Arg5UXXGd4fWcmXGBI
 CJzjiWOAt75rktDq

On Saturday 10 October 2015 02:44:27 Amitoj Kaur Chawla wrote:
> Replace GFP_ATOMIC with GFP_KERNEL since the function is calling
> sleeping functions.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

The sentence is missing a few words I think. The fact that the function
calls other sleeping functions is not the reason for the change, it's
just an indication that the change is safe. You should still explain
what the change is good for.

	Arnd

