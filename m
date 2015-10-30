X-GM-THRID: 6211478013725376512
X-Received: by 10.194.80.103 with SMTP id q7mr276714wjx.1.1446234061025;
        Fri, 30 Oct 2015 12:41:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.131 with SMTP id y125ls252165lfd.60.gmail; Fri, 30 Oct
 2015 12:41:00 -0700 (PDT)
X-Received: by 10.112.134.129 with SMTP id pk1mr2041262lbb.24.1446234060467;
        Fri, 30 Oct 2015 12:41:00 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id s134si118451wmb.3.2015.10.30.12.41.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 12:41:00 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MDEgG-1ZiPG32gAu-00GZ1z; Fri, 30 Oct
 2015 20:40:59 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: llite: Add __user annotations
Date: Fri, 30 Oct 2015 20:40:59 +0100
Message-ID: <3734328.UQFFTVvvm5@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151030162658.GA14714@amitoj-Inspiron-3542>
References: <20151030162658.GA14714@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:NHzoBr+7L3psiQ6LWagXN5EPln4JIHw8Qnpz+GDfGBvrBUtgqsr
 2ZyqZeL3skaF9+LEwTA+9QSR5IXldN8hv3W35EfqfpOuoEgVqa66PUcF3U5cHjg3o4if5uP
 GLA6SqCMwOXfsl+EkcO9UPsjbyXCMUnqQSG5z//mFZOaHkIkaksF2acY3DD33gkSwilxvJG
 soXGo7FxjlgOtYzoWBU3A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:NuV7RSV52vk=:oPaDJ+e6EtlL9At5XN6hDV
 EjAl4daonoIRXDKXobvgYqkXXNypAm3Oj5tXYsVsjgI3hPY/Let7mJeEly8RcJaCZF++rulok
 zmU2moTDyddot5PQ73PKK4czVo0uoZwVgrea0kniyIkCMwxrCj8Fb3Dnc28Rl3oBEBf+QNEyD
 wn07vLQO1mF7vw0LEVYkESC3lE1FS6gOcnSUaOTlb+3TrdaE+n/dlqCJNdjUddKtEDPpquAU4
 mnv9SMgDqdJ79AWcegdNRWIGYz85C9hNZuPOMDpbHXbwnA5vmD1U0e1DwsSSP8+5Oy0mfSJEN
 Ys2/7O6OwcG6ITbZlpl+cBu0YXfvrf7erVexB/bB76mCpw6WTUdNqwZhXqZR1a/JuMdPAU52/
 JJpjQJXz6oW5OEMPoSs03R5Tb+zzeRA8kASaWaqCgbneJHbXCWtdFXngiN4kWQ2D+sPJ3UOtv
 23G9n3pfwkZpHR43uFV3V7c50EPO6MGhUkGNaBQans3ghOWFkL1qZgaLxHPB7AVTpirYVPLne
 4YLyFLV64MN5g03Kf+Bb05mc/XArcNGzJrDjUMTUx3PBXU/78+VN0xVyVK6bfNnXAxI+KFSCW
 LzS6FIkAREFLmK/AjzofOy6neQF0r7PaTVWUHJdszk4rGCTMd7C5C5bcDbOkAY5vc4g5WY+Vg
 m8wRwKo9QkcYVXVzO99dojt9bSlvFX6W6lgdLUU6KKecfSW+smTXSW4LV3DdOBMdsmZGgDCgq
 Gi9jZeYT7mIXm19R

On Friday 30 October 2015 21:56:58 Amitoj Kaur Chawla wrote:
> @@ -2245,7 +2245,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>                 struct file *file2;
>                 struct lustre_swap_layouts lsl;
>  
> -               if (copy_from_user(&lsl, (char *)arg,
> +               if (copy_from_user(&lsl, (char __user *)arg,
>                                        sizeof(struct lustre_swap_layouts)))
>                         return -EFAULT;
>  
> 

The same comment that I made for "staging: lustre: llite: dir: Add __user
annotations" also applies here: when you add a temporary variable
at the start of the function, you can replace all those casts from
arg to various function calls with just one cast.

	Arnd

