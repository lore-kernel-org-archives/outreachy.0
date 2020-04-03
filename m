X-GM-THRID: 6810983981857636352
X-Received: by 2002:a63:b52:: with SMTP id a18mr7243222pgl.130.1585902763319;
        Fri, 03 Apr 2020 01:32:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls4825678pls.6.gmail; Fri, 03
 Apr 2020 01:32:41 -0700 (PDT)
X-Google-Smtp-Source: APiQypICRKoYcQj957Rtj+2GXGUb9M/g7v86jItQcPYCAVlZSc785GObpOnqf1MOgYDJIiKUcmBl
X-Received: by 2002:a17:90a:3ea6:: with SMTP id k35mr2223164pjc.184.1585902761733;
        Fri, 03 Apr 2020 01:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585902761; cv=none;
        d=google.com; s=arc-20160816;
        b=rW87J4eMofMuOBB6jjQ4Xjms9pamqdEJsCreA1COfQkW8uOtTk87EfdVcfn+nOGTAp
         ogx0oIiB0ANYS4d6Bmh1AzkjW/f4XajKjdFYpniVMCf5uGPh6EYfeJ65jm6hDHxJ8Qnx
         WxhNb85ttaFHuQsKJhyLhB3Lyz3P8OAkMcb+5XvliLD+rqXn3eK3zbBXj01YDS5ReaGB
         D4YIizNM3xOuViImhbNbb36wHB9sadKu0/e9kz2PCL73Tx8lKtB+olMW8SACWG0rnkyE
         g2DeoBB+bOtH/fA/hCJoUiiTVw1eysybN4M+hCeAdR3L+ZAPUesoiBwZISc0zxeMlNqx
         TVlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ss086libaRnicgxivCFTmSK24emVikB4VIk29pxOOEY=;
        b=IS7pIs+NNQapvEXI4cgI2nWwO/Nbvbw/87I8PuBKEi9OJ67PQKGgjeSkHzfP/jcb9U
         g5q0h6+UFHQ3yZ4pAjyom4e2cuZtYzzWtqqUib5/xWuhy2dFid7DwPAb9aft7NRdu5fz
         f7do0LWgXgQjO62Wuv0Zj+eKh70wUDIn4zZosbLoczLj7oboqjhWoWxm80Humcn7vUM2
         yt15a45U0OZOOjprXEKZkly2joWGMK/6/CUXguMLYiwOD+AqVIN6XaDeR26eArK7f8UE
         Rcralodg5CbCcywJ6G35JOLuazQUhHxVGT/BQ2uaFDeAOHQfUG1+WS0etnZraCYF556p
         QyJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=vZd1D3Y7;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id u15si479124pjm.1.2020.04.03.01.32.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 01:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=vZd1D3Y7;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0338OFmP055609;
	Fri, 3 Apr 2020 08:32:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=ss086libaRnicgxivCFTmSK24emVikB4VIk29pxOOEY=;
 b=vZd1D3Y7F64qs8Q8Cy649TJgKeHskxw5L8yLqRWz7J6FaoQOUJ9ODdwVZ2wK6Y24L2Aj
 OsLkQIcY+rYGXDB27HMp0FCNqP9zb+OUfqMk3lvoP+03eywzxU0+7qDzWYYJQhF2iwWs
 eBbuBJuiG/P7z6wUwX0ftzg+L4YKOSgGaw4Cq7ox8FAEo0zi1edAAqyNN4HNN3ww1UMS
 ceSRdPmgcn4pMcuOv8uFTAR02+SJ+xk/IAtmzhVHVmisEeL0wtd0E6W+cNO/cnvp57zl
 9IJMlVvVJOc382Vrqiqa7cCf8HgvQIK5mZQERaCjaBP6y6g5CicrLgXkAecISe8jdknu tw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 303yunj9wt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 03 Apr 2020 08:32:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0338WNeM052226;
	Fri, 3 Apr 2020 08:32:35 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 302g4x20dw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 03 Apr 2020 08:32:35 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0338WXuW020986;
	Fri, 3 Apr 2020 08:32:33 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 03 Apr 2020 01:32:33 -0700
Date: Fri, 3 Apr 2020 11:32:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
        Todd Poynor <toddpoynor@google.com>, Ben Chan <benchan@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] staging: gasket: Fix 4 over 80 char warnings
Message-ID: <20200403083225.GX2001@kadam>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
 <20200402053617.826678-2-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200402053617.826678-2-jbwyatt4@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030072
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030071

On Wed, Apr 01, 2020 at 10:36:16PM -0700, John B. Wyatt IV wrote:
> Fix 4 over 80 char warnings by caching long enum values into local
> variables.
> 
> All enums are only used once inside each function (and once inside
> the entire file).
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/gasket/apex_driver.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 46199c8ca441..f48209ec7d24 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -253,6 +253,8 @@ static int apex_get_status(struct gasket_dev *gasket_dev)
>  /* Enter GCB reset state. */
>  static int apex_enter_reset(struct gasket_dev *gasket_dev)
>  {
> +	int idle_gen_reg = APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER;
> +

Sorry, but I also hate these where we have a one time use temporary
variable to get around the 80 character rule.  Generally, avoid pointless
indirection.  The original code is better.

regards,
dan carpenter


