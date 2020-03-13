X-GM-THRID: 6802949681377705984
X-Received: by 2002:a67:ef84:: with SMTP id r4mr7845720vsp.75.1584085704070;
        Fri, 13 Mar 2020 00:48:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:96cb:: with SMTP id y194ls478851vkd.6.gmail; Fri, 13 Mar
 2020 00:48:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vubFHLLV3+vwtSgIE3Lt2RYretDggbTs+01vsuN/wiJeBE1kAa9QXYzFYCCdq1EsB+zlFZG
X-Received: by 2002:a1f:1a53:: with SMTP id a80mr7598913vka.91.1584085702964;
        Fri, 13 Mar 2020 00:48:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584085702; cv=none;
        d=google.com; s=arc-20160816;
        b=RNDnEOlXR+TuItYkAePYTgGD5uNl+nzAXNWPswjflkfqguNfzU7w6fY/fnEtQRHosA
         q6H/tbEIJDvSWEsfdqNmuqHsxDfeOug2MKt6l0R/D4hBPzddeScJ/AYV/5fqIuIUlQ44
         Hejl2jSaz4KafvtrFR2t0ERWhupWRMWdG/z8TvJEaayQ6aE20wXIjAFuMSV4CGRs/hHA
         xdub3rXLAP0b/NLQQDB3jdj15WYf6wRxEJPEt0+3/MRMTM5cwyZJK84tMX/IwdIUWjc1
         0EahzS1g1iqX9+YYSMiYswhFsFtA1bB0PXr02hCQbbBN589/N4AoXcVef+Vy4S4Snw8L
         cvow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2SK3WWBLInNfBxx+nDShdd6/aLXO/zK5eUAghcZpK6w=;
        b=QrxXuSay6BLqxQ2ql3hDXlnxydipX4wuV9bIo9Qh0toUACxlr6l7E6VDMoXP3nQL4W
         HMKFCAozSLrajQddLIW+KMhE+AwaEL8VlPdOPKp6zZd55XhQw6ySocDYxV2FRqYgJgZX
         cSC6ACvrqVm904uBfxQL8uDS2B9BWcmwrF+Zvk4RLpx0tZClws2nYGogtP5iMq5sfQ3B
         gnsxP6ZzJGHqRYBGEoY1XE5kjtNL4BUq2aj7eovBNtgpWPUWQubZ5CbJmSKK2xHG72Yg
         yV3DiEmTS1Wj/lycAy8GLm9XxnCPuHTj4vz64vwPjgc9G6BAH28cEf+qO3nUAr0Yr7mb
         zYNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=dJTaazcE;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id 205si369833vkw.2.2020.03.13.00.48.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 00:48:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=dJTaazcE;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02D7dWup151272;
	Fri, 13 Mar 2020 07:48:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=2SK3WWBLInNfBxx+nDShdd6/aLXO/zK5eUAghcZpK6w=;
 b=dJTaazcEGYB5t2VvQ8V2QqJYkzxxJTFOcV6K/kLD5gFsJ8XeOzb0XrFF77RBQTJ8o6QV
 Co2WUAvK7LX+DRMdKSJjjiPVMbWArabCpeK/heebrdRjrckzKyAqMPmsKcmrqELk+P6b
 JL6uA/R1pcbuuUXFVHKX2TTGDOq/aqrx0BHlQGir1b3nWS9/Glr/Zrp9rgXu71Z1rHK6
 mnKVV8VNc1ufsBY2N3olqcxoBTFJA0W8aFdENf5TT5sl6ZTukmpZ/UN92qAtTT5Fo9L+
 jVJaSISWFkBwsbQM8yriTDAsAnye9PkssYn/8r6xyKEyfNygUpBhcpdjJN8bE7rSP+q8 ag== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 2yqtavjbg2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Mar 2020 07:48:19 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02D7ljuR109285;
	Fri, 13 Mar 2020 07:48:19 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 2yqtav271y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Mar 2020 07:48:19 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02D7mIYD004387;
	Fri, 13 Mar 2020 07:48:18 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 13 Mar 2020 00:48:17 -0700
Date: Fri, 13 Mar 2020 10:48:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>, gregkh@linuxfoundation.org,
        devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
        daniel.baluta@gmail.com, hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
Message-ID: <20200313074811.GS11561@kadam>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
 <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 bulkscore=0 phishscore=0
 suspectscore=0 mlxscore=0 spamscore=0 mlxlogscore=806 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003130043
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 phishscore=0 priorityscore=1501 clxscore=1031 mlxscore=0 adultscore=0
 spamscore=0 bulkscore=0 mlxlogscore=883 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003130042

The original patch description was basically fine.  Outreachy reviews
tend to be more pedantic about this sort of stuff than most maintainers.
There are a couple who have very strict rules, but try to avoid those
maintainers and your life will be happier.

regards,
dan carpenter


