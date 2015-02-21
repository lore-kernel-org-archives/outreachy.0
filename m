X-GM-THRID: 1969702830080
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4dff6f9f1e12e8c3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.98 with SMTP id g2mr428849wic.3.1424557779924;
        Sat, 21 Feb 2015 14:29:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.98 with SMTP id v2ls378694lal.104.gmail; Sat, 21 Feb
 2015 14:29:39 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr491214lbw.4.1424557779593;
        Sat, 21 Feb 2015 14:29:39 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id el6si384333wib.2.2015.02.21.14.29.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 14:29:39 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0M7Wjr-1XeUek1QAB-00xNcz; Sat, 21 Feb
 2015 23:29:37 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/4] staging: rtl8192u: Clean-up comment line style
Date: Sat, 21 Feb 2015 23:29:36 +0100
Message-ID: <10483546.ckjazqFqg3@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <8d7b9590155fbd1298fb2433e15d5bc40dd26475.1424538520.git.navyasri.tech@gmail.com>
References: <cover.1424538520.git.navyasri.tech@gmail.com> <8d7b9590155fbd1298fb2433e15d5bc40dd26475.1424538520.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:wVuimTFR9BWhjspM7jYEgdlpZL6bpvPbAVu4YAw2P0HNrL6U+eF
 uklg1ijyqAYELfxUf1R/Y22JGhgWPtWdv0jjmDDSy5jnaTrHZrUNykt431YG3t8tVCpO8WD
 bpRJx9v8hSKzM3gshzf7GIHbgZGAYIzoc5+aRMaFkrjY6E8ortP7sZXXZnGMzeKCP0vEj4Y
 8x2BH+ZpupH/cuu5AyEQg==
X-UI-Out-Filterresults: notjunk:1;

On Saturday 21 February 2015 23:17:41 Navya Sri Nizamkari wrote:
>   *
>   */
>  
> -//#include <linux/config.h>
> +/* #include <linux/config.h> */
>  #include <linux/module.h>
>  #include <linux/init.h>
>  #include <linux/slab.h>

Just remove that line: the linux/config.h file is not used in modern linux
versions, and the comment is just a leftover from someone trying to
work around that.

	Arnd

