X-GM-THRID: 6393343309495926784
X-Received: by 10.99.96.71 with SMTP id u68mr726839pgb.32.1488908545862;
        Tue, 07 Mar 2017 09:42:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls1131802otb.38.gmail; Tue, 07 Mar
 2017 09:42:25 -0800 (PST)
X-Received: by 10.200.49.51 with SMTP id g48mr380978qtb.69.1488908545292;
        Tue, 07 Mar 2017 09:42:25 -0800 (PST)
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id 2si121780pfx.8.2017.03.07.09.42.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:42:25 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from aserv0022.oracle.com (aserv0022.oracle.com [141.146.126.234])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v27HgLSB016317
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Mar 2017 17:42:22 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v27HgLeF022751
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Mar 2017 17:42:21 GMT
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v27HgK1i016898;
	Tue, 7 Mar 2017 17:42:20 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 07 Mar 2017 09:41:56 -0800
Date: Tue, 7 Mar 2017 20:39:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: sudipm.mukherjee@gmail.com, devel@driverdev.osuosl.org,
        linux-fbdev@vger.kernel.org, teddy.wang@siliconmotion.com,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/3] staging: sm750fb: fixes add blank line after
 function/struct/union/enum declarations
Message-ID: <20170307173935.GL4171@mwanda>
References: <20170305112450.9066-1-arushisinghal19971997@gmail.com>
 <20170305112450.9066-2-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170305112450.9066-2-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: aserv0022.oracle.com [141.146.126.234]

On Sun, Mar 05, 2017 at 04:54:48PM +0530, Arushi Singhal wrote:
> This patch fixes the warnings reported by checkpatch.pl
> for please use a blank line after function/struct/union/enum
> declarations.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_display.h | 1 +
>  drivers/staging/sm750fb/ddk750_mode.h    | 2 ++
>  drivers/staging/sm750fb/ddk750_power.h   | 1 +
>  drivers/staging/sm750fb/sm750_cursor.c   | 3 +++
>  4 files changed, 7 insertions(+)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
> index e2a3f84ca4c5..8bf22e4f0d8b 100644
> --- a/drivers/staging/sm750fb/ddk750_display.h
> +++ b/drivers/staging/sm750fb/ddk750_display.h
> @@ -100,6 +100,7 @@ typedef enum _disp_output_t {
>  	do_CRT_PRI = CRT_2_PRI | PRI_TP_ON | DPMS_ON | DAC_ON,
>  	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
>  }
> +
>  disp_output_t;


Nah...  This is a typedef and this change makes it even worse.  It
should be on the same line as the }.

} disp_output_t;

But actually this typedef is not allowed.

regards,
dan carpenter


