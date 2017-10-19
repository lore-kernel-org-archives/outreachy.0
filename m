X-GM-THRID: 6478335539266191360
X-Received: by 10.84.132.42 with SMTP id 39mr127668ple.35.1508400895953;
        Thu, 19 Oct 2017 01:14:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.158.86 with SMTP id r22ls1555587pgo.16.gmail; Thu, 19 Oct
 2017 01:14:54 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Qh5wgkV0FOTCMbLSGM6whAbmJztgEDqfjDxyL2OfsT10bwzONHa5htdDVCXOTr+gl2V+3x
X-Received: by 10.98.144.15 with SMTP id a15mr104573pfe.33.1508400894916;
        Thu, 19 Oct 2017 01:14:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508400894; cv=none;
        d=google.com; s=arc-20160816;
        b=j8em80PKp9mpE7RSiaMp0Mhi9g3j0Yj0YCKDaVQLuh2FVGOQaQ8+UzM5P9cJiRgzmj
         Mpg191uEFqYeWhRIg/REugKoNxrhb8sz9Iex9PnfrfaNT2D1s70/LeP792Qg9bUoPhqe
         0T3/qPC9K4Mu9Ml7tl9Ba0dlhY2WXRkqiXaOCICw0hoG9a9ZHyVQ1Dq8zYB4tr8csywx
         60Yye9BB9P6D2YXhH4VjdxuZ3nsBbhNNtqKn0+PD2yz3zzjfThXzlFvjpQj2eYGFPZbY
         M1xpBRtB3rwZP+tmYCNtDNUJKLvIvDXw/5aOHkfGRY+pStAgcvfFB4JncG5sdVo6bQEZ
         T6yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=pviDcCVe0z323h0b7jt5hYCQsLd1Hu6jUIPato8NOig=;
        b=BrGRenrLI8Ings4aFymCSZ/zxvOv7hoQuLf4orge9Hf5QmdyMk/QXdcqQhDjK0tp3i
         ShlvcNNAxYFQqzDGAEMTxjg1HJetqaoxMxSBImoDtJxmAyhpVauZ5CVF/qKpaAjLWTy9
         JtaMEciGfC8YqrAt62O8FgpGR7rH+knWLG1I5yq++C8e6CodBWIMN3oJBtVj9RxDKo9Z
         oWYpM7mwWX4kps7Lhno0UgkJjj6YTY2lwOeAEJRDAFjgs1GMODNMZnzbgMkDkFF8mgFD
         jXPAgeTQsuSRCIc5OFAD+LsPYVL/QOqrpmlmHkb3SwYWTeeCTCjIWBFmJfC1tCuTN8Dg
         JF0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id w4si1399410plp.5.2017.10.19.01.14.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 01:14:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0021.oracle.com (userv0021.oracle.com [156.151.31.71])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v9J8Ep3m020242
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Oct 2017 08:14:51 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v9J8EopN009982
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Oct 2017 08:14:51 GMT
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v9J8EoNg000403;
	Thu, 19 Oct 2017 08:14:50 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 19 Oct 2017 01:14:49 -0700
Date: Thu, 19 Oct 2017 11:14:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] Staging: rtl8188eu: core: rtw_mlme_ext: Use
 list_for_each_entry_safe
Message-ID: <20171019081439.wwu7zlxhgweapm33@mwanda>
References: <cover.1508354332.git.srishtishar@gmail.com>
 <09469a9cece4c67261e5bd333dbfe4c741d59f4c.1508354332.git.srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <09469a9cece4c67261e5bd333dbfe4c741d59f4c.1508354332.git.srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0021.oracle.com [156.151.31.71]

On Thu, Oct 19, 2017 at 01:01:39AM +0530, Srishti Sharma wrote:
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
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 685c071..cf85fb4 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -5463,6 +5463,8 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
>  
>  u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
>  {
> +	struct xmit_frame *tmp;
> +
>  	if (send_beacon(padapter) == _FAIL) {
>  		DBG_88E("issue_beacon, fail!\n");
>  		return H2C_PARAMETERS_ERROR;
> @@ -5486,11 +5488,8 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
>  			xmitframe_phead = get_list_head(&psta_bmc->sleep_q);
>  			xmitframe_plist = xmitframe_phead->next;
>  
> -			while (xmitframe_phead != xmitframe_plist) {
> -				pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
> -
> -				xmitframe_plist = xmitframe_plist->next;
> -
> +			list_for_each_entry_safe(pxmitframe, tmp,
> +						 xmitframe_plist, list) {

I'm pretty sure we should get rid of the xmitframe_plist variable and
use xmitframe_phead here.

regards,
dan carpenter 


