X-GM-THRID: 6802944332146933760
X-Received: by 2002:a05:6808:907:: with SMTP id w7mr6179132oih.78.1584096937829;
        Fri, 13 Mar 2020 03:55:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls2680525otj.8.gmail; Fri, 13 Mar
 2020 03:55:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsJCCY3ca6YhT0bFMNxS1sv2vi7ePnHNYWN7ahQ+ZTK5plewNFFiaUIp6c2wzNyWM0wxfSV
X-Received: by 2002:a05:6830:1f54:: with SMTP id u20mr4057817oth.322.1584096936581;
        Fri, 13 Mar 2020 03:55:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584096936; cv=none;
        d=google.com; s=arc-20160816;
        b=Tn8o33k2l9LUdxbZJHwkUDivd5gEglZeiCIyD356pu8wIcpdPyChwod4v30KY91cSE
         pSkzyrgWK7RoQrUs7tj1hrBSaXnmLujEqaanzvSMld9bgRnPp83rW1tuJ3vhXQw+Lo0h
         ejiJ14Tvkc+j+NzoS/IM3aBcgQT651Rpo61NUVCM3EBM1T5e+K5QfpZu9RHZpmDTufEC
         DO8kespzoBB77WAXlWHqh09aBvf83mJ9lkur72hGW7APUohYXA4FJ+Jz4lLzQGkoxYAd
         1Z/NcXldN+zL7RzIB5T1FlLls4KjNldskXPqevmrdsNTl5DY6t2ZkRfFNGIbttPHPGUK
         DEFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CTUdE2f8E8NgC8/4KDMI6yvjJ94p2sQr5a2U0IEbmvw=;
        b=oNcLFK0c1Nzrrj2o1TYMmct2/njJxSNoANwFDV82LcwgQWadmgeisrjIFVxw4CTKfR
         hU1wKPR1RTPLZHKNoP9tGsU650VtoCtBUMB0lUBDrYgY8e9+sUij5RHG96RlwqNGD+6U
         Ikbf4L39hxN9wz2eKyc8Ix/uNDialss/9S4AJSA3d3MBUVXGJEqeC1NGgVLpjCEBvSqH
         4EKuSDvIo4Nv4IRTkSTeiR5D3PrcVWY2nfiLpAjHrfv6r9vnDhuzF/hwc8z49NiYRB7m
         LqfbXc8FKSU+UdDRO4Te2SAsDDOq3rN5wtNI6GdRzgPCOIogeRFkrtsPFL+use1i+TG4
         Nr5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=zLIUiQhE;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id u22si671933otg.4.2020.03.13.03.55.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 03:55:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=zLIUiQhE;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02DAqjep037961;
	Fri, 13 Mar 2020 10:55:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=CTUdE2f8E8NgC8/4KDMI6yvjJ94p2sQr5a2U0IEbmvw=;
 b=zLIUiQhEyI19lyjn/b2E9lHuqHWqZOdrL/KbpHZLXtaSUDi0BqBpVCAW7xWClAa7k8S7
 Heq05K470y/1BswSW0DRVTKHg+LsiyDKr3x0YA1wTm07BfYD4+/83TUWeFpLjJsmQUhJ
 YlR6VtTCJZLL+pJ2+CtACu7FHAZ9pV948qSvEzNIt9UXc4DPUncmqCZ4EkqxBDPyrMHk
 pj3Blj4vO1+15xoVWVeR7fZlyItHv8aam/89NwVelIaP2sfVCJIbUkj15yQ0KlR+FAWs
 mpoDttPVvARx4RxoNz2Mlr5SoFZ5ghp1qL+nNbeeq0vVCcL7LpP9ltuJEEuNbhQw9cMg rQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 2yqtaeu8du-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Mar 2020 10:55:32 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02DAqFS1154577;
	Fri, 13 Mar 2020 10:55:31 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3030.oracle.com with ESMTP id 2yqtaccvny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Mar 2020 10:55:31 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02DAtTaB023409;
	Fri, 13 Mar 2020 10:55:29 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 13 Mar 2020 03:55:28 -0700
Date: Fri, 13 Mar 2020 13:55:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
        sbrivio@redhat.com, daniel.baluta@gmail.com,
        nramas@linux.microsoft.com, hverkuil@xs4all.nl,
        Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
Message-ID: <20200313105522.GU11561@kadam>
References: <20200313104920.19974-1-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200313104920.19974-1-shreeya.patel23498@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 malwarescore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003130059
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=999 mlxscore=0 adultscore=0 malwarescore=0 spamscore=0
 clxscore=1031 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003130059

Thanks!

You sent the same patch twice.  Next time put a note under the ---
"Resending because I had a typo in Greg's email address".

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter


