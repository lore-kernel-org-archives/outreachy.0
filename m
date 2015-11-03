X-GM-THRID: 6209338350434779136
X-Received: by 10.28.173.83 with SMTP id w80mr4050606wme.0.1446593158584;
        Tue, 03 Nov 2015 15:25:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.212.67 with SMTP id l64ls877228wmg.44.canary; Tue, 03 Nov
 2015 15:25:58 -0800 (PST)
X-Received: by 10.28.145.198 with SMTP id t189mr4016560wmd.5.1446593158250;
        Tue, 03 Nov 2015 15:25:58 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id t2si725007wme.1.2015.11.03.15.25.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 15:25:58 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0Lm4GH-1aSojM1HPt-00Zd6L; Wed, 04 Nov
 2015 00:25:57 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v2] scsi: bfa: bfad_bsg: Use ktime_get_real_seconds()
Date: Wed, 04 Nov 2015 00:25:56 +0100
Message-ID: <5161877.bNvuKYDB39@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151027075901.GA27166@amitoj-Inspiron-3542>
References: <20151027075901.GA27166@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:WTW65PfiDJxdHlLHiHr7MyaIecMNUmQhqumCmA31thP7FeilxFW
 gp5mYg6ubh0qMN2DcxRo0UaTyKjF3na7w8d88DMdfWnkTqb14ox5uVQ7DxrjHtSlf5RZQKT
 erk5GRUNCYiq+L1wutNldliGnMabeA+O/xRgsru3Asfrtq03V0F8qcmzNFEhSjX3782vpHh
 Loh++rLdOPOkg/Pyz/new==
X-UI-Out-Filterresults: notjunk:1;V01:K0://sz1Hkrkws=:mG3ZO1wNWbl1fEHoVvLoPM
 yPastudzkafYoq/3LnSquTgSQNL4D3MLFTsctEF7UiJJpUeS3xoYdNeVvnDle+lV4X6tzFCYV
 OkRhFTdUSPenpjAotN0M1iZhsWnU2LQUvZ7P2JwQ1uVAQsyypEMNjD0GDg0z8mlzaqOgbEa39
 SAHaq9khPCX2lRMvHfMttcV/hgn0vWYCkXZ7u4frEY/Ydd7tcoWvpxIoxczB5qa87WgpmBwY7
 A8laDot1o4TQAWv9v7PNrgPqRZgI19AVmAlzO0823lBJNSMB1R9YUyUhLIDPn23OtaNFAEK0j
 MpVUSKP0XoMEjjQiaJLo07zHM7lWD0tXfrumOz142MQXBLqn9B0w81dSudeYso1J96+za1RGe
 D0SmfXC2pHBGEXOb/CLKwIk+YWAnN49Te/RUxNXFy4/2KOE8VE5UkCRZR/uZ/gP0p0abVQBs3
 LtAr2JIkvjaJteg3Y+Vx/Kee4wI0XJNab7sd/PhKqXw9GLRhDg/+mbhqMQa1luaVClyiwjchQ
 jSdU/T37ZY2CB71YZ+W1iPjAA0lnNnMLSlGCda6xapZv2ueBps2m/kBg/BLp11sI17ZMneXzt
 Y3/ppk5QwLYxlBeUr+BXb/2qZK5nV0COu4bwIDS4fI0FvIQgQhuYDfG8lmSwUvOm1mYxG0xSA
 K6e+zTdre/s1P0A1j0XHliKA1ZdihbIyjTPUKap6sX3UqC7hdhyJ4e6recAwAHRbnhG3EN6FU
 QD3jT/U/unb0VpKx

On Tuesday 27 October 2015 13:29:01 Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval' will break in the year 2038, so
> we modify the code appropriately.
> 
> This patch replaces the use of struct timeval and do_gettimeofday()
> with ktime_get_real_seconds().
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 

I just replied to v1 of this patch, as mentioned there I think it needs
more work, to pass the time as time64_t where possible instead of
implicitly casting to u32.

	Arnd

