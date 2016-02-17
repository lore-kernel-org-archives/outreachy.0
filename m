X-GM-THRID: 6252116177284235264
X-Received: by 10.28.156.83 with SMTP id f80mr2681748wme.1.1455713874961;
        Wed, 17 Feb 2016 04:57:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.9 with SMTP id m9ls53203lfg.46.gmail; Wed, 17 Feb 2016
 04:57:54 -0800 (PST)
X-Received: by 10.112.138.98 with SMTP id qp2mr224125lbb.4.1455713874306;
        Wed, 17 Feb 2016 04:57:54 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTP id w197si125784wmw.3.2016.02.17.04.57.54
        for <outreachy-kernel@googlegroups.com>;
        Wed, 17 Feb 2016 04:57:54 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MfYct-1aLn3K1qZP-00P6hh; Wed, 17 Feb
 2016 13:57:53 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wilc1000: Return correct error codes
Date: Wed, 17 Feb 2016 13:57:52 +0100
Message-ID: <2870007.s5VBRruket@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20160217124204.GA30394@amitoj-Inspiron-3542>
References: <20160217124204.GA30394@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:eOqKAj5pTbqA6UGRxpP2Lq62dKAwh47ZTXNq1wnQi6gIE7PK34P
 0FmvZvymSWkF0feOQQCdj3zHYGlwzUjvxKvl/UFnljP3E/TPlpNRkvxGGeSt2vhhCIEtnNf
 bAYq4TJ4Pn+K2wz5XJ/hX0+7yysBFcBj0PeV/yBlcnIS4kRE8Z64HJpq62R9jtyMqcRjXSN
 vJbBpytJ4aHJyQvfo/wGQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:QNaTTFRwBdQ=:a2RfNjbpHV9BlR6G/6bAWj
 yUr6fup1kGu1p7sPPwVZPJ2s7J3DsGTporR4P28gSzGnon4Hrhp2sqhmUPPW6mA2wLl2edES+
 NG/amstrc6Cn4ATrGFmi0WGePLN8Q7ppEdYbOfff79IhHw3W/GxGmr38Hnf5jVo/bAd3jrHUQ
 +6FNrzCuebtq3+Pnhw/IZ4powFNBSLPYX284M3pTbFPcZwR07GS+jQ1l/TWMEZA7OfEFDdfLS
 oozEBKn8jDoVgJNRixol/nh9pQzbIUX6ygGQdDSP6fBASzNiHTNfw4IOVaXQjW098O0P7Sv6O
 WOtR7Ihwwb6y1IMvelnWFVuwclwQS/HCahYQvtERz8BB0rCXETswRW9Fo11QFY8RENybEbQU5
 bUfP8Z+R6hFL9uj38j+/TkVArt4KmOi3CC4M8MVFL8eXvm7w/0LaSK4JPu3ih5KEUueDvlcRP
 +rtR7PtCr+vfxLomfr5FAAuLrAQYiB9sJJixOl4JUl+YNgc4v4cgMD1H8ZTswurzvgd1YzqFP
 k1gKYJrDeJMo7vaF+I3H386cfIAFo/8JuRZPDQpJPQpg4FPq2G7/O9aq5TSkYbYeXkYWxXDyc
 s3+e4hpxiyff3NxxmLYhcZ1KikU6FVk78bVhF8XuSK4tomE51GXo6afQbRuZPEpH+hzIFj5JJ
 LIb86/LUhECKA6SrATRow2lDJ8ccPSbjRIuzL4pdmR0Nd3T240Cypui1fTMiTyfefeWF2Hmqf
 mTTvChZK3qa7nJu4

On Wednesday 17 February 2016 18:12:05 Amitoj Kaur Chawla wrote:
> @@ -1373,7 +1373,7 @@ int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
>                 }
>  
>                 if (register_netdev(ndev))
> -                       return -1;
> +                       return -ENODEV;
>  
>                 vif->iftype = STATION_MODE;
>                 vif->mac_opened = 0;
> -- 
> 

I would use whatever return code that register_netdev() returns here.

	Arnd

