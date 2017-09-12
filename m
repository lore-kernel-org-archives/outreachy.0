X-GM-THRID: 6464551056446586880
X-Received: by 10.99.113.93 with SMTP id b29mr8634057pgn.171.1505208018599;
        Tue, 12 Sep 2017 02:20:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.200.85 with SMTP id w82ls842319itf.22.gmail; Tue, 12 Sep
 2017 02:20:17 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5S1rXZJfGlDBPpsA29hCjiMm9H9EMlvSyzaKTsz/HqWNbERAZudamlajEtnTPu/+qwPlAk
X-Received: by 10.99.104.67 with SMTP id d64mr8699252pgc.106.1505208017753;
        Tue, 12 Sep 2017 02:20:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505208017; cv=none;
        d=google.com; s=arc-20160816;
        b=ck3Omu0DMLWalFcMhBdmA8HmEzkN97xZs1WHLTzx7bCViVozoILaC7G2ifaBsl5HD/
         IGZ9clI/cCq1/bCg5y/0+hRvi6oOJNigDOwFA5dn1aBwAyTp1MXWq1Vb3q+kc68SQ5i7
         NFjM7VpC9e4M1rFOw0UFgPfkR50plK7U8ww+uXgxURTpNh6JaB6lnVdI2WIzPe/BT0UY
         V2GI0xkmkNTf/JIvAtcLFVQxHlfL+mM/8BI3X8/V/ic7fyYxw2Omb3EBw4P+CUQchV5P
         QCmkJ/WdE0HtjDWZWhmPreOfLbo7J4jiW64s/yim2E2GSUHgoXEffetdJ6uc8hw/lTsc
         cYdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=zKoxXnbB/obHWBM/2uXNzJoyLTUbmFskg56TZGi3MQQ=;
        b=G1aiSH90v+OLe4zuO5ICy57S3TCFyMXCCDd7x9+mLaLBK2yO+BaZSq+oYBhRPC6xlo
         3jf03PZYVYPSo9jJoA6dUkbzFvUfpbP8tnjQzW0NFG2qWLd1RVLnimjs9uwyEQu4Ao6H
         hBOKZUwvtHz7jZ2O4yZ1hCpoL1JMNgRM11sy3+asKGrPDToov3tkFiVIm+xZDRV0EgAM
         XnVbKLQ+dYcohlj/9459auECGjGRGjHJ6WqfWbcmwbaXtaAZyGc1LBFq/ghiCmBaJVg1
         AaSOMqIpvblDWBWPP3kecfOM300EkxiL3FziZCRRjiUrLUtwlVXlJ17Oj8kfrRpmGtF4
         0Kbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id p144si426547itc.0.2017.09.12.02.20.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 02:20:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v8C9KA6H027684
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 12 Sep 2017 09:20:11 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v8C9KApU019994
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 12 Sep 2017 09:20:10 GMT
Received: from ubhmp0018.oracle.com (ubhmp0018.oracle.com [156.151.24.71])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v8C9K9bO030641;
	Tue, 12 Sep 2017 09:20:10 GMT
Received: from mwanda (/41.202.241.43)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 12 Sep 2017 09:20:08 +0000
Date: Tue, 12 Sep 2017 12:19:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gilad@benyossef.com, devel@driverdev.osuosl.org,
        gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
        linux-crypto@vger.kernel.org
Subject: Re: [PATCH] Staging: ccree: Don't use volatile for monitor_lock
Message-ID: <20170912091951.noslc3dlncyxonyg@mwanda>
References: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

On Mon, Sep 11, 2017 at 09:29:31PM +0530, Srishti Sharma wrote:
> The use of volatile for the variable monitor_lock is unnecessary.
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/ccree/ssi_request_mgr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
> index e5c2f92..7d77941 100644
> --- a/drivers/staging/ccree/ssi_request_mgr.c
> +++ b/drivers/staging/ccree/ssi_request_mgr.c
> @@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
>  	dma_addr_t dummy_comp_buff_dma;
>  	struct cc_hw_desc monitor_desc;
> 
> -	volatile unsigned long monitor_lock;
> +	unsigned long monitor_lock;

The variable seems unused.  Try deleting it instead.

regards,
dan carpenter


