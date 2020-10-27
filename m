X-GM-THRID: 6885771919120924672
X-Received: by 2002:a63:eb09:: with SMTP id t9mr1728679pgh.279.1603802670567;
        Tue, 27 Oct 2020 05:44:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:941a:: with SMTP id m26ls607173pge.10.gmail; Tue, 27 Oct
 2020 05:44:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRsQHZDPBzuYW//f3+NGEsuoxt8wO+JBZc6HMLFIvTDQysz+wtbBEly/66rykVQhBhmJ9l
X-Received: by 2002:a62:30c2:0:b029:152:83fd:5615 with SMTP id w185-20020a6230c20000b029015283fd5615mr2174267pfw.22.1603802668698;
        Tue, 27 Oct 2020 05:44:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603802668; cv=none;
        d=google.com; s=arc-20160816;
        b=ghsGfUFGRcmpAo3Zrn0epC0wiSVp5VXsSZOnanb3D1I6TWPKraQ0FLIoD/Radu893v
         m/hYKYXJUv3HvSY4RSYotjGo5jId/ESdhR4uYA1SCzzbzcHszaX+SQhj9IHZiQVRBbkm
         sYlT7ohi82dhHT7GW/wwQXJkKHhU7w4yNvRkzGaARB5puQ1S01sCCXL3Wt/Jx5ZNvPj1
         2u91yDiyMM8hSW7+sRKZQBgdEDfio0+z6aRc/zmRm67ZirSYcdkhW+OoziherkBBvq63
         oCCNjfWwU3BcYlOMw/TZdBi9fSZE5NRkGz6qjbsvqdDA0R9Qe1hUjAYSJa0AG62bYb+3
         vU6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=W0kU8jHRcwyBRlgrd+WwhgxOmD0kqKKZKBvEtmKWzr0=;
        b=OSlZ0mGqN0i06x7bBEEoPBwJtBYgzpq/bzA+c1sPIa+kAhBL/7aTZxqEgvYy4aRzRH
         5tCs7aVVAdFZjzyQ7CZcDOe1hcgNUnkT3YEBvE9fO70Dv2GoV7w6waZd/nQjfAHn60+0
         fVpcJUW2FW+ZG7xKLcW6PQ0Ju1WT7bOIvEXjqGLGpD+K6FZ1IWdAPltkaFhKm6MnwocG
         eAWkCz9RfpSDI0Dl7d18ZBDSGObuN2ARyLSXFQJ5vhQgkHRIAV7Se2k7ONvkxm+c3zOE
         WA2Z/B9u2zENWwFApR69Waw7xjy/oFamRyI3b2S3Db1nTesSObnrepK1P7eu1Pl97nvQ
         79uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Wxk4MFZK;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id 191si91873pfu.3.2020.10.27.05.44.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 05:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Wxk4MFZK;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RCTPMN025052;
	Tue, 27 Oct 2020 12:44:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=W0kU8jHRcwyBRlgrd+WwhgxOmD0kqKKZKBvEtmKWzr0=;
 b=Wxk4MFZKtap2wRdhiuOxvc0S9ohlfpc8OYlMM9/MO2RYzExGl6yZq71ZUV8KDLKHxev4
 PtC4gsB+Ko6rrOnvg6aAm2fMK/OcJjnf7wF3kv2VSeYQ/IOkGv8jX07GX5W/M4Z0cGUP
 SUUwupvgd15U0+e4w7FTwDAMuyrPG5NuYGKpCofeGjhYmyiGRhWMtZwI90wWHJBp4dwx
 gzTLKxc9pr7Kyag/dlxqSLU0yjYH56m0IvnEZzfrJsFB3T5Owmd5JEX2s2Q8gNqnIx3w
 M6D2I1sYy7qiOHfe/0rw5ozYGoiccIpjmvmzt3yNUg0tsS4JJLytAMPKRFRTB9tBsVYT mw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 34c9sasteq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 27 Oct 2020 12:44:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RCVXDi142242;
	Tue, 27 Oct 2020 12:44:24 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3030.oracle.com with ESMTP id 34cx6vwmwg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 27 Oct 2020 12:44:24 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09RCiNEK028658;
	Tue, 27 Oct 2020 12:44:23 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 27 Oct 2020 05:44:23 -0700
Date: Tue, 27 Oct 2020 15:44:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Elena Afanasova <eafanasova@gmail.com>, devel@driverdev.osuosl.org,
        gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging/rtl8712: use BIT macro
Message-ID: <20201027124417.GW1042@kadam>
References: <20201020182439.43314-1-eafanasova@gmail.com>
 <20201020182439.43314-3-eafanasova@gmail.com>
 <20201020184404.GC20115@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201020184404.GC20115@casper.infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1031 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270081

On Tue, Oct 20, 2020 at 07:44:04PM +0100, Matthew Wilcox wrote:
> On Tue, Oct 20, 2020 at 11:24:39AM -0700, Elena Afanasova wrote:
> > Reported by checkpatch.pl
> 
> Checkpatch is wrong.
> 
> > +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> > @@ -8,7 +8,7 @@
> >  #define NR_RECVFRAME 256
> >  
> >  #define RXFRAME_ALIGN	8
> > -#define RXFRAME_ALIGN_SZ	(1 << RXFRAME_ALIGN)
> > +#define RXFRAME_ALIGN_SZ	BIT(RXFRAME_ALIGN)

Yeah.  It's weird to talk about size as a BIT() flag.  The RXFRAME_ALIGN
is not needed.  Just say:

-#define RXFRAME_ALIGN      8
-#define RXFRAME_ALIGN_SZ   (1 << RXFRAME_ALIGN)
+#define RXFRAME_ALIGN_SZ 256

This is literally used for aligning the RX frame.  It seems like a crazy
thing to me that to aligned at 256 bytes.  I would have expected 64 bit
alignment or page alignment but not 256 byte alignment...  Weird.

regards,
dan carpenter


