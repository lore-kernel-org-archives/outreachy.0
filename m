X-GM-THRID: 6615663139748839424
X-Received: by 2002:a62:8590:: with SMTP id m16-v6mr862804pfk.17.1540379394587;
        Wed, 24 Oct 2018 04:09:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:51cd:: with SMTP id i13-v6ls2049766pgq.1.gmail; Wed, 24
 Oct 2018 04:09:53 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f0Ap57hBSj8uzjWcbkuYQic/MdHTDoeu9XIxcw1H/Q7TV1y4RPJrEsYKP+IHcmOA/PDinM
X-Received: by 2002:a62:44c3:: with SMTP id m64-v6mr924593pfi.48.1540379393748;
        Wed, 24 Oct 2018 04:09:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540379393; cv=none;
        d=google.com; s=arc-20160816;
        b=mNtg5rxSC7rMWagF8GLt6VQfzZrWJ4duZMHhho62mtSCb/kG9CZFMQxEti/ylyYDx9
         FPfrfv1202sHqsxi6PHlzx1bkhwFB20Q/8pJVI7tvWCOEK4OtEmkG2rxJJt1TTVfCh2G
         O48jvOPxWWXsRpRHYbSuC8rKU6dKrg3PeGhEADVoUY/JyJxQ+ymopq4jLY61rq7eKKZA
         LTAYzkaMbbVlOddBOb2aGp23RUsxSkqlNWfOnHiaasFhYxxLzQ52ewgB72fjFm62mv4C
         8itmvZUQXDVVLm1N5cpzKu8S8Ys0xyAq9rKGl3UwQCwaNOCLqov2paDz2zHpHco6p5Yy
         +H4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Xb/78hzLIwWTGWw0xNLO4MPSGEvHRJrd1jdXz9sK+NM=;
        b=bXEOkWAg4g+HVczymTo4BRFmdb5J0YHKXwgVVmK+f4PC+Ncmu5HQLelzxPCzXR58I4
         rAivmXXcUyhEzHlJ2MZCPW+lLKm/L6Vve9Pf6dh0lS6Nh10XEfrAuBV43jVeGcjQ9+GJ
         dyQxSji0qvY/PlukRc6XdxZiqaMuaQj5a5cXzNgQF3AI8Gknjll279TZ7ywwFuXEZIdm
         Fh4Tmd0CcuK4WnfI+0gfvjsfcnAFfhnat19j4XzTTimPldHFI3S9tj4vi4ZwrrLuMvSV
         zYdp3CrWawCq3+DZST42OmB1130NWxjn8TKfzpMNeZeKwBHKjeROMNE9+aSWf3PhAwDp
         CllA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=RXLd5MUd;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id f87-v6si190795pfe.4.2018.10.24.04.09.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 04:09:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=RXLd5MUd;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.22/8.16.0.22) with SMTP id w9OB9nYg186854;
	Wed, 24 Oct 2018 11:09:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=Xb/78hzLIwWTGWw0xNLO4MPSGEvHRJrd1jdXz9sK+NM=;
 b=RXLd5MUdClHXPq/C3YpeyP9kfplcys8S+6awNTRSP2iTIcSa4o0EtwCSDb+76K8QZ4Gw
 bsdbsUiGxZPqW0SdIuU//4e1WzQIa8vtw3curfdXWFKu+Naq09tqAldnqNebSuEo5K7U
 d9GxCiNN+2UIt+pVbzlMoik4Q+0QVsLaHOy/F5JGehx6jWRrfxiDT9g3UJX4nHrTuJeJ
 +gRYSNmYnFrs68eKmZhe8VIyoplm83aGtlEY+2swos/QcT0O5ELc/h/0xIrxKjXDbU7Y
 9kRH5HT5Ze+QjdFq96VIT4LzYyUwyzwJVNBqj/yL/0fUprNSxX9TxglJ6qgD71KzVyLM xg== 
Received: from aserv0022.oracle.com (aserv0022.oracle.com [141.146.126.234])
	by userp2130.oracle.com with ESMTP id 2n7usuaw0v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 24 Oct 2018 11:09:49 +0000
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserv0022.oracle.com (8.14.4/8.14.4) with ESMTP id w9OB9hZZ009736
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 24 Oct 2018 11:09:43 GMT
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id w9OB9gHm021475;
	Wed, 24 Oct 2018 11:09:42 GMT
Received: from mwanda (/129.205.6.86)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 24 Oct 2018 04:09:41 -0700
Date: Wed, 24 Oct 2018 14:09:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Kimberly Brown <kimbrownkd@gmail.com>, outreachy-kernel@googlegroups.com,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
        NeilBrown <neil@brown.name>,
        Christian =?iso-8859-1?Q?L=FCtke-Stetzkamp?= <christian@lkamp.de>,
        linux-arm-kernel@lists.infradead.org,
        John Crispin <blogic@openwrt.org>
Subject: Re: [PATCH v2] staging: mt7621-dma: Add braces around else branches
Message-ID: <20181024110933.ys7obd7sze3a6mgk@mwanda>
References: <20181023211142.GA2661@v>
 <20181024045653.GA2864@v>
 <af4594cc-05c0-672c-d560-b50705ceaab3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <af4594cc-05c0-672c-d560-b50705ceaab3@gmail.com>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9055 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=501
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1810240101

On Wed, Oct 24, 2018 at 12:45:44PM +0200, Matthias Brugger wrote:
> Hi Kiberly,
> 
> Thanks for adding all the emails in CC.
> I would encourage you for your next patch to distinguish between CC and TO.
> You should send your patch TO important maintainers in the get_maintainers.pl
> list (as default, to all of them). If there is someone you really want to look
> into the patch, then add him/her in TO as well.
> 

I normally just add the first person from get_maintainer.pl to the To:.
It's basically random I think.  The rest I put in the CC.  This is a
staging patch so no one is very picky.

There isn't a Fixes tag for this but if there were I add the person who
wrote the original patch to the To header.  Hopefully, they review
and Ack my patch.  I feel like that's very important.

regards,
dan carpenter


