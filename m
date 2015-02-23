X-GM-THRID: 2367647907840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2fb84ca0efd8fc3e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.222.103 with SMTP id s97mr8062879yhp.19.1424728267222;
        Mon, 23 Feb 2015 13:51:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.199 with SMTP id l7ls1000780igx.8.canary; Mon, 23 Feb
 2015 13:51:06 -0800 (PST)
X-Received: by 10.66.150.33 with SMTP id uf1mr14022104pab.33.1424728266911;
        Mon, 23 Feb 2015 13:51:06 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id bx1si3314954pdb.2.2015.02.23.13.51.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 13:51:06 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0LqIs5-1XuoxN1Sk5-00e1PT; Mon, 23 Feb
 2015 22:51:04 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vatika Harlalka <vatikaharlalka@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Removed unnecessary {} from conditional statements
Date: Mon, 23 Feb 2015 22:51:03 +0100
Message-ID: <8379859.9EyWutC8ko@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150222102830.GA1072@gmail.com>
References: <20150222102830.GA1072@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:0E8m8tnhHi5vNSsSmd0gII4RxRcv3929GA6UOEmY4hU/P9qG55A
 DB7u7vhyRt5iZjhh0MQPxq7TE95YwF/YwjJlX/IzVlZsIu/qZtKkLyCn6TtBkFOx31EZxQR
 G7tx7SgW+Q4moG8nuOtWM530pz4NE157bqdzwalC8D9FPGGEUB5bY0kOzynnSCDr8N/qBPz
 fV6XwCG3Re6/YqHqZJMDg==
X-UI-Out-Filterresults: notjunk:1;

On Sunday 22 February 2015 15:58:30 Vatika Harlalka wrote:
>  static void rtl_addr_delay(struct adapter *adapt, u32 addr, u32 bit_mask, u32 data)
>  {
> -       if (addr == 0xfe) {
> +       if (addr == 0xfe)
>                 msleep(50);
> -       } else if (addr == 0xfd) {
> +       else if (addr == 0xfd)
>                 mdelay(5);
> -       } else if (addr == 0xfc) {
> +       else if (addr == 0xfc)
>                 mdelay(1);
> -       } else if (addr == 0xfb) {
> +       else if (addr == 0xfb)
>                 udelay(50);
> -       } else if (addr == 0xfa) {
> +       else if (addr == 0xfa)
>                 udelay(5);
> -       } else if (addr == 0xf9) {
> +       else if (addr == 0xf9)
>                 udelay(1);
> -       } else{
> +       else
>                 store_pwrindex_offset(adapt, addr, bit_mask, data);
> -       }
> 

Maybe use switch()/case instead?

	Arnd

