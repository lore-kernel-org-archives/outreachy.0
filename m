X-GM-THRID: 6950714578600722432
X-Received: by 2002:a25:254a:: with SMTP id l71mr20308427ybl.107.1618375581691;
        Tue, 13 Apr 2021 21:46:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bac5:: with SMTP id a5ls395123ybk.11.gmail; Tue, 13 Apr
 2021 21:46:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2ovH+0ppLA9avNErdPgKqHemxFfZKFkbYyiEtMzd6cAjmIqApwd2TFN8CtDew6aMjLoAz
X-Received: by 2002:a25:bec8:: with SMTP id k8mr30803569ybm.186.1618375580549;
        Tue, 13 Apr 2021 21:46:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618375580; cv=none;
        d=google.com; s=arc-20160816;
        b=mj/W9XS7yfDBUq+Z5Nr4YzkI9WByFLpu4r0/lomnRKmWimlEgV4hNyp03HPK2bgvtN
         Op1W1KVw4Atr8UwGeFj10PBct4aOjGL9UQppWK6jM5Wi2v0E6NfG9eSrx5qaGfMx+Jyk
         78peBUG/qTqufRGqKj5uHbbNqj0II6u7fXoDSoyfqIHswoy+QY+5svEPcmJ6OTvYpwRH
         RAHwwBcj71Fhsdj2MxLubJwJAEIzlbi57U2Q8wLJgi/2C2dFc10l6dsAWUoSzunhvOuT
         PCsumssJ6zEYRoJ4Y3XI6Ly7PSnGr6PCvpXUO4sbvizFn8/xldlFjUMMjFwNPwVeFHve
         jrpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sBmVwPsNeAH002CQeWCF/beRIkPh7vCoNYOX97ndJSw=;
        b=Zi8kN+HRNHduAXphQL7r+NX68XuuF2An4b7DTFsuofQvMLpx84baHxFVNZ8vQImscn
         nlC/y6u6tNdsX7Qu9+pfu1g31Wvtp6+Y5M4jDZAB/VR42EF0WZt0qMHdYNjEgG3YAVIF
         nbg8m+0/O6qMFnKaY5cP2ZYPDMhfHeZTHfDKNdXjdJHJBLS+qrURwyUHYNfigsJyNuy1
         X70EyFvL7mPtCwCy56ynflE8/W+GE3tQqkOFPRJq283SmSBTfMF7U0E11dk1dPvzoQKi
         ILxzMU++lMMC6e2ogrD0TX81qE1c7N8IDhb7crGvHdIg2AQlW+ZdhaIN0mwb9zXSrK15
         U2DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=RRr2rJ6p;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id q185si1281886ybc.1.2021.04.13.21.46.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 21:46:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=RRr2rJ6p;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13E4hxvi086440;
	Wed, 14 Apr 2021 04:46:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=sBmVwPsNeAH002CQeWCF/beRIkPh7vCoNYOX97ndJSw=;
 b=RRr2rJ6pDvOIiCYkItz04uDIiezUY5jFqUouHMBnwUVU7wvwPws5aOj+SZ5Wde/XVoVn
 dXsc2/VcB8ukOhi3XfZzONNGLcm12kqbEIKmVNBBB39RdbhBnTkPb/K9AIcneL5vkElN
 vovUyk244ONxAJXxxwMoyVo2jC+q4ElmhMyBfP+5RGdzgyQQxMT/u3NzzsrnK2p3dYrs
 C55K5UWWesr+lnecDh5KTnv8Et7YiGrhUTVA/3Pf3zEqwrO8473QqO7z3DDFkxiUeYfR
 77vrN7aDEnF3NGZOI5VDMbFWFhDbNrPpg42klBoXZ83irSzEtI3wn4e6/JKmRe3ZrOcc ZA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 37u3erh2f4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Apr 2021 04:46:17 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13E4aWKN044042;
	Wed, 14 Apr 2021 04:46:15 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 37unkqfy2w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Apr 2021 04:46:15 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 13E4kEeQ030084;
	Wed, 14 Apr 2021 04:46:14 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 13 Apr 2021 21:46:13 -0700
Date: Wed, 14 Apr 2021 07:46:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove four
 set but not used variables
Message-ID: <20210414044607.GN6021@kadam>
References: <20210413184222.19539-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210413184222.19539-1-fmdefrancesco@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9953 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 adultscore=0 phishscore=0 malwarescore=0 mlxscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104140030
X-Proofpoint-ORIG-GUID: SEk8t2KZyBBIMFyhEhdRw9-czFb0Vay5
X-Proofpoint-GUID: SEk8t2KZyBBIMFyhEhdRw9-czFb0Vay5
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9953 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 clxscore=1031
 adultscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104140031

On Tue, Apr 13, 2021 at 08:42:22PM +0200, Fabio M. De Francesco wrote:
> Removed four variables that were set but not used.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> index 77f8353c5ce5..fad6a3bfe07c 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> @@ -3199,12 +3199,10 @@ static void hw_var_set_mlme_join(struct adapter *padapter, u8 variable, u8 *val)
>  
>  void CCX_FwC2HTxRpt_8723b(struct adapter *padapter, u8 *pdata, u8 len)
>  {
> -	u8 seq_no;
>  
>  #define	GET_8723B_C2H_TX_RPT_LIFE_TIME_OVER(_Header)	LE_BITS_TO_1BYTE((_Header + 0), 6, 1)
>  #define	GET_8723B_C2H_TX_RPT_RETRY_OVER(_Header)	LE_BITS_TO_1BYTE((_Header + 0), 7, 1)
>  
> -	seq_no = *(pdata+6);
>  
>  	if (GET_8723B_C2H_TX_RPT_RETRY_OVER(pdata) | GET_8723B_C2H_TX_RPT_LIFE_TIME_OVER(pdata)) {

Now we have two blank lines in a row.  Please delete one.

regards,
dan carpenter


