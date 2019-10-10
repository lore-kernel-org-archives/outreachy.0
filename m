X-GM-THRID: 6746014123494998016
X-Received: by 2002:a9d:724c:: with SMTP id a12mr7205425otk.230.1570697893556;
        Thu, 10 Oct 2019 01:58:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:f4c9:: with SMTP id s192ls583694oih.1.gmail; Thu, 10 Oct
 2019 01:58:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdBXc/PfbUpA1UkJQPvJAg4PlLNaZZVQPaxxX8DKSO+pe5veFc/DjmGwIrHgtbSaQWbY6Q
X-Received: by 2002:aca:d5cf:: with SMTP id m198mr6684751oig.104.1570697892245;
        Thu, 10 Oct 2019 01:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570697892; cv=none;
        d=google.com; s=arc-20160816;
        b=PLlWRmKJgsRZYARYH00R1b/xe7HrEvIZ35VmIUmmavMlYr/oQdTVtT/uuZrXEo07ns
         SEHq3Yqr3vhvipIMjyKte3Mxbxliw6n4V1mfe9cJ0qI22c7/ui9aAvPblFh200Ba/TIC
         PazfYlw9zv0KueCjpdspFpNouzMQQcsvD6SjM9IIAXBPC3a5rSrz74WHV92zHS/Omzu1
         zAKwx4aiAFdjt6sPulBXaI88DSm4y0DAMvSjHW2HfBy10YHw+D3UAFvtgEl6VJaCCCZM
         GWntPtGDcX6+9pj6A0nCiVKZNy7WSFxVN7U65hXfTU3QHnYTAPUVNCmRuegMOZzAP3/9
         Pouw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qgO5nIjtEA5M7rpWm5uYekrXGaVEyZKGlFAp0lWFa1I=;
        b=kjJqiypVymtGt8QoBqiXRxtx5e/bGmlCL6QLIyHd5TNj3GQYeX5oWsxSWbf3WcGXZl
         Elxdgz+YQhQxgWO/wK0ov9/Ee1Kvh/4ys/62fDFjtAQ4659ZxylVT0WhEqoPGV3thzah
         CnEsE+DSaWAJHVkNjZIWYnhTo2iqdNPjHIr2YFZ1WY6emunLDF4aXqYsPu+TKnd7uACA
         FTVkHxyzhBbLshJ22p7IT70kvkV6V9O0cpo2GHmdVXsrVITCzwxp3NXppotMHyO1217J
         pYeIlGzBQeSwzAwaRAmOUiMCz1PjZkee7s1QPHvYBYqUIyo2WKXVW4MwHmFiTYnbtWkr
         d6iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=QDprH0Zr;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id v3si269004oth.4.2019.10.10.01.58.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 01:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=QDprH0Zr;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A8vvZA171461;
	Thu, 10 Oct 2019 08:58:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=qgO5nIjtEA5M7rpWm5uYekrXGaVEyZKGlFAp0lWFa1I=;
 b=QDprH0ZroOSvHkn7uHQUIF+ffXhDgtxsjV+SMa9Se+qqjHdDEchr2SYVh/MxtQVppOzP
 BukBgJwbX8awsCHomiHgunYbIcRid0jDQ82XhYyX+oDzPm1StUyyjjh1xHkA1cK35b2N
 veA8utDGrDlfvklhuQPpWoo/WLexod7WDtjtbjFtMM5+WOGrM/2sPJrdESs9+Jp0njul
 tEeg5hTnNVzZmory2OzfHvzEv+w2R5HkMo26yHy7Q+m871zEu5lC9a+8FIyRHAGdazgE
 eKrlJ9d96mNPYDM+KqL8AHh1UX2TaVn6yPigGY6uLO6V/L9wUvrykhZBRfKaklEZwiAG ag== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 2vektrsk4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Oct 2019 08:58:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A8qnWn078202;
	Thu, 10 Oct 2019 08:58:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 2vhrxd8tps-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Oct 2019 08:58:08 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9A8w6PJ023258;
	Thu, 10 Oct 2019 08:58:06 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 10 Oct 2019 01:58:05 -0700
Date: Thu, 10 Oct 2019 11:57:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] staging: rtl8723bs: Remove comparisons to booleans
 in conditionals.
Message-ID: <20191010085755.GD20470@kadam>
References: <cover.1570678371.git.wambui.karugax@gmail.com>
 <4af8981347a05f0a25fa1540d8753e7040ea2d85.1570678371.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4af8981347a05f0a25fa1540d8753e7040ea2d85.1570678371.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910100082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910100082

On Thu, Oct 10, 2019 at 06:39:23AM +0300, Wambui Karuga wrote:
>  	if (is_primary_adapter(adapter))
>  		DBG_871X("IsBtDisabled =%d, IsBtControlLps =%d\n", hal_btcoex_IsBtDisabled(adapter), hal_btcoex_IsBtControlLps(adapter));
>  
> -	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode == true)
> -		&& (hal_btcoex_IsBtControlLps(adapter) == false)
> +	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> +		&& !(hal_btcoex_IsBtControlLps(adapter))

Delete the extra parentheses as well, because they don't make sense when
we remove the == false comparison.  It's part of doing "one thing" is to
the whole thing and not leave bits undone.

		&& !hal_btcoex_IsBtControlLps(adapter)

>  		) {
>  		u8 bEnterPS;
>  
> @@ -2047,7 +2047,7 @@ static int rtw_check_join_candidate(struct mlme_priv *mlme
>  
>  
>  	/* check bssid, if needed */
> -	if (mlme->assoc_by_bssid == true) {
> +	if (mlme->assoc_by_bssid) {
>  		if (memcmp(competitor->network.MacAddress, mlme->assoc_bssid, ETH_ALEN))
>  			goto exit;
>  	}
> @@ -2805,7 +2805,6 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
>  	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
>  	u8 cbw40_enable = 0;
>  
> -
>  	if (!phtpriv->ht_option)
>  		return;
>  
> @@ -2815,7 +2814,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
>  	DBG_871X("+rtw_update_ht_cap()\n");
>  
>  	/* maybe needs check if ap supports rx ampdu. */
> -	if ((phtpriv->ampdu_enable == false) && (pregistrypriv->ampdu_enable == 1)) {
> +	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {

Same.

>  		if (pregistrypriv->wifi_spec == 1) {
>  			/* remove this part because testbed AP should disable RX AMPDU */
>  			/* phtpriv->ampdu_enable = false; */

regards,
dan carpenter


