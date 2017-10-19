X-GM-THRID: 6478335539266191360
X-Received: by 10.101.65.70 with SMTP id x6mr106081pgp.13.1508401052864;
        Thu, 19 Oct 2017 01:17:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.56.12 with SMTP id f12ls1558313pga.11.gmail; Thu, 19 Oct
 2017 01:17:31 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Tkey21vfEQLcfruBqIVPcjOAoShFIoUbxp5TwbBQctgbM24fyYMALZd2zH/q7bipgQmlZd
X-Received: by 10.99.124.24 with SMTP id x24mr114768pgc.40.1508401051920;
        Thu, 19 Oct 2017 01:17:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508401051; cv=none;
        d=google.com; s=arc-20160816;
        b=VogE9XqlJAFYjGU78n4N8rcoAHPr0ZAxwKXXgQ5EgZqwDB6tQvevseISJFUPh0irBn
         hgoUaliKG8FjJCjMPnsYO9ChrRMgK+7KH+SLBmyWt4mRuiC3jVxNOlyjJsMlLVAIWLvx
         /XR6gLpIR7T+K3G9WtKNz4F122fPPbJuS6fHk8RCZ+9HtZ0mPeElAxg7wDMOAiTx3XDM
         TSXlfO2CY6tF3KIjCcNfnA3N0mkhql4mt/1skUSDu1AnxNQnayWQuYZ3x7xGV/PrLZxL
         INsQOkWsepeD98ZLIvC94kUryulPLRM5QN5XVQCZEGJZwzJ/3BUDdJAdtKA7LALUx8VE
         /tiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=F0vhpr+lOVIYQe/gv/tLUJ0eNimhr02KX8Nkt7d028Y=;
        b=wdHRGDQVyKEVs6ZcL+ktsj25/vTIaav77FLYOdjGSM4B1z918ZW1JaCLzZRblyFKfs
         jjyLJOErXD6XrgIQRPE0DAqeNCNgW+BPxewQi6GtEqtSkUY+NYYqU9s0Obe8vcLfa1yv
         Q0ZSbkXybpk/Jf/1I2xCdI2vHxv5V3kXe5La2qvF4jgqXwrhDSIz8wAY6piRdGK/7Tm3
         MiSuKqOgqCJVSxeTwnDsFnyG8uDRn1D0+VpIf1CBsODZOshr9t/5JCwVnjb9pNA8nxL8
         y3whpuFAMGANxm6kvrNTAJi/DXPkmHMITlLqIfUMTsrbAx6piQdK6cE7lbm+Qat1K4Mo
         8utQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id b9si991857pfm.1.2017.10.19.01.17.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 01:17:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v9J8HS75023166
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Oct 2017 08:17:28 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v9J8HSDT008040
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Oct 2017 08:17:28 GMT
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v9J8HRR3001550;
	Thu, 19 Oct 2017 08:17:27 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 19 Oct 2017 01:17:26 -0700
Date: Thu, 19 Oct 2017 11:17:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] Staging: rtl8188eu: core: rtw_ap: Use
 list_for_each_entry_safe
Message-ID: <20171019081718.luqsobcus7ihzipm@mwanda>
References: <cover.1508354332.git.srishtishar@gmail.com>
 <869f4d40ae746a70e2b7456a143a6f966fbe05c9.1508354332.git.srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <869f4d40ae746a70e2b7456a143a6f966fbe05c9.1508354332.git.srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

On Thu, Oct 19, 2017 at 01:01:14AM +0530, Srishti Sharma wrote:
> This is a cleanup patch and doesn't change runtime behaviour. It
> changes an open coded list traversal to use list_for_each_entry_safe.
> Done using the following semantic patch by coccinelle.
> 
> @r@
> struct list_head* l;
> expression e;
> identifier m,list_del_init,f;
> type T1;
> T1* pos;
> iterator name list_for_each_entry_safe;
> @@
> 
> f(...){
> 
> +T1* tmp;
> <+...
> -while(...)
> +list_for_each_entry_safe(pos,tmp,l,m)
> {
> ...
> -pos = container_of(l,T1,m);
> ...
> -l=e;
>  <+...
>  list_del_init(&pos->m)
>  ...+>
> }
> ...+>
> 
> }
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 34 +++++++++------------------------
>  1 file changed, 9 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index 32a4837..551af9e 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -280,7 +280,7 @@ void	expire_timeout_chk(struct adapter *padapter)
>  {
>  	struct list_head *phead, *plist;
>  	u8 updated = 0;
> -	struct sta_info *psta = NULL;
> +	struct sta_info *psta = NULL, *tmp;
>  	struct sta_priv *pstapriv = &padapter->stapriv;
>  	u8 chk_alive_num = 0;
>  	char chk_alive_list[NUM_STA];
> @@ -292,10 +292,7 @@ void	expire_timeout_chk(struct adapter *padapter)
>  	plist = phead->next;
>  
>  	/* check auth_queue */
> -	while (phead != plist) {
> -		psta = container_of(plist, struct sta_info, auth_list);
> -		plist = plist->next;
> -
> +	list_for_each_entry_safe(psta, tmp, plist, auth_list) {


This one as well.  (I'm reviewing in reverse order)  We don't need
plist, just phead.

regards,
dan carpenter


