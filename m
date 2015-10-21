X-GM-THRID: 6208217817238470656
X-Received: by 10.180.89.41 with SMTP id bl9mr2900742wib.1.1445468351330;
        Wed, 21 Oct 2015 15:59:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.165 with SMTP id s5ls1076955wia.44.canary; Wed, 21 Oct
 2015 15:59:10 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr7498370wib.2.1445468350970;
        Wed, 21 Oct 2015 15:59:10 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id w4si23247wiz.0.2015.10.21.15.59.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 15:59:10 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MMWL8-1ZsrpY01s6-008GOw; Thu, 22 Oct
 2015 00:58:54 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, stefanr@s5r6.in-berlin.de, linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v2] firewire: Replace timeval with timespec64
Date: Thu, 22 Oct 2015 00:58:52 +0200
Message-ID: <7551827.VsyUKdOpMQ@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151021223500.GA26701@amitoj-Inspiron-3542>
References: <20151021223500.GA26701@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:cAFgWUcI4EcQg0QqnalbWOo5c4e6h2xwz9LHGFtWZ5Cz6dCvxZs
 PTnT3s0tT1B58W2w47tfsq8TiIKyKPxxHUrN+x/5ow/t/pCVVtNJfg/5tcp9XImMWh8lCcD
 9JI2FT7uQcQRHZi0QMxE+Z3z2iEtoZFLisAgEAA7Wsyr2HhzV74fgAUW+Vc4lXRLib/RQf+
 h6nlAq2lOnflTmHZirO0A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:sq4h3DWc708=:MdW7L7MTdhgzhixd7RtOGB
 SjSFTAsk2Renki0IphBififaVHDq308FHzSmVTpIaXLghvrIKRnfyaG7zcUcSfYweMtp1pb8q
 KXvCI0i7co/XbNxRkIh/0y0rzI1VBCN94l0zk7/KHAI4RbCBXPFvDSNDAbU796QkbmWh6yxR4
 KY4WnH2HZGxOCZKRvENAvWdyzrKDKQZdH+brT0iweI2tmnmmqXj3rvrmkrJubzQVAk5UMLi8o
 GM6BcpNRP3V5IIh8OS00eB7vWjsIvWyTMzszOylvd5wJ9JONThsqtOPQPz5g3ZQCeR7hZ/UKT
 lUhRcpfGx+/OErKGbUXXurk/z/x+QOBSSOaP4COFq5pXcQBiQb9+jJfr2X7rGvEQ8FdPk8YHD
 q7GWdfrSyFFoZMcMn0jxYyGHYY9ArVOa6sUMJRE5xHcExGw1aTGKIuF4qAb3Hi1Qz7IHuVz30
 A27jYpicZtRTAWrFG88IdvmTdrVBin8AArQWoB8A7+ohKwtcGIaBhv3eaFQ5ZHDH91vMyHRKF
 Bdh29QsCYqiZZpxSv5CmgXTgdtRMMgy/lb3pPDCpZNgnxINJV99Mt26h+Dk84wPJPsVUHyH+a
 HSFet6sNRY/GzPmfHt6gqbiTM1ihqBQpgb+hqI4lSgpNZMqV+uUSrEfEy9SzvEtmMGchUqjz+
 VytUa4Z1nwT13FUHN8ikAWp3xkSR2/Vi/fOVvBtqXtp1Vgoy4t57EQqgdw0gmJbV8QEIsQCIl
 oPyYd1RCPHFG6OzO

On Thursday 22 October 2015 04:05:00 Amitoj Kaur Chawla wrote:
> 32 bit systems using 'struct timeval' will break in the year 2038, so
> we replace the code appropriately. However, this driver is not broken
> in 2038 since we are using only the microseconds portion of the
> current time.
> 
> This patch replaces timeval with timespec64.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

(adding the y2038 mailing list as well)

> Changes in v2:
>         -Replaced timespec with timspec64
>         -Modified commit message
>         -Used ktime_get_real_ts64() instead of getnstimeofday64()
> 
>  drivers/firewire/nosy.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
> index 76b2d39..8a46077 100644
> --- a/drivers/firewire/nosy.c
> +++ b/drivers/firewire/nosy.c
> @@ -33,6 +33,7 @@
>  #include <linux/sched.h> /* required for linux/wait.h */
>  #include <linux/slab.h>
>  #include <linux/spinlock.h>
> +#include <linux/time64.h>
>  #include <linux/timex.h>
>  #include <linux/uaccess.h>
>  #include <linux/wait.h>
> @@ -413,17 +414,18 @@ static void
>  packet_irq_handler(struct pcilynx *lynx)
>  {
>  	struct client *client;
> -	u32 tcode_mask, tcode;
> +	u32 tcode_mask, tcode, timestamp;
>  	size_t length;
> -	struct timeval tv;
> +	struct timespec64 ts64;
>  
>  	/* FIXME: Also report rcv_speed. */
>  
>  	length = __le32_to_cpu(lynx->rcv_pcl->pcl_status) & 0x00001fff;
>  	tcode  = __le32_to_cpu(lynx->rcv_buffer[1]) >> 4 & 0xf;
>  
> -	do_gettimeofday(&tv);
> -	lynx->rcv_buffer[0] = (__force __le32)tv.tv_usec;
> +	ktime_get_real_ts64(&ts64);
> +	timestamp = ts64.tv_nsec / NSEC_PER_USEC;
> +	lynx->rcv_buffer[0] = (__force __le32)timestamp;
>  
>  	if (length == PHY_PACKET_SIZE)
>  		tcode_mask = 1 << TCODE_PHY_PACKET;
> 


