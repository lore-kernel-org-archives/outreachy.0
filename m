X-GM-THRID: 6751365568986611712
X-Received: by 2002:ab0:22d3:: with SMTP id z19mr4860808uam.108.1572249478662;
        Mon, 28 Oct 2019 00:57:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:324a:: with SMTP id y10ls810406uad.8.gmail; Mon, 28 Oct
 2019 00:57:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyIDXIh6E2mxoxO2zp+8f1cUxQ80/8hUzQBMyjS5P79Yrz23//un+/T8XnfQI7ZU1jq3fZH
X-Received: by 2002:ab0:2395:: with SMTP id b21mr7706098uan.122.1572249477594;
        Mon, 28 Oct 2019 00:57:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572249477; cv=none;
        d=google.com; s=arc-20160816;
        b=knyRNvkya9bohQguKQuvKFlWOnBKE6Mdv8Dft/i8m5bzamnZSkac4QH3UjPlzH6q/r
         lCrc3kU1nQ4KdjEY/4qQyB9KoBn7BWMxbGVtwDb18NVtq1/Pp5AZBGM3HbqLonSuYaTY
         zcDypwS7T+EYOeBd8ZsMbDEtwKfA4kVs1Tj1r5F8jqlhKwC5Rrs25g9hF+h1ZD/16tjx
         x5gemEAm9yoD4iRRUNwnS/u5q/D9iqyAh1V76PKrrJ6QVp7vt2kUr9PUUl6MpSPg9CzW
         J8va37XMl/1C3MaLAy5BUxRYz7uo0sNillxXijwGcLcdJoS5V9rGBuP3TVn5Pe10FJJz
         BE9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jQ6PJCli6p5m7RwQspPzyqTvse7VkcpWcjvd3zOJ4+A=;
        b=c688d1pkPzTUVpqVyuRvcVqtm89dtv6DZugQ/nh7tAgpSFsLnhwimcHKkh6tyufNxT
         pr+mf9vs+zaED1QpWTowLBjIjH8zcL7e4bGjSJERVXnuP2SWZvbzfv3XlMmr5akNYyW2
         uXe8kP4b+SwUOn+mKz3hvcyybh2FXxC31onChYsdGXIKAApCW/F3Qmes7wCfxCFg22Dy
         CBVYlfYrpOWAOfH5htPGkJiJ6O938nBmAWlrXvHenS83GYPqmlUHQV2APlpXwap95BpS
         FQK4hnq6lFdtk/YbrXwbPvwGFr5gbUfIBl0GeDNiWNTMGAw+E6oz8SKpNIC737G/1l64
         0FFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=HAQhKnpr;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id p78si614550vkf.0.2019.10.28.00.57.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 00:57:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=HAQhKnpr;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S7s6n4177032;
	Mon, 28 Oct 2019 07:57:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=jQ6PJCli6p5m7RwQspPzyqTvse7VkcpWcjvd3zOJ4+A=;
 b=HAQhKnprpT+rni6UrLSaaxlllVPKP9qFG9g/DnYovW+Mey13732trRR/riMkNnRM66Fn
 gl7+/0Gc0h4RVBzI/RlvZ5ewCa+Jh8JsFdLxEhMof//9KM4oWmqxuAg6Iu22b74X/Hg5
 b325kHQWHNF2LPUsPxCy7bAdIUu6yqsZlHjduOVuIjVUEkR9w2u6qSeZGqM9IRXopZJT
 tl25BUtCGQvLWQPAl8gIpD1LotwFU0P6kx+GMTjOEkDLAeWyzHqNozAKQHHEKnZHfarK
 PJJOeZcQU6AkeYMFNqBs9JumOrSSdf5aqsQH78Kfl9E5zmX+aFSOgTBx1R/sE+tLebyS jA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 2vvumf50na-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 07:57:50 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S7s07f105156;
	Mon, 28 Oct 2019 07:57:50 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 2vw09f7h59-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 07:57:50 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9S7vmEl029995;
	Mon, 28 Oct 2019 07:57:49 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 28 Oct 2019 00:57:47 -0700
Date: Mon, 28 Oct 2019 10:57:38 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, Rob Springer <rspringer@google.com>,
        Todd Poynor <toddpoynor@google.com>
Subject: Re: [RESEND PATCH] staging: gasket: Fix lines ending with a '('
Message-ID: <20191028075738.GC1944@kadam>
References: <20191025232935.GA813@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191025232935.GA813@cristiane-Inspiron-5420>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910280079
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910280079

When I see a RESEND in the subject, that means you are tell us we messed
up and accidentally ignored your patch.  So then we have to figure out
what went wrong with the process and so we don't mess up again.

It would help us if you put a note under the --- cut off like "I sent
this a month ago and never received a response.  Here is a link to the
email archive so I know that it made it to the list."

I recently had an issue like this where I complained that my patch
wasn't applied and the maintainer said "Oh.  That's odd.  I have it
written down in patchword that I emailed you to ask you do fix the bug
in a different way."  So these sorts of mistakes happen.

regards,
dan carpenter



