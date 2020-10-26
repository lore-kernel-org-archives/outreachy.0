X-GM-THRID: 6886889197397868544
X-Received: by 2002:a05:6214:1431:: with SMTP id o17mr12634872qvx.43.1603705547818;
        Mon, 26 Oct 2020 02:45:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:d07:: with SMTP id 7ls4240699qkn.3.gmail; Mon, 26 Oct
 2020 02:45:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw7nShXS5npLlXRrwA5znrL39f/E2IpF6w5Sj9Ag+CUP38/SQaAUafCWFOQ6a9Ajtl7JJLj
X-Received: by 2002:a05:620a:1188:: with SMTP id b8mr16553745qkk.265.1603705546471;
        Mon, 26 Oct 2020 02:45:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603705546; cv=none;
        d=google.com; s=arc-20160816;
        b=S9oeWbuveVNR1RfwKGPF5WmcoXBreA/tRcB8FQn7byKgR0mwWoYxja+zCOuAf4XoYC
         2Ivf9bG4nF9HHwFvIAUtsp4didrC/I7XSWuSvzs3ODyuZpENBd057IagdDla5xy9Wnf1
         qvG7KjKjuvUm6Lk/qxapBV+t/Y1wAxMCgSlrGOxoD1Mrj+HiICSyd6NTj0pEjzd077GC
         UCDrMJzs84ndjmao61J9fq1h7IiFhAVrxW0u/xZE3pqc09eThCbI0h8Du413/fk/m/ha
         InEi06Ska17sWh0GYQQ/ChJ8Jsh9PKtXRCLq5IsE1j8mJwU4e7OGTJXubwDs0mQqvqH9
         xJLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uqhrAdg3TfmevqiVljqGouwdkFT25FCvvNohZL1rOVU=;
        b=J5IBo2gX3CHelQzcKJwdR9XT6bDw0mUVELEqJ3IV0wpVENOVudbwxHsng2yX5MFnhy
         Man/cXdT8u4n0wHphIK55PGHFjq6arfEtb51wiN5rWFB32JCZDG/L22r6yXokttIkAks
         0chdObRXUzPp0VbCa65y/I+Kc0jdZ6FxjdLx9roczeY1cBp0f26g1o476SxorvRLdIVw
         NH3KFzhjRWXwwnjdlb9dELWGZThXhZp4VInyl3Mvlz6HTU7L599Sd1EKYNjfPYod1v9o
         KEZXiMt7+MUWNGMBXSUl2tH2z0PGlhqOKUHm3Gvv6VZM3qvRAjfuYgj3/g/u+w/1QwqG
         h16w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="V2N+/FzK";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id z205si538991qkb.1.2020.10.26.02.45.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 02:45:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="V2N+/FzK";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09Q9SQe3023049;
	Mon, 26 Oct 2020 09:45:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=uqhrAdg3TfmevqiVljqGouwdkFT25FCvvNohZL1rOVU=;
 b=V2N+/FzKrkMVsGNKfi49L6L0b6p8fc/w9VfnIOU63WO1qTzZQ7iQvpNhq9x9xOmv5LeQ
 eT2XXmFlmub//oQ0g+2plryU12hCGtTIGFMVyoWbBGvrgo/fznMvADg3yJ99nqo2PBQl
 RL7VZX4adNzry4htFbWEofT4uVMPzzfVa7VQZVV3C1TLIC0U+OD2Gf1Csjxw1AjYV0I1
 OMSKiNbgOgp915qcZjR1S9+COtTQ8pP4ZHxgylqJkeyYjx2BB4V559h1LBoNTZOEJG8x
 Irlk2C1eO+gloJPTsU3IVfUu3YPEEDCA4W25/ULZJDIXBDLmYkf+sDNeDO4uDEfGSDnK Vw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 34dgm3sd0y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 26 Oct 2020 09:45:41 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09Q9VEgD083368;
	Mon, 26 Oct 2020 09:43:41 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3030.oracle.com with ESMTP id 34cx6um208-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 26 Oct 2020 09:43:41 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 09Q9hdGp003086;
	Mon, 26 Oct 2020 09:43:40 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 26 Oct 2020 02:43:38 -0700
Date: Mon, 26 Oct 2020 12:43:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Elena Afanasova <eafanasova@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: rtl8192u: ieee80211: replace kmalloc/memset
 with kzalloc
Message-ID: <20201026094333.GJ1042@kadam>
References: <43e637becf35f98a952c38ee1a5b690798c62c75.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <43e637becf35f98a952c38ee1a5b690798c62c75.camel@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9785 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=747 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010260068
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9785 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=764
 suspectscore=0 clxscore=1015 mlxscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010260068

On Sun, Oct 25, 2020 at 10:54:31AM -0700, Elena Afanasova wrote:
> Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
> Found with Coccinelle.
> 
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
> Changes in v3:
>         - use array_size()

struct_size() is more correct than array_size().  If there were really
a danger from array overflows then array_size() would not prevent it
100%.

There should probably be a static checker warning for when people do
"expr + array_size()".  If you're looking for something to write, that's
an idea you could implement with Coccinelle or Smatch.

regards,
dan carpenter



