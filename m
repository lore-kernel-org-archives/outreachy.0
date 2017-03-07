X-GM-THRID: 6393343309495926784
X-Received: by 10.129.168.195 with SMTP id f186mr709995ywh.49.1488908685898;
        Tue, 07 Mar 2017 09:44:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.82.215 with SMTP id d206ls3395034itb.17.canary-gmail; Tue,
 07 Mar 2017 09:44:44 -0800 (PST)
X-Received: by 10.99.1.13 with SMTP id 13mr774290pgb.146.1488908684462;
        Tue, 07 Mar 2017 09:44:44 -0800 (PST)
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id y90si125888pfa.6.2017.03.07.09.44.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:44:44 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from aserv0022.oracle.com (aserv0022.oracle.com [141.146.126.234])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v27HifsA021007
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Mar 2017 17:44:41 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v27HifaF029903
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Tue, 7 Mar 2017 17:44:41 GMT
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0121.oracle.com (8.13.8/8.13.8) with ESMTP id v27Hidej010615;
	Tue, 7 Mar 2017 17:44:40 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 07 Mar 2017 09:44:37 -0800
Date: Tue, 7 Mar 2017 20:44:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: sudipm.mukherjee@gmail.com, devel@driverdev.osuosl.org,
        linux-fbdev@vger.kernel.org, teddy.wang@siliconmotion.com,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/3] staging: sm750fb: Alignment should match open
 parenthesis
Message-ID: <20170307174426.GM4171@mwanda>
References: <20170305112450.9066-1-arushisinghal19971997@gmail.com>
 <20170305112450.9066-4-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170305112450.9066-4-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: aserv0022.oracle.com [141.146.126.234]

On Sun, Mar 05, 2017 at 04:54:50PM +0530, Arushi Singhal wrote:
> @@ -147,18 +146,18 @@ static int programModeRegisters(mode_parameter_t *pModeParam,
>  				PANEL_HORIZONTAL_SYNC_START_MASK));
>  
>  		poke32(PANEL_VERTICAL_TOTAL,
> -			(((pModeParam->vertical_total - 1) <<
> -				PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
> -				PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
> -			((pModeParam->vertical_display_end - 1) &
> -				PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
> +		       (((pModeParam->vertical_total - 1) <<
> +			 PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
> +			PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
> +		       ((pModeParam->vertical_display_end - 1) &
> +			ANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
                        ^^^^

Missing P in PANEL means this won't compile.

>  
>  		poke32(PANEL_VERTICAL_SYNC,
> -			((pModeParam->vertical_sync_height <<
> -				PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
> -				PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
> -			((pModeParam->vertical_sync_start - 1) &
> -				PANEL_VERTICAL_SYNC_START_MASK));
> +		       ((pModeParam->vertical_sync_height <<
> +			 PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
> +			PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
> +		       ((pModeParam->vertical_sync_start - 1) &
> +			PANEL_VERTICAL_SYNC_START_MASK));
>  
>  		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
>  		if (pModeParam->vertical_sync_polarity)

regards,
dan carpenter

