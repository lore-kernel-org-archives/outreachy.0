X-GM-THRID: 3247770173440
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,352ba3b1521f4ad9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.30.134 with SMTP id s6mr17804638igh.2.1424804628180;
        Tue, 24 Feb 2015 11:03:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.228 with SMTP id p91ls2992958qgp.36.gmail; Tue, 24 Feb
 2015 11:03:47 -0800 (PST)
X-Received: by 10.236.19.8 with SMTP id m8mr8277898yhm.53.1424804627960;
        Tue, 24 Feb 2015 11:03:47 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id xj4si4281091pbc.2.2015.02.24.11.03.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 11:03:47 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0MW3hY-1Y26tF2yRE-00X5s1; Tue, 24 Feb
 2015 20:03:45 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/6] Staging: rtl8192u: Remove TRUE and FALSE macros
Date: Tue, 24 Feb 2015 20:03:45 +0100
Message-ID: <23670050.lCeLkYodT8@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <f286a0fed29701378cab40c60e1b2d72d5dae827.1424798953.git.ksenija.stanojevic@gmail.com>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com> <f286a0fed29701378cab40c60e1b2d72d5dae827.1424798953.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:5xj7irL8svJfU8VbiJ4ScO3eiqjfSE2cFyqfIbFMAsMHD3Xhni9
 dgb+4Ss/5blFiLZ6zBvHPykKHVdvPxp5qU7PEIYov9cKJXvKD4KkR384d4THCsCSPoNiSCt
 HUEmTuyzalHwgOw4YEklYFFm5+BwEJqTd3A1U+nxryRpm/abfN1BQp+hcR/TRNtHhgf6NNR
 Ajld8dvwCSF22augyz/sQ==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 24 February 2015 18:30:30 Ksenija Stanojevic wrote:
> Remove TRUE and FALSE boolean macros, since Linux kernel has already a
> boolean type, bool, defined in linux/stddef.h
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
> index c9d8c10..6c2e438 100644
> --- a/drivers/staging/rtl8192u/r8192U.h
> +++ b/drivers/staging/rtl8192u/r8192U.h
> @@ -40,8 +40,6 @@
>  #define RTL8192U
>  #define RTL819xU_MODULE_NAME "rtl819xU"
>  /* HW security */
> -#define FALSE 0
> -#define TRUE 1
>  #define MAX_KEY_LEN     61
>  #define KEY_BUF_SIZE    5

The patches in this series all look good to me, but the order is wrong:
You should first change all users of the macro and remove it in the final
patch. Alternatively you could submit a single larger patch to do it
all at once. There is not really a reason to split it up by file if
all the changes are for the same driver and are completely trivial.

	Arnd

