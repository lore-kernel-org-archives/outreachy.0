X-GM-THRID: 6200282727557627904
X-Received: by 10.112.130.41 with SMTP id ob9mr496538lbb.17.1443616603780;
        Wed, 30 Sep 2015 05:36:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.200 with SMTP id cw8ls964768wib.39.canary; Wed, 30 Sep
 2015 05:36:43 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr4725023wia.7.1443616603211;
        Wed, 30 Sep 2015 05:36:43 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id o5si233798wib.0.2015.09.30.05.36.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 05:36:43 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0LfFYi-1aRLww1wvA-00orXG; Wed, 30 Sep
 2015 14:36:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: aybuke <aybuke.147@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Use preferred kernel type
Date: Wed, 30 Sep 2015 14:36:41 +0200
Message-ID: <27765679.M6t57UnZWV@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443615808-6064-1-git-send-email-aybuke.147@gmail.com>
References: <1443615808-6064-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:EQM2uGSsloinGNdHkvSCDqvmR9mhTUDxPJV+4DNaNX+NiPdtXEE
 AsRh7+ksznySQdi80Xg8LkC2z1lmjddXBBAvc7fBqg/xNg28Qv6Pi0eo/BvQAaZTrAKhzQ9
 UwKmIq8kzbzWLxpdRbJWaLRgeEQnFRlVZFL2gcF7DR3CcUgbFkFPDB1nSqpVDn6Rup9DQJP
 tZQsr8mJJqj9fancX/QbA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:gMAasCLJCN8=:MxUZMgMnfAWUVCUd4A8KV/
 9W7yYf8oD1Wz2sIcwzkGiNRxVBWtfkFIaehdEaD8WmEnk3TLj6CNChH5pqXDqfiEnxgprpt0o
 S0tpseCnR3DMXhAV6D+nDR+MdE/9ukyqHKqSnCo0GxWwV1w57zp7vkA0EO60QlPuIlYFlX2Un
 PicvnWG2YyVvsfUsSyBCahqYwnlK1WwhRY2SF5cSKivXTcmQ65TQxh+oSBaFwo+yPA4eGFAvL
 0KQqvLkdOm2syRizGfsKgw8Rh5OMvb9pKmw+Bvbp8eQSNvwgNg3D8cI5utvzLb4nhch5MJuB5
 TqjD0gfsveOwUbYE/fXapw6+gdR6ohsifSk0Q3D259LHRD0usz6V0XRV8rRGm5L3eguvxapYK
 KojyAEdsgddr02zhVWE7+2M20C2PRJJtYHbfmWSWv9B0g87F2lWG/R1kRPDZqCOZj5Shfhu1k
 FFfQNbrH0KrYIJcdRe3bHRQyunEpWsexpcaOGFHh+WyF6VAXJPNKTJbkEY2RfGE2dya65MxMr
 m5TJ46ks8fontZePphIfDQelR0K7wYNwto9VvSLmqVf9UmUHNJD5oNkCE4ep0mRUBfz1ef5A2
 mmAEgqlqW2rVQLx5+S2g1SLsmt5K5CHhyW+H5MOckoqD26uAz7al3FKWzvb0Xx8+sQhViTmph
 Cjup6tNfjrHZtynMXZpt/xJjTdSjoccX2YkW/s5lVwlfrlW89uEXs2dabz1CQVM0ilVthyW2Q
 FhRBbr3DrV//LLAS

On Wednesday 30 September 2015 15:23:28 aybuke wrote:
> This patch fixes "CHECK: Prefer kernel type 'u8' over 'uint8_t'"
> checkpatch.pl issue in ethernet.c file.
> 
> Signed-off-by: aybuke <aybuke.147@gmail.com>

You may want to use 'git config user.name Your Full Name"' to set the
author name in the preferred spelling here.

>  drivers/staging/octeon/ethernet.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 7274fda..7f9518d 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -382,7 +382,7 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
>             && (cvmx_helper_interface_get_mode(interface) !=
>                 CVMX_HELPER_INTERFACE_MODE_SPI)) {
>                 int i;
> -               uint8_t *ptr = dev->dev_addr;
> +               u8 *ptr = dev->dev_addr;
>                 uint64_t mac = 0;
>  
>                 for (i = 0; i < 6; i++)

The driver has two more instances of uint8_t. It would seem appropriate to
convert them all at the same time, otherwise it looks ok here.

I would go one step further and change the int32_t and uint64_t instances
in the same driver as well in one patch. While it can technically be
split up, that does not make it easier to review here.

	Arnd

