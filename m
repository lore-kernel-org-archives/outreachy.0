X-GM-THRID: 6400145922202796032
X-Received: by 10.157.4.231 with SMTP id 94mr12060616otm.148.1490176836753;
        Wed, 22 Mar 2017 03:00:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.119 with SMTP id a110ls1581504otc.29.gmail; Wed, 22 Mar
 2017 03:00:36 -0700 (PDT)
X-Received: by 10.237.53.2 with SMTP id a2mr5765471qte.16.1490176836311;
        Wed, 22 Mar 2017 03:00:36 -0700 (PDT)
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id 190si235010pfv.3.2017.03.22.03.00.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 03:00:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v2MA0WNB012520
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Wed, 22 Mar 2017 10:00:33 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserv0021.oracle.com (8.13.8/8.14.4) with ESMTP id v2MA0WJ4004501
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Wed, 22 Mar 2017 10:00:32 GMT
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v2MA0VXJ007719;
	Wed, 22 Mar 2017 10:00:31 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 22 Mar 2017 03:00:30 -0700
Date: Wed, 22 Mar 2017 13:00:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rts5208: Replace a bit shift by a use of BIT.
Message-ID: <20170322100027.GI32449@mwanda>
References: <20170322023447.GA10464@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170322023447.GA10464@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: aserv0021.oracle.com [141.146.126.233]

On Wed, Mar 22, 2017 at 08:04:47AM +0530, Arushi Singhal wrote:
> This patch replaces bit shifting on 1 with the BIT(x) macro.
> This was done with coccinelle:
> @@
> constant c;
> @@
> 
> -1 << c
> +BIT(c)
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_chip.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> index 3511157a2c78..06a61800b71a 100644
> --- a/drivers/staging/rts5208/rtsx_chip.c
> +++ b/drivers/staging/rts5208/rtsx_chip.c
> @@ -1490,7 +1490,7 @@ int rtsx_write_register(struct rtsx_chip *chip, u16 addr, u8 mask, u8 data)
>  
>  	for (i = 0; i < MAX_RW_REG_CNT; i++) {
>  		val = rtsx_readl(chip, RTSX_HAIMR);
> -		if ((val & (1 << 31)) == 0) {
> +		if ((val & (BIT(31))) == 0) {

Extra parens.  Please check all your patches again.

regards,
dan carpenter


