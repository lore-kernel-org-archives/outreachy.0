X-GM-THRID: 6255196435658047488
X-Received: by 10.112.168.201 with SMTP id zy9mr5604203lbb.23.1456409951525;
        Thu, 25 Feb 2016 06:19:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.67 with SMTP id r64ls84684lfr.10.gmail; Thu, 25 Feb 2016
 06:19:10 -0800 (PST)
X-Received: by 10.112.129.65 with SMTP id nu1mr5687087lbb.18.1456409950798;
        Thu, 25 Feb 2016 06:19:10 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id w128si137294wmd.0.2016.02.25.06.19.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:19:10 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0LiUpQ-1ZwZfN2jrI-00cfKM; Thu, 25 Feb
 2016 15:19:09 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] Staging: rdma: Remove wrapper functions
Date: Thu, 25 Feb 2016 15:19:09 +0100
Message-ID: <3462200.DanSUfdRtD@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <cover.1456390351.git.bhumirks@gmail.com>
References: <cover.1456390351.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:+fIAXbcTOBAnZ+Z1eILSQyXMPmivyp63ApHDL73nZB0vZRh7pCp
 gaQY/V6Z4cGPBgDt3TIMTiSmrZ2oZOwvDZU64E0f37EgsYWJ5/wy2hkQxI25GRlpjz9p65t
 5Pp/Aub3NCrxpdd7EUd3xBW9/+UOK8+nlZYkmOepfbvv7iyvEEvaSDaNq3yfR4byq6RQuTx
 HnVqxtCzEAQReGdEQgI6A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:vLAcSxal7cI=:U+DWNHfThWBCGSFZTY/OF+
 j3MM8vzN3ECELf8NTHHmdMFnRam2U/eIjf0/Ymggh5/mFSKyF3ER2vXpTnC6muoM6WmnPfatY
 NogEFHovPgvykf8vSI7aaDD0lc8X/RANXzNVblpFSq92esgTvXhc2lNCGCISwp5+8TuNivuPe
 xZN7OocPMzbAPtq7GYMykhD0GjhaE7bg5qtZOXjrOOfhKUGVzLZlOew/LirMUWD7w28a/mmq0
 fnD3mTIBu9Jlz8NadLfH4hYgF6IV6j/I14/HnNWNIpN6P4IEfGVJpULLcXO+kPvS4MzaIYVlr
 HppAv6FlaOOKdRcRbIMa6X7rv7tvrjyESYk9/zLMdpAvxGq9uoPo1Q5buSc1vHohfLyOE64tS
 aznF9/j/wEny42rrSJImVtli4vZBuawXk4QbOmXkBxLPG8ExirX6IVM2Syx/LwPjD5cuiBQAo
 cE2DBOInD4BuFjKW+WAHlWQY6/REhtnfUVP4XUIcwYC1bQMXN7rwWIqXA0yRS3WLNcnUHqkLf
 mZbRohTPU7rd9LrlhDZsa7/GDoWsqG3yZcqT1YSppGNhBKbLaHHYiHIo7ocl26dO6zaDAJQTz
 hXUY/UQU9IVIzuPOj0wGF0CT9k327/iQ+Sb8r0+1MxmbtqD39XTG0UWZe7Vo3/xWxei/E8lYf
 qsosSpgjdYYdIMPZHcXQeslqhdsgOrjhHvWNIp/I2lFzMoYD+2eiTbFUY8mCHvAtkgkwigeir
 QCROWsRJGOvAUHM0

On Thursday 25 February 2016 17:25:55 Bhumika Goyal wrote:
> The functions add_rcvctrl, clear_rcvctrl, sdma_start_hw_clean_up can be 
> replaced with direct calls to the functions they wrapped. Thus remove the 
> wrapper functions and replace their calls with the functions they wrapped.
> Changes are done using coccinelle semantic patches.
>  
> Bhumika Goyal (3):
>   Staging: rdma: Remove wrapper function add_rcvctrl
>   Staging: rdma: Remove wrapper clear_rcvctrl
>   Staging: rdma: Remove wrapper sdma_start_hw_clean_up

These are all in a grey area. I'd personally suggest doing the third
patch only, but not the first two that remove what seems to be
a useful abstraction.

	Arnd

