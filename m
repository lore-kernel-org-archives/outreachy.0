X-GM-THRID: 6251802816159940608
X-Received: by 10.182.148.71 with SMTP id tq7mr19462403obb.21.1455611622082;
        Tue, 16 Feb 2016 00:33:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls261239qgf.38.gmail; Tue, 16 Feb
 2016 00:33:41 -0800 (PST)
X-Received: by 10.31.165.1 with SMTP id o1mr20297025vke.12.1455611621048;
        Tue, 16 Feb 2016 00:33:41 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id v197si2310154ywa.1.2016.02.16.00.33.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 00:33:40 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MaD2e-1aG7Wl1KX2-00JtZG; Tue, 16 Feb
 2016 09:33:39 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: host_interface: remove unused semaphores
Date: Tue, 16 Feb 2016 09:33:38 +0100
Message-ID: <4981983.aWxGuik0IG@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <56da9617c7a47e0d72e5f2fdf4cd4432c4cda842.1455609607.git.amsfield22@gmail.com>
References: <cover.1455609607.git.amsfield22@gmail.com> <56da9617c7a47e0d72e5f2fdf4cd4432c4cda842.1455609607.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:+YNIVcqIDbP/243zRzTBmREoRfiwDYHYVA6fomC6Hbuk8mFFUDe
 cg6b6CtAX4H6cERM8zvsG6Z+1dIdkI3hPNZFCPL41ufR+X/RVt5de2q6fYpER0KPBmO7HeQ
 AzjSD4NDVQFQwYJfYNjp6XuXbmzGsE5wmniVdwO3LqVANNBpo9ydP9HiBHbYC9btYFcakYW
 JXvXurj+381zxenfikBEw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:mvFh3OgEwCg=:Q4t+0t9/ROYwFzqhkCI1Qg
 HnodOuRCB2yvv/44F7X7J/e405Sx9tsbenfzDHtsqMU26bOIq44W5nHkJMM5fGv5YZB2oW9vc
 aKN+oT78FH4WoiaqECkRdLVCJLT9xwj1U1+oe861yjZh2TJAma1lWj7NAqnaJtVnQIsCe7Dp+
 xWrPSF4cMlA7Jc3Jz7T6+srtFzusG5aRVR34zP9eakvKLOxlMoEm8z1SnM9A5oNyERF18QauI
 ZQ+WLl2WZZVpDW7U3o59OVf0sd+63rUOmEUHZD6D3uuse9o3Yx8aC+5yrWkPCMr78+pMKgw3L
 Y3B95i1Qopupq/lecdN48C6z3PJp7zJF2EU8GWif10nFQ+bhY9OULbNJQXeTX08dsSOFmD+5S
 j+7rEGhceTv4AE7vdxdTj1InXhQH89EMf2lpRJwW2ep0KyMYoGtVekOHVecfybLCbypf496IS
 DxCc1VbUXCmzUjz/X6xWIf4Bg0nlBnnODGZaXFstsJoFkaMCDdGCOB5ohPuRYcML+tZWa2ckD
 BQBw6SWkz0u90es5LqkIHH7SzC56DZ/xK63f7ym98fF6lQzry8OG2N9AkheSR9bvdbCR9vOr5
 cLNC+8R2Wms6YLNpo7TmPVb1NZ2ilul+8zmwAaFrIoepZep6La0vRmVIKYJUbpEZYmW9L0xgj
 TUweBMuxz8fq5nd3tL1wdevVYqfzodAHSuu/I3JyNaH2Qrt47uC29Qc2Bp0ZKoSJZ4c2u/nKT
 6KP9wh7FPsqN+iip

On Tuesday 16 February 2016 00:30:35 Alison Schofield wrote:
> Remove unused semaphore declarations, initializations, and unlocks.
> 
> The functions that locked these semaphores were previously removed,
> so this cleans up the remains.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> 

Nice!

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

