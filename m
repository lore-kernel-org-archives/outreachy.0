X-GM-THRID: 1213455138816
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cf0c00b8397633f0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr1148967lbb.6.1424428551912;
        Fri, 20 Feb 2015 02:35:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.199 with SMTP id u7ls270497lau.63.gmail; Fri, 20 Feb
 2015 02:35:51 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr1167617laa.2.1424428551476;
        Fri, 20 Feb 2015 02:35:51 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id r6si82729wix.0.2015.02.20.02.35.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 02:35:51 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0Lb1mj-1XiqgZ0xeD-00kiH1; Fri, 20 Feb
 2015 11:35:50 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vatika Harlalka <vatikaharlalka@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Add identifier for 'of_find_all_nodes'
Date: Fri, 20 Feb 2015 11:35:49 +0100
Message-ID: <7551769.EsGBye8Cb0@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150220101747.GA19443@gmail.com>
References: <20150220101747.GA19443@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:C2YGF8MPjdQ6kWpwuNyVh5qGsvKpZGwLBJDCTIO/J8u2iuHO0Hn
 6a+Uqve33UJIQjOgFQSVxt/AyQ6sNPprTxI6xyM4316kpxfvYIhGx7N0T40Y6ed96VqMzdA
 ZIzlsU3gBFns2Z6VXNcbxf5yVeVr8Me1gz8Oq8idASv3Nv+IHdZSYItW01LdLqT5C2dzsox
 Uu4XLUlHlxcmY0h38bofg==
X-UI-Out-Filterresults: notjunk:1;

On Friday 20 February 2015 15:47:47 Vatika Harlalka wrote:
> This patch fixes sparse errors for this driver related to
> identifiers and casting for of_find_all_nodes in linux/of.h library.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/board/board.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/board/board.c b/drivers/staging/board/board.c
> index d5a6abc..666e000 100644
> --- a/drivers/staging/board/board.c
> +++ b/drivers/staging/board/board.c
> @@ -5,6 +5,7 @@
>  #include <linux/of_address.h>
>  #include "board.h"
>  
> +extern struct device_node *of_find_all_nodes(struct device_node *prev);
>  static bool find_by_address(u64 base_address)
>  {
>         struct device_node *dn = of_find_all_nodes(NULL);

No, you should never add 'extern' declarations to a C file. The rule
is that you need to include the correct header file that contains the
declaration.

In this particular case, the header file is included, but the declaration
is hidden in #ifdef CONFIG_OF, so you should probably make sure the
driver cannot be compiled if CONFIG_OF is disabled.

	Arnd

