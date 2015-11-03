X-GM-THRID: 6212180238047117312
X-Received: by 10.28.170.203 with SMTP id t194mr4037778wme.1.1446594805072;
        Tue, 03 Nov 2015 15:53:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.131.147 with SMTP id f141ls954691wmd.12.canary; Tue, 03 Nov
 2015 15:53:24 -0800 (PST)
X-Received: by 10.28.173.83 with SMTP id w80mr4067373wme.0.1446594804738;
        Tue, 03 Nov 2015 15:53:24 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id g18si757737wmd.1.2015.11.03.15.53.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 15:53:24 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0Lzb2g-1aY23l3SJ0-014gqF; Wed, 04 Nov
 2015 00:53:23 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] scsi: bfa: bfa_cs: Remove struct timeval
Date: Wed, 04 Nov 2015 00:53:23 +0100
Message-ID: <363905772.VYOh50Umob@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151101135158.GA8158@amitoj-Inspiron-3542>
References: <20151101135158.GA8158@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:AAAMXiCYHiWQ7uyYPSvQIavY5SGig5psTdKM6aP0ku1kbgOK4oR
 DRliX/MiPKAXxURC1Rxbkizue4NbXymVDkQX/05GkMlFwVd1mzyqe2FwGd3i0oXZJHvkZ9C
 ldt5gjgpWxzpDoXLkWIFpKVMK4h3XfiLYCztTCNpts4XHKGO0d4fzLk+U2lxzIqTzH+thFL
 IgHgfPR0SppfsUtHKts9Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:rS2jdWuqCwQ=:RCw7Uc+DT7N7qR++vTByz9
 7H/YFIJlgTcrpz23KXbCJMADZ0iCQP6TYr3U+7oJ/jftXV/p+CXCvzC9JCp0L3LuFbVe3pWX0
 rzvPbGknO90DXCzraUWl7jhW44KAe0JOcAcQ+mLYu3vBjr8R53jdoQJYLfV1eQRjxunqQ1nqt
 FEvMorvVEcRtQB1eJUPxpXHsy/Yubvnhi09Ns2wIcXMAC8TzIy3GLVk7OXeVfY1BVh89rBlwV
 yRr/6YhGe5WVkgR/6SwcUqywZX8N3uLg6A82LeTGOBk6b4O9gy0xWbS3QqC+q+hOHRy1tO+U7
 2iaT3EWPp2EYynaj1O7CgloLsJJd32tZCoKmsx536OH9N+4t9/BsrLfCXQk94FARA5AYRYrLb
 HJuI2RWpSqEBT4HehXk3KTzXQ8ynDn5xhXbLpg371sd9vPFO/f3i0/wJrDbvQNqOqePTyr0p1
 p4u1kO5xSBEVtflisCqCmflgRQ521SANf/tTXCpUg412UZMWfG+XqP+qW3JkD57VZvxxArSTy
 fMy86V2Mp8Vv5h7QSRljuwNl1k9z/JrCWnNu5HUkE1VCq3NiP5+2CJ9pGICX/qCdJu3BRMz6G
 SIsLOdaAt8kHGva8Gpgq30tTHio2it0bejtYgk9pj1TJ//x3POXCbXh34S6gl6I+ob/U8w+HM
 la1J9OfU4TeBPy3kzrfgkXG5YCvDlu8eTFDSYc+dyEsAqQTru5wyYSqIyyrrzoVKhDgQi509+
 lnKtjx2nwPKpj7DQ

On Sunday 01 November 2015 19:21:58 Amitoj Kaur Chawla wrote:
> -#define BFA_TRC_TS(_trcm)                               \
> -       ({                                              \
> -               struct timeval tv;                      \
> -                                                       \
> -               do_gettimeofday(&tv);                   \
> -               (tv.tv_sec*1000000+tv.tv_usec);         \
> -       })
> +#define BFA_TRC_TS(_trcm)      (ktime_get_real_ns() / NSEC_PER_USEC)

This change is broken on 32-bit architectures, as you are doing a 64-bit
integer division that we don't allow in the kernel. If you try to build
the entire kernel for 32-bit, you will get a link error here.

Also, you probably don't want to do the expensive division in a function
that is called as often as this one. This probably needs some help
from the driver maintainer, to answer how the timestamp is used, but
using the original algorithm would at least make it no less efficient
than it is today. Alternatively, using

	#define BFA_TRC_TS(_trcm)      (ktime_get_ns() >> 10)

could give an approximation by doing a bit shift (division by 1024)
instead of the division by 1000.

	Arnd

