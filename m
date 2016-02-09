X-GM-THRID: 6249137798348013568
X-Received: by 10.112.169.5 with SMTP id aa5mr4063933lbc.12.1455032807367;
        Tue, 09 Feb 2016 07:46:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.28.9 with SMTP id c9ls838062lfc.71.gmail; Tue, 09 Feb 2016
 07:46:46 -0800 (PST)
X-Received: by 10.112.135.234 with SMTP id pv10mr4030631lbb.24.1455032806876;
        Tue, 09 Feb 2016 07:46:46 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id w128si561356wmd.0.2016.02.09.07.46.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:46:46 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0Mbyf0-1alON61ytC-00JL3J for
 <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 16:46:46 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
Date: Tue, 09 Feb 2016 16:46:43 +0100
Message-ID: <2431688.NvBMsGsSsv@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1602091618300.2578@hadrien>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com> <2688292.r6RqQzfV0D@wuerfel> <alpine.DEB.2.10.1602091618300.2578@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:4r4/QHn3pf/5uai3sqEf8eniNAV2ezssnbiuPokLY0OlAE7oQgT
 1fhmOc4erwmFJvTEWPSsquMqplEPShDmcWQq7UJKTVn4PykfmpHEbaPHV0+XDmYsy8YK8sr
 7hlxzq2wrWXIBQwgR+wRXmKvpl5V9RaGB1E3a6rSQmgto+D2x0PmJzS5FiF1J7H8AeW7mv+
 GKGZu903Uy/f+hE58P7yQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:0N73rZ8qtPk=:d7RXmxyl1A8Hc+1HmHBHxZ
 xS5ElMjuQ43vtksc9XZHjraFF9hqP7kqpUCVQfl+k2zaRVxuhlU2NF0nYMuBQl2nrbDfmLdhI
 Ie0U/gHoN/1Ck6NTt/kX74ujwiPKNErk+QDILjlffM5yj+Xw1ZYFMqha0WkJ/6ekCvzlS6MD2
 kB2l/yYBkPkAAM01Ywt0i8pm+QzGFMb0MIhpMPlIVJkXgTyvFyPP2ZZJhRIUPJf12c++VOBFy
 FCaVpMc0Vx/Hg3A45+oeKwJCsr9/gt7J1wIUlm4a3w8n6WQVddqK+HE6ljGKNkarLgh8meG86
 Ead6M7RpN2239M5Axf85kAbNhSWWQ1Lnfb7OXMHqI2Nv0XWzk6CjsfC2vAy0BkPYBhlWc+ihz
 TlfixDW/AvHVsxR3/cdGFdn3Ywn4Vmq+PI6ip3XyzuKju5XUNULT+MG8o4TRfFXoG62ZWWtof
 T+4e/S0uUYFxtwHtVrRx93Ul1LvE//BkkIfeCS3vFP9IRaY6wHXI68g2XI8ZhxxhH0bohbRQj
 dEuMki4bPMnucf2+hZwZs+fF3segzuNlhUZjjo4f46wUJqj52Bey/kUBKJQ/74MbkFELZXo8k
 nMsEBwNdOgLJCnb+6YF+EOmACvGL8PlbR5A5PUbjO5DbAtY9oBP/7HOqMTEvz7IGUCmbZGXl5
 jVVXH7Kbl3yXGVmsGY7/TDoPnu5nTC928RYGx7bKeVLRRX/NTE88RsZbmkeTBD67RxPS0eheG
 t3BWTJ7bBl23aLxT

On Tuesday 09 February 2016 16:18:55 Julia Lawall wrote:
>     make M=drivers/staging: This seems to try to link the modules in a
> previously build vmlinux file.
> 
> Make path/ could be a reasonable choice for a localized change within a
> single driver, or for a change localized to drivers staging. In any case,
> as a minimum always check that compilation produces a .o file for every
> file that your patch changes. If there is no .o file, you have not
> compiled the file, and you need to look for other compiler options.

Ok, sounds good. I've added a little bit more detail now:

http://kernelnewbies.org/FirstKernelPatch?action=diff&rev2=25&rev1=24



	Arnd 

