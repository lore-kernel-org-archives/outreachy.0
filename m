X-GM-THRID: 6751912583325810688
X-Received: by 2002:aa7:8ac5:: with SMTP id b5mr18965363pfd.66.1572249817300;
        Mon, 28 Oct 2019 01:03:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8488:: with SMTP id c8ls257021plo.7.gmail; Mon, 28
 Oct 2019 01:03:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwXe7eonbncT8DtJmnhcQIuaTNxOs1CVltzPhLOlMC30+b8Tqa5ENzXvMkcw76ioaJHIaTD
X-Received: by 2002:a17:90a:cf98:: with SMTP id i24mr19549319pju.64.1572249815946;
        Mon, 28 Oct 2019 01:03:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572249815; cv=none;
        d=google.com; s=arc-20160816;
        b=xTeX9Dibuv6C5ZjBiUKwgenc+zEzaGiDIpRIpp0hVJL1f4Heh+T1e6kNWxT44B+/xD
         pFcrdE374bnG/rE0PA5fFWMP+Wl2RFWEe9p80ShAcRmbo+iKzplblGqFsvQw0WgfGAKx
         a3NUFp8N26qkGeopncILsrwaDZKsCSwTekiooeg+nd/W6fbtE4CRXFuiYa5oRWbAVypd
         9Gm6F/C/Te2guyd/rjTnRQbmwbdgA01VaBuzvNXDqT8tNXf39c1jywhTeNV1JQnzZbPF
         WIuaeMapFyMVMaB+gFNJ+G07YkBsxjH9np0fv2koIScVLLHes8DPGgGefmwvQiekw4Bt
         X9kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QNBVBBb+Lx5XvQn0JPrdAgEUun+ZptEUgDhb2ofkyYA=;
        b=PCIyFTxw90kaCX/q0wOeoQLR0pth9uk/c2nSjfLEwN4X4iOw9wssvjO3LUz5XopOb6
         L5yO/baeJ/C7bZ3b+9sDcZCvgA+OlKCC4UKB8jgSqTWYCt4ziy59tVkRLA1CQzW9QqIu
         9vH++SqhBFboOKV3XSVyCfv9WcyZ98cPjhey5yla4LUPbIMhrOvscZLGmdWbHWuFCnQ8
         d0I8wWOGO3c2hKF9dqFV99IPZAJMmtTzZwth39XvbhGWZBM7StM7szFfQtL9nV58LMon
         IUo0N6V3/VBBLsaR+2V4CGemDk6VdmG5a+AeAoScFUYii+QacLUZeXto+QjmVXPHUKJC
         gjNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=fhh373ct;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id u13si582105pgf.4.2019.10.28.01.03.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 01:03:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=fhh373ct;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S7wZSL186412;
	Mon, 28 Oct 2019 08:03:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=QNBVBBb+Lx5XvQn0JPrdAgEUun+ZptEUgDhb2ofkyYA=;
 b=fhh373ct+z1eyJ7TBkjKBqZEEQJ+ejOFlWUMU+Xh6ISqG0u721KH7368GfYzJmh6z6ql
 J44WipsVoIY2VBF+l+18PlqmGm5a61J6h0ZIvljidQbMLqAh/jAJFgg+an65uYG/s8kz
 5dsIdQOaNkKJ08kVO3gSJTrVEon9sK4QFnTKSQfJC2MCF63lObSHBpnRywRuLOJF9BVa
 F//l71SYIGtgs1+M3IrMym2fxlddKFw1xsHCUTI1u/X2Zc+eNR1eEYzB+jVgFtsLw0Qz
 5Z4hFIqlOLS/NWe6pMMkRKBbFU6r1view37IsXUaXiu18m3clWGJ8KCWkcenxwAaE3SM TA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 2vve3q04q8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 08:03:31 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S7wsfF179089;
	Mon, 28 Oct 2019 08:01:31 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 2vvymy5gwg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 08:01:31 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9S81UmT026440;
	Mon, 28 Oct 2019 08:01:30 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 28 Oct 2019 01:01:29 -0700
Date: Mon, 28 Oct 2019 11:01:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Cc: Cristiane Naves <cristianenavescardoso09@gmail.com>,
        outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [RESEND PATCH 1/2] staging: rtl8712: Fix Alignment of open
 parenthesis
Message-ID: <20191028080113.GD1944@kadam>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
 <e3842148b6dd01c47678f517a07772c75046c50f.1572051351.git.cristianenavescardoso09@gmail.com>
 <25960b2a5dfe3f5f2c6579ef718f90a139ba84d7.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <25960b2a5dfe3f5f2c6579ef718f90a139ba84d7.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910280080
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910280080

On Fri, Oct 25, 2019 at 06:50:25PM -0700, Joe Perches wrote:
> On Fri, 2019-10-25 at 22:09 -0300, Cristiane Naves wrote:
> > Fix alignment should match open parenthesis.Issue found by checkpatch.
> 
> Beyond doing style cleanups, please always try
> to make the code more readable.
> 
> > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> []
> > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> >  		precvbuf->ref_cnt = 0;
> >  		precvbuf->adapter = padapter;
> >  		list_add_tail(&precvbuf->list,
> > -				 &(precvpriv->free_recv_buf_queue.queue));
> > +			      &(precvpriv->free_recv_buf_queue.queue));
> 
> Please remove the unnecessary parentheses too
> 

Removing the parentheses increases your chance of the patch being
rejected on the one thing per patch rule...

regards,
dan carpenter


