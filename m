X-GM-THRID: 6473105948700311552
X-Received: by 10.129.228.73 with SMTP id t9mr38474523ywl.94.1507206911761;
        Thu, 05 Oct 2017 05:35:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.191.195 with SMTP id q3ls8987ybm.16.gmail; Thu, 05 Oct 2017
 05:35:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCVMATBoIJnaJiU7ig2i09AAl6aFQLAu9EGB+/rwLKueI77c/aou89Q2KdWTj/RDGga+kmZ
X-Received: by 10.129.175.16 with SMTP id n16mr40076797ywh.115.1507206910949;
        Thu, 05 Oct 2017 05:35:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507206910; cv=none;
        d=google.com; s=arc-20160816;
        b=Od33ACPpTKrnTLTA306R5Ghs2UZWI7w8U2+L+rk1B6ukDaKyIcQBWWXQx7/2d49r1D
         ntUA3X1Rv8GUagcVjcQgIt3Wu13oW7h0CUF+z4FRlwkcqPtmEIrA7Ye6jZnSKGpUHiC4
         DPu1YwzQDWLFR3R+OJR/SBcbvZSdZUK1Ee3DnmSTOPsiMO7aA4UtCKTL6Y65RStsChl0
         E1zVel21migGtKlLhIT+fnduoz9SSliPi2rYHGuQuZP4dREDnIWkYN9VvVXM1q8QdpX2
         ctQmSsyoo1xKicP+rJp3inoU2z1ZjLxuE0Se+O0oW0Dr+Ffs47vA6+w7AGahie6niJUU
         /L1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=kpmjj7WnuXs/tbTdsC8jjL2raneSefrEKpQXXEL0Wbk=;
        b=CMYgZcaCovho3UYEpMLOM0TdfOiBYNP/VjTBiiZmM1Ptvb2CYycPr/ybrkgF7ws7Cv
         5oBCx04ljJENiabJT6rbOCjHl85byYcbOtLliPM3IdQD4+a7JF9iulwLV+oYC8U8EOEj
         HqV+bPM/d2ZHiaQbTqnGIhZRJyajE6A12/Q2tK3dPnTaalDmWt5iGgatrbss1mnpeWEE
         6/bJpKq2K7ykJR3Z1qww8rOGa4vDA8YgvP4opE8IRcDX6VFyev+XEWveXyKlZqJ1fljk
         N0OoCEqz5deslQKNbAmZ4HzsaEUQMJ5gSycLXdLOowPWCboE51+m+eR59KeLcKgan5N8
         96pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id f188si229008ywe.34.2017.10.05.05.35.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:35:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v95CZ7jl020097
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 5 Oct 2017 12:35:08 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v95CZ74V027166
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 5 Oct 2017 12:35:07 GMT
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v95CZ67I011598;
	Thu, 5 Oct 2017 12:35:06 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 05 Oct 2017 05:35:06 -0700
Date: Thu, 5 Oct 2017 15:34:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] Staging: rtl8188eu: core: rtw_mlme_ext: Use
 list_for_each_entry_safe
Message-ID: <20171005123459.3m53oolhizgpug5o@mwanda>
References: <1507137416-3855-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507137416-3855-1-git-send-email-srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

On Wed, Oct 04, 2017 at 10:46:56PM +0530, Srishti Sharma wrote:
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 52f31c7..4e1d06c 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -5446,6 +5446,7 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
>  
>  u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
>  {
> +	struct xmit_frame *tmp;
>  	if (send_beacon(padapter) == _FAIL) {

You need a blank line between the declaration and the code.

regards,
dan carpenter


