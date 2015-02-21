X-GM-THRID: 2063631122432
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3dfa74777ed570cd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.12.146 with SMTP id y18mr431717wib.6.1424557628227;
        Sat, 21 Feb 2015 14:27:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.13 with SMTP id n13ls26330laa.80.gmail; Sat, 21 Feb 2015
 14:27:07 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr468188lah.8.1424557627764;
        Sat, 21 Feb 2015 14:27:07 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id ta1si381805wic.1.2015.02.21.14.27.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 14:27:07 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MXi3q-1Y53xV0pdu-00WZ0f; Sat, 21 Feb
 2015 23:27:07 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Convert comments from C99 to C89 style
Date: Sat, 21 Feb 2015 23:27:06 +0100
Message-ID: <8354413.1aOnaUxJUu@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424548498-28694-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1424548498-28694-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:iUWJs79+gLTy6MGaEIc/BTwcnK1QXm+hdICjcWghfSLiu7GfiiC
 mMPX5MJeEC/c74wOmkWZyNw4YDs3EL7CcXmuuBxR1R9544rfcAQSTw17LVBNjbU+fBclENF
 UZltjF9STXjOHukD/3W08yd8xgFIc8ComwQRtHgGxaFM7DxxdXDB2Vb6Bmb4Dwmr0VlHIDh
 d0qGKgCn+kJHoTmG077OQ==
X-UI-Out-Filterresults: notjunk:1;

On Saturday 21 February 2015 20:54:58 Ksenija Stanojevic wrote:
> +               /*  */
> +               /* Ref. CCX test plan v3.61, 3.2.3.1 step 13. */
> +               /* We want to make the device type as "4500-client". 060926, by CCW. */
> +               /*  */
> 

This is not the correct style for a multi-line comment. See
Documentation/CodingStyle for how it's meant to look.

	Arnd

