X-GM-THRID: 6743623075363815424
X-Received: by 2002:aa7:9525:: with SMTP id c5mr2381851pfp.22.1570607501827;
        Wed, 09 Oct 2019 00:51:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:d68f:: with SMTP id v15ls385647ply.15.gmail; Wed, 09
 Oct 2019 00:51:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzZbVJ0CB/uzk62jGHh/Ly2OsLZmbejw2METs86vZTiSbEn702GQlByNuFokpRFYVwQPDfq
X-Received: by 2002:a17:90a:1b49:: with SMTP id q67mr2544610pjq.115.1570607500966;
        Wed, 09 Oct 2019 00:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570607500; cv=none;
        d=google.com; s=arc-20160816;
        b=deIivq3Ayw5kKUhkgYJpGAyzVRFcd9833bClJYjyhdpv8mZ5K4a2MqWx1+yakK3xSY
         jUhvyzdZroeOCa04324r/6samGPayYkqQtQLYIIQDafQMIW0/GqiO34gtDfLzv2i/BWB
         DJAJBS7uXlbYEkytvLauUYV62RMuM7B0I/6jCxkL2kI99cONac2dCRivxtDmsZCcVYgz
         3ZGGN2dT0hJCVQ4WvrgFiwQSTya/41q89nJRBAfjBqNsZ3GbfiLCsKNdGsPZl1TYpeZI
         IKwP+B+8ma8M+2qmHrcQLQOnYafl3Qiwcy8K1IVNfen66ofd2Okd0z07xyfOlY6ea3ie
         AafA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fS0JrYInYkphsdP54O5JK81e3nDduq9xvICygp3ka6A=;
        b=BKR7DBvnlhmgXQAlV+i9CBOipBLWmAS0oL5Nn0Taf3HJO91kQWWcxvBl7A68j05uJh
         zqQ4RANha0IB6PcOTPmastz3q1uldUAf2UG71XENadawcy/MyUZKdHEgKeLi3c7krOgG
         dxfz8ZYjbxxSsEBlwigK7tzw78Nwi06GsPbgMOPiUmVIjX3JYss+qDJVDfjXEDfz7rqd
         RbH3yXBEBvUBSECNcUgf7UW+N+62y9IHKOr0dGJdQZhIQJuf1SUshdj1EoquFZjM4DT/
         jx+g9jy2YYbhqX7mXU7fa0YCvqTxtyAPOgpnlTNExIxoAkb2FAZHV49pZpRskWKDogN9
         Bh6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=q3g9rjfP;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id b1si121323pjw.1.2019.10.09.00.51.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Oct 2019 00:51:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=q3g9rjfP;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x997mt5C119347;
	Wed, 9 Oct 2019 07:51:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=fS0JrYInYkphsdP54O5JK81e3nDduq9xvICygp3ka6A=;
 b=q3g9rjfP4+oTwmMWdN4bGO5M23hL92Qrqo+ikySgwTDMXPYTgl/WHQorA/uBA1PyZjqn
 T0g/V9NN72W5fV2/1fZxDdjoY7KAEGXd5paJ0IxF/3bAWSIppNetg6GtWcZChFrsyzlY
 WvqJpIqyX/hCLbLz9Wez282PMhKoStqhJj+6xc0pftibsDFGDO1Uy6QUnxGOO+Z3TUXS
 lyPefHP7xc1oHrjc1T3FUz8fAVkfWef62xfgqOqSQkNoUvNiKW+j8sgp72q0srzGlS6j
 uDCuq6Njppe1tkRmHpJtX308RYSvXMhTmdkh9zDcfmIAROxDh5VcEB3kA1qVG5cdL3nd PA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 2vejkujbs6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 09 Oct 2019 07:51:34 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x997mx8K082151;
	Wed, 9 Oct 2019 07:49:33 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 2vh5c9xxfw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 09 Oct 2019 07:49:33 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x997nTMc027473;
	Wed, 9 Oct 2019 07:49:30 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 09 Oct 2019 00:49:29 -0700
Date: Wed, 9 Oct 2019 10:49:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nachammai Karuppiah <nachukannan@gmail.com>
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: vc04_services: Avoid NULL comparison
Message-ID: <20191009074916.GJ25098@kadam>
References: <1570589056-14386-1-git-send-email-nachukannan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1570589056-14386-1-git-send-email-nachukannan@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=934
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090073

On Tue, Oct 08, 2019 at 07:44:15PM -0700, Nachammai Karuppiah wrote:
> Remove NULL comparison. Issue found using checkpatch.pl
> 
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> 
> ---
> 
> Changes in V2
>    - Remove all NULL comparisons in vc04_services/interface directory.
> ---
> 
> changes in V3
>    - Fixed warnings. Reported-by: kbuild test robot <lkp@intel.com>
> ---
> 
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> ---
>  .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--


Only one --- cut off line is needed.  You have two Signed-of-by lines
as well.  It should just be:

Remove NULL comparison. Issue found using checkpatch.pl

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
Changes in V2
   - Remove all NULL comparisons in vc04_services/interface directory.
changes in V3
   - Fixed warnings. Reported-by: kbuild test robot <lkp@intel.com>

  .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--

But this doesn't affect the final patch, and we can see all the
information so it's fine.  No need to resend.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter


