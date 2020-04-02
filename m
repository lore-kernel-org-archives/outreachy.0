X-GM-THRID: 6809468497850007552
X-Received: by 2002:a67:f3d3:: with SMTP id j19mr1579403vsn.190.1585822572744;
        Thu, 02 Apr 2020 03:16:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:93c6:: with SMTP id v189ls196041vkd.2.gmail; Thu, 02 Apr
 2020 03:16:11 -0700 (PDT)
X-Google-Smtp-Source: APiQypLbzck4bpOysuZxI0sceKzyj90peSTrIOWLblmuhFe/a5AIRAfLi0S64dI1r4qQYcerKfJm
X-Received: by 2002:ac5:cce8:: with SMTP id k8mr1586862vkn.5.1585822571627;
        Thu, 02 Apr 2020 03:16:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585822571; cv=none;
        d=google.com; s=arc-20160816;
        b=oxmDpNeznGg7Evj7+XccshWgtwGClZw9IlcLEFdOPEIkEgbcMLtcsaD0acjv5NQOg3
         4oxRvZ9sVVs2hX9g4D06SZeiU/qdjO82gBzSrFwN3A/XqHiBkuLviD59hwplB24iZ8dY
         0RSXCGlE7/osfuWT9f+ISDeHy5buknk+1RJB+56vYdQq+OjNq8C3G0SorD8jGhZJZbjY
         6Me4C4hHubXYkA3xntzTvUb6nCbzw/x/Bn6sf89eWSVJMqamnzecYvVVsYFDMenFeCme
         AFR7jxRfzo4WuaQQcrR6lhN/DJmSADNyBs9lDge+4p02Z4mstDuSRkTwJvlwS+REJ07c
         4Vmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HWTIrpafr91HYrdV2dRbUksDVtLYW13UtWhLmOUYZWk=;
        b=vHDKpcK/o2MgZ825TZIJ+UWYeenD2GDLnuyNw3F1E5mBWKK/0cmd4PZkIblIhhnzJT
         b15j1sQeaSmTuoW0BJZwLZTtojpv9g0kbupbOR1h2B1LHBmg7rxAp7WVXUhTJlW4muOW
         rVf6/eDssnMbGFTtw4H6zqOWFwh3InTY2a4RDKX29Vazy4UEZQ+ETFegd0y8K2N6HXx6
         XJSgU1hdQPRSQoDPfHD5QCUqQe4C2O6RDtq2KDMPCmWb06QWdm3ccH3zGGKF+tzFe6+z
         Dv8+AZiv+zKAP+1vcZhvOgcExz8/7juSQrnO+iEbCagO09T8kP0nq9dfUL0DujGY9f6D
         5Eyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=gQQsS0Kg;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id g6si305618uab.1.2020.04.02.03.16.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 03:16:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=gQQsS0Kg;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032A9gGb085048;
	Thu, 2 Apr 2020 10:16:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=HWTIrpafr91HYrdV2dRbUksDVtLYW13UtWhLmOUYZWk=;
 b=gQQsS0Kgb7KsWSG8D141EAjoyO6P09bnxfmlWYuBqL9CCTWVspZLwsbP+tY7cu3i0Ke9
 F2OIAz+FZwriAK02Kvv1tzA7iNIA/Nt/pJQTgFlEkN67HvCis1DZPQ724DJWG5wM6eVe
 Am8xpUNTa12HngjjOOLt9lldapZxNl3cP7CafrZFFfM4jR1Wy5eVVVUTc0hK9Wg2T5NT
 HBX02rNs1gc7+3uDxQRB6OrE4urf/7T84At1qdqE763n5BDudGfBWLIlE+H877NK44V7
 WN7AHsJQUVNv1nEmJvCUxVGBZyt/dOzUuK1lZTHOtrxl8GMSZ1Oc2j6+K+66plR7D0Jr cA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 303cevafhk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 02 Apr 2020 10:16:02 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032A8Koh062885;
	Thu, 2 Apr 2020 10:14:01 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 302ga25b9p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 02 Apr 2020 10:14:01 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 032ADveF027354;
	Thu, 2 Apr 2020 10:13:58 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 02 Apr 2020 03:13:57 -0700
Date: Thu, 2 Apr 2020 13:13:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
        Stefano Brivio <sbrivio@redhat.com>,
        Forest Bond <forest@alittletooquiet.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
        Colin Ian King <colin.king@canonical.com>,
        Malcolm Priestley <tvboxspy@gmail.com>,
        Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: vt6656: add error code handling to unused
 variable
Message-ID: <20200402101347.GI2001@kadam>
References: <20200329083829.619127-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200329083829.619127-1-jbwyatt4@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 mlxlogscore=960 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004020092
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 adultscore=0
 clxscore=1011 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020092

Ignore this one.  John sent it by mistake and has already sent a v3.

regards,
dan carpenter


