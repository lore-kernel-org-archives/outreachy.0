X-GM-THRID: 6951014444226838528
X-Received: by 2002:a17:903:2490:b029:e6:faf5:86df with SMTP id p16-20020a1709032490b02900e6faf586dfmr37509037plw.69.1618411519195;
        Wed, 14 Apr 2021 07:45:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:7102:: with SMTP id h2ls1428230pjk.0.canary-gmail;
 Wed, 14 Apr 2021 07:45:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxDCPK3hQ5C6fXQFEKwfjsuekvw0tDFnYbnwQ4tN9Uwx0bRH/XP3gpLEKbvxBHRdMLV2tFf
X-Received: by 2002:a17:90b:e8b:: with SMTP id fv11mr4041189pjb.66.1618411517874;
        Wed, 14 Apr 2021 07:45:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618411517; cv=none;
        d=google.com; s=arc-20160816;
        b=DnrUhoQJ/Us90fH6LMuPxvXl4T02acG0yZcuxA2PNQio7GS19Cd0uw5kC6qTl5gOpY
         8OyaokFw6QJITpjgifACaR6vu61Jy9NIuhiWevlnrg0xp0UCyA354+ltJgCtacoAqpE2
         2qNhWNE3W7IhUh4R90tgx0F/fU+UtnrJcC3m7Dt6qZo2WSsN1RmgJN7el2Xo7S5cMNWL
         hEu+kBdQK0edIJN6pE9A7RBDfIOgBamJzTshviqRfsIZWFlN2EVbAOw7NP9Y85ZxIBNT
         4+Tob+ZR8+5BbV4DQvWRb+obI62qbepUtKQOo2q08AiRQdS6p73KJGzrEPSKW0Rzf/rq
         Fodw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kTk+rSX45ZvWLEi/PopMLe/eCimNEnwi84d64oUBaT0=;
        b=y1UxpBFHgWsIlcmhQBF1J394cogOB/MdkE/VQZb7WYJJ9vSo7fHXHfK4RclDe3oIbt
         +ADqzUmR9cFZAhaNNfe7GskohbqAGT1NUUQwSyCH5i/loAbeiNU3000s3wW3P5E2tUks
         McDBUl4Q6YeelbcVKEA5Ytr7yh30FIUDadFXBdmOlXLWmi3UaAX0/7Uk81FWgtdrg/WM
         OoGDTp1KRgfdKtYxBlpYW/WPJSnrNoqJQZzq4s7gTzZKROTIVTNUL2IafQjNVAwNc0qW
         3v1DchFKQ4vKy4iKcDYLOpmijtrHyWoT9Ho1IgNs6IJu8D1LcWuwVv6F5Gd9CrdCYSEs
         16oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=CNaeiTk9;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id 131si1104512pfa.2.2021.04.14.07.45.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 07:45:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=CNaeiTk9;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13EETBBo165727;
	Wed, 14 Apr 2021 14:45:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=kTk+rSX45ZvWLEi/PopMLe/eCimNEnwi84d64oUBaT0=;
 b=CNaeiTk9Ochbvp1FDwb18+5W4N6kbSS3d5JFx0hHO0vWxtPRMQ7MTxypKGmUDqHSfdti
 5UURHWflFhLToJzpqLwsktDQSVRCgOMF1TnN91zKIOuqGpfErLvv1hkCW0Q7rZz15CeD
 m9OJxbEwDN0WtsD0CCdgAUfahCpxlHiPWMI9mXmENoh8LqOSq1cDkiNmiFqTnvk5XjeT
 HuaoR9dDT/rAftNxGXT/90jO/HwM2iUKoaB8Y46WdaTs+a3a+53cZ+8SD9be4mmA/P9+
 kvB4e8+JBT77DYFeaP1R2BLjVPe+ohJzzUAWk8ImTn4mXC0Tv/ZG6vy0/aFOqtALFnf9 8g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 37u4nnjngr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Apr 2021 14:45:14 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13EEPjQ7168594;
	Wed, 14 Apr 2021 14:45:12 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3020.oracle.com with ESMTP id 37unx1dxjc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Apr 2021 14:45:12 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 13EEjA29001614;
	Wed, 14 Apr 2021 14:45:10 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 14 Apr 2021 07:45:10 -0700
Date: Wed, 14 Apr 2021 17:45:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: media: atomisp: pci:
 Correct identation in block of conditional statements in file atomisp_v4l2.c
Message-ID: <20210414144502.GW6021@kadam>
References: <cover.1618409028.git.alinesantanacordeiro@gmail.com>
 <0ef18a36d6905628fa596fd5e0a32fdb9c6a8ada.1618409028.git.alinesantanacordeiro@gmail.com>
 <20210414143011.GV6021@kadam>
 <alpine.DEB.2.22.394.2104141638140.25259@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104141638140.25259@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9954 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 mlxscore=0 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104140101
X-Proofpoint-ORIG-GUID: gJPRyDZYbb6L7H-4ZQ-exGkwBaa86ze0
X-Proofpoint-GUID: gJPRyDZYbb6L7H-4ZQ-exGkwBaa86ze0
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9954 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501
 clxscore=1031 lowpriorityscore=0 spamscore=0 impostorscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104140101

On Wed, Apr 14, 2021 at 04:39:20PM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 14 Apr 2021, Dan Carpenter wrote:
> 
> > On Wed, Apr 14, 2021 at 11:06:02AM -0300, Aline Santana Cordeiro wrote:
> > > Correct identation in block of conditional statements.
> > > The function "v4l2_device_unregister_subdev()" depends on
> > > the results of the macro function "list_for_each_entry_safe()".
> > >
> > > Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> > > ---
> > >  drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > > index 0295e2e..6d853f4 100644
> > > --- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > > +++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> > > @@ -1178,7 +1178,7 @@ static void atomisp_unregister_entities(struct atomisp_device *isp)
> > >  		atomisp_mipi_csi2_unregister_entities(&isp->csi2_port[i]);
> > >
> > >  	list_for_each_entry_safe(sd, next, &isp->v4l2_dev.subdevs, list)
> > > -	v4l2_device_unregister_subdev(sd);
> > > +		v4l2_device_unregister_subdev(sd);
> > >
> >
> > It's really more common to use curly braces for list_for_each() one
> > liners.
> >
> > 	list_for_each_entry_safe(sd, next, &isp->v4l2_dev.subdevs, list) {
> > 		v4l2_device_unregister_subdev(sd);
> > 	}
> 
> A quick test with grep shows 4000 lines containing list_for_each that
> contain no {, out of 15000 lines containing list_for_each in all.
> 

Huh...  You're right.  Never mind then.

regards,
dan carpenter


