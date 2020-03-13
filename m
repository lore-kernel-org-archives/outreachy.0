X-GM-THRID: 6802949681377705984
X-Received: by 2002:a17:902:8307:: with SMTP id bd7mr11696720plb.74.1584085398314;
        Fri, 13 Mar 2020 00:43:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls3767339pgn.6.gmail; Fri, 13 Mar
 2020 00:43:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsN9uiWq5DcB05cMMiQ4qjAPEhvLS8tRgoxLAoFgqQ2YOAqXP/lmobf3rnLkgHKfLQTOro9
X-Received: by 2002:a62:7950:: with SMTP id u77mr6203952pfc.34.1584085396602;
        Fri, 13 Mar 2020 00:43:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584085396; cv=none;
        d=google.com; s=arc-20160816;
        b=qQ0x1L9hU16g74hwbi5Yuq7j39dVosG4iHx4y8ugLCa+VYALSoYP30YtwmGnfiMcJK
         nF2HxT/mOFl3Q7IF/jVpjt1ZS4M0GHlVqxUzH2PMcEcLBpBz0ZB9f/4A3FhqFxZfHJzM
         9Qe8g45g+WpyMLDiSrEwCZX8qNQANjTG7nk8cK5I1J6VMlKefNvQjKC6RRAfLRTuS6/i
         aYqT9S2ysmPPznT+qhk1NkhPZqWeY0BH9f75BpTFEFKjYV0jVKa1OUO9S/qZBgGTo/Br
         FhmqO/TsN754NOn8NgodD00rAc8wfkX8Sf8TDCKTKHrky416nxgVNhQEqjKtKzCCLIhP
         eYiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=87E2L+U8F9QF5WjP5NN1HEQs2yjtBJ94VzVHwagbUXM=;
        b=BY2svmj998gE9sEM8ahuG2JhcAWfxicg7nnYIoH5S7iHUQwBkRZnrIqXdde+xfbRvx
         7AjNiRJvZxFnXR02q5rk48iUR7Y2dIORozi3bjk5HrRSGw+ee8ewBzHfL5R3kpkxCMTs
         j/LlLbEYKw4/bqRcJ8DF9/JyCIsm2OIYzwaX2kmPUegbxgW5SGlkztR3ibJ//RsoTJ8A
         hVF8Fc6a8C7wElCRJhnMNUHiymDf0oIQLWT8/8zsJOgqoP5PIAcDxGLnQcGjrfPKTxB6
         DXQDvJr4yxRbnbbV+r7opnTCHDFi7QcttkboVvNWa78ny8AM5cN1VdS0Hv07PB/HvQU/
         Pnfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=kk8TL4Ro;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id q2si814679pjv.3.2020.03.13.00.43.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 00:43:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=kk8TL4Ro;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02D7dojT151656;
	Fri, 13 Mar 2020 07:43:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=87E2L+U8F9QF5WjP5NN1HEQs2yjtBJ94VzVHwagbUXM=;
 b=kk8TL4RorZB1+1u6lbXrS2TsKaRqkqeY6Xh8IgTWVGDK8ywK1bi6LnMJRPg8mZbjxd3f
 jA2b3eG4ZhSBypUubYEUfx6s/QlQB++xNjoZlJ2ZSlFpcIVX9ltbfb+oLxtHZnC2INbk
 nxUk4DzVdMOqgY0ya1JIuEAQSfi3+DHrPawUDohvYmM3yiwefuGQcp8k9DyYMfUpbOaL
 cHwr4VbVsl8olZmb8vCo45s5kFbpQWldRr40sNwm9DkVh9dOtoKml3/Fz3s5ExNmJBow
 TGQnfxUef0TvdXg57G4c9O8D6DL+n25DxH3lt8pG1jiHOMyzx3UomHemHGvBuWC7IWTs tQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 2yqtavjay2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Mar 2020 07:43:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02D7cEn8080578;
	Fri, 13 Mar 2020 07:43:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3020.oracle.com with ESMTP id 2yqtaak9qf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Mar 2020 07:43:13 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02D7hAro015859;
	Fri, 13 Mar 2020 07:43:10 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 13 Mar 2020 00:43:10 -0700
Date: Fri, 13 Mar 2020 10:43:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
        sbrivio@redhat.com, daniel.baluta@gmail.com,
        nramas@linux.microsoft.com, hverkuil@xs4all.nl,
        Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
Message-ID: <20200313074304.GR11561@kadam>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 suspectscore=0 adultscore=0
 mlxlogscore=999 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003130042
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 phishscore=0 priorityscore=1501 clxscore=1031 mlxscore=0 adultscore=0
 spamscore=0 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003130042

On Wed, Mar 11, 2020 at 07:28:59PM +0530, Shreeya Patel wrote:
> Remove unnecessary if and else conditions since both are leading to the
> initialization of "phtpriv->ampdu_enable" with the same value.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 71fcb466019a..48e9faf27321 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -2772,13 +2772,9 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
>  
>  	/* maybe needs check if ap supports rx ampdu. */
>  	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
> -		if (pregistrypriv->wifi_spec == 1) {
> -			/* remove this part because testbed AP should disable RX AMPDU */
> -			/* phtpriv->ampdu_enable = false; */
> -			phtpriv->ampdu_enable = true;
> -		} else {
> -			phtpriv->ampdu_enable = true;
> -		}
> +		/* remove this part because testbed AP should disable RX AMPDU */
> +		/* phtpriv->ampdu_enable = false; */

Please delete this dead code and the related comment.

regards,
dan carpenter


