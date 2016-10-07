X-GM-THRID: 6338573496941019136
X-Received: by 10.36.44.5 with SMTP id i5mr2820723iti.32.1475826831648;
        Fri, 07 Oct 2016 00:53:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.248 with SMTP id w111ls4241177ota.38.gmail; Fri, 07 Oct
 2016 00:53:51 -0700 (PDT)
X-Received: by 10.237.41.231 with SMTP id o94mr2258461qtd.47.1475826831086;
        Fri, 07 Oct 2016 00:53:51 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id 7si5677758par.0.2016.10.07.00.53.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 00:53:50 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.43.20.153]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0LkhLo-1bIFkC4Axo-00aVmE; Fri, 07 Oct
 2016 09:53:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Elise Lennion <elise.lennion@gmail.com>, aditya.shankar@microchip.com, ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: wilc1000: Move externs from .c to .h files.
Date: Fri, 07 Oct 2016 09:53:43 +0200
Message-ID: <2193176.yJZr4J89QQ@wuerfel>
User-Agent: KMail/5.1.3 (Linux/4.4.0-34-generic; KDE/5.18.0; x86_64; ; )
In-Reply-To: <20161007042221.GA23529@lennorien.com>
References: <20161007042221.GA23529@lennorien.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:fq5WHQtMdEY/sK04s6zkmii4x3XJTLhB3GWowE7vZ5IevF6F48g
 ZTsLaPMVUfwXg63q+NSaKkdQOBcsFjKdKeQypCMe5M70nsj9rsuq8FNvuTCbrEl+Z2Nq1fJ
 RslFC/15sc/a2kzLrreQ316Kw0otQMFd01xKxTeWFLIJxECSAUUsd78+ZAeGzdneWFNHot/
 MO9tHl7klw9u15MSK1plg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:tewQvfXuWD8=:SGuYJJ7ZwgsOtSSovT2FXd
 /Aj3P4N1EwBSz+GsFKpZ3OVqWXez2+waIhbjqUx5GeWb3RgH4aOBADhLaVzJLGHFvIk1iQDuz
 EhPDQgu2wtHfQUhIIJ4DD/gTHChN/bwFwy1GOg/iTMbM3Ue0Apt/affnKD/s7pcfWDKxa0UMR
 p18M+SICxRCkEX+U4EUzg0f76KomeQ5L/cIYGubzEyq0kmdA6m5vJ7vJa52NodpnZJOhu+Sr8
 9pfJpFnweUmAfbMflR5n7TyqlFM7Huqj+gQ60wVMqVDXcUS0VfrQeuqSqi/ASoQnqwP44oHAQ
 9No4ocipdk0apniE/txhYE9nZ18bteKPDmZLnI3j3cKEqPBma8n+O0WhP4Yuy+LSuNLf64l6N
 njHkIsr8cxvxHt8uQ6JHnKtz1nadfKOT6Q34zqGn0lAGRZsofOd0H/xq5ML0rMh0AvurM9CnX
 1Uno6YIY10YEM0NTwWf72QwEpWRtsyxh84D5VaNj0JJYt6ncmJFSzfDbS7Kg4W02r+mn2woRI
 n5sxnFk9NOE6PHkuoaGsOrdrSRATEFivw8vwE69JXTQ9mO2XkJ7Mp4T3y2m5QnmmUVagAE6QS
 xXtNuZasLR+e/sheMOCEpCaWl0kL1B2xmsb82S2/NTG7wKqFe4MU3ZMyI8j/Y/4oPVju8zNDp
 odXTRSkaHrpX2E6TJvkzGq7nDMxKoslh3it1ezTPOtrAle/V5AKbWDYi4+hAXpqfWzMpLL7yu
 jFUhHup8BuhVfcxG

On Friday, October 7, 2016 1:22:21 AM CEST Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: externs should be avoided in .c files
> 
> Keep externs in .h files is better to keep the code congruent, also makes it easier to change in future patches.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> 

There are already declarations in wilc_wlan.h for these, I think you
can just remove the duplicate ones from the .c file.

	Arnd

