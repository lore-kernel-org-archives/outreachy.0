X-GM-THRID: 6746031998697996288
X-Received: by 2002:a81:a9c1:: with SMTP id g184mr6313006ywh.320.1570698220256;
        Thu, 10 Oct 2019 02:03:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:6ac3:: with SMTP id f186ls83969ywc.8.gmail; Thu, 10 Oct
 2019 02:03:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwLVslj33TDBsCuvKOHskGANO4fU/UEVV71bpcYoAagYuQVLLnzv+yipPPMmG0gY37Du33m
X-Received: by 2002:a81:9ad8:: with SMTP id r207mr6542404ywg.198.1570698218556;
        Thu, 10 Oct 2019 02:03:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570698218; cv=none;
        d=google.com; s=arc-20160816;
        b=HOBC0yHnw2r7jbUEzAil//ESe2gros72WX4Eb81OlMLxWF2L5fR1B5joFPuDQE0D2N
         SLZoLiUlcn1XCl19U6ZnJk/CNlNN8c2uAobeDwJtxLbrOcw7YwGwH/kK0M92HsuAope+
         rsJ9AdV6SpAUTgwRb1FdJMeQ01amkIoUEDLHpioLmM+NYwEn5qytTGq7B3vfDt7y/YFG
         8fnkklrDob0FtFdmJCCGpONHUt8sfKlmL6AD/ALhwfXXPb2SYgIO1EQitc6aKShv0FeK
         boQ3B9WTTzJDsAYjGM8BL1isFbYMsPIa6oh1c+oCCDVzLKe+jig26k6gtvM0ekdJ6tkI
         bocw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1cw9oEH7ZCs2HBUY1nZ4KMAQ/HcXcPqu2GOx+IY6xHk=;
        b=r1TjV3ss10zRvSO47Su1rnZ5zSZlXWxFuGvd7w/7DsFli7HDbLTYtEv56m3h6xFvCc
         x8iuZbVe6uts19ghfn8e9FGlQq6AjMJUFBiquOjMylJmddhgWhbsao6Z6BxI+16sb4P/
         oDK9c8NWxMVcX/LnhbFPk5HjerNAkAAbxAV9JfghJe36Au1sDVASgQVxoHCym6ttqvpd
         24zSFPeGQ96+QPNN6UYdWHhw5Qk8Hl6ln8o3Bcub64vnjuvWwC0YtTLLGBBZDftkiLPS
         W1lGLnEWNmUijoG+CvwktQPzswKea7Gzfy3Zc7W2uB9Wl8UsNAj25mkJ6Hwmj8Z7Doj1
         WgJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=cZmrGisy;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id u129si214155ywc.1.2019.10.10.02.03.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 02:03:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=cZmrGisy;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A91cR3151143;
	Thu, 10 Oct 2019 09:03:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=1cw9oEH7ZCs2HBUY1nZ4KMAQ/HcXcPqu2GOx+IY6xHk=;
 b=cZmrGisygrGJvpWx+UEHZkW6tZu3t3Nd3AwP5usb1NAjPek5krF5fYXukRoeNRqyBkxS
 2WmNnoY6kKFdPcdCBjZnxGvL8lcLk8ed6/Xmw55hS6OgMbRiNQohk0iwuV4EqhmJT95c
 TL7Dj0R0hvtLpqLjGXqOnX2JxyUNjb1VNreyazNmXba0r7X/A7x0AngQlG2mDncqYbjv
 MKL7MJahO7kX+N6DOwab2YQCdJAebAqkMM889B1ptbhpozqx5xAFcNOv1bfIXVOPXnLD
 HOM3OC9CKYj7YvvzNEu3+iUWezrmS7qIyZ2nhDMIkFUBVjVWOzlfn+N3mOeVU3kwGDa7 Gw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 2vek4qst9v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Oct 2019 09:03:34 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A8qnRm078254;
	Thu, 10 Oct 2019 09:03:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 2vhrxd95p0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Oct 2019 09:03:33 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9A93WcV021873;
	Thu, 10 Oct 2019 09:03:32 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 10 Oct 2019 02:03:31 -0700
Date: Thu, 10 Oct 2019 12:03:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/4] staging: rtl8723bs: Style clean-up in rtw_mlme.c
Message-ID: <20191010090323.GE20470@kadam>
References: <cover.1570682635.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1570682635.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=693
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910100082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=791 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910100082

On Thu, Oct 10, 2019 at 07:49:04AM +0300, Wambui Karuga wrote:
> This patchset addresses multiple style and formatting issues reported by
> checkpatch.pl in drivers/staging/rtl8723bs/core/rtw_mlme.c
> 
> PATCH v2 of the series corrects the "patchest" mispelling in the
> original cover letter and provides a clearer subject line.

The cover letter isn't stored in the git log so spelling is not
important.  The original subjects were fine as well.

regards,
dan carpenter


