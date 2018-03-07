X-GM-THRID: 6530150669896122368
X-Received: by 10.107.135.22 with SMTP id j22mr15911298iod.117.1520420533452;
        Wed, 07 Mar 2018 03:02:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.64.85 with SMTP id n82ls454758ita.7.gmail; Wed, 07 Mar 2018
 03:02:12 -0800 (PST)
X-Google-Smtp-Source: AG47ELvfw/PFyRQ8v3b5BDzHrMHoiLOvBxQ5rGC65tE6pyNE3SZG99F0kXHhnu0XV+DFD5PHiT24
X-Received: by 10.36.36.197 with SMTP id f188mr14187207ita.44.1520420532230;
        Wed, 07 Mar 2018 03:02:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520420532; cv=none;
        d=google.com; s=arc-20160816;
        b=D6+ijoHe6jfj/CrdSWEnnWvzaEJUDqyka4hxlgQrkBjP4V/JJuBbFovUAW6QkR2nKg
         6sz9WZyZyKJKvHn7tWMB2lQ/8HMzFi512tvxKY/LIVSh4BdDyUIxGUVvXC/6znhs2/50
         2TEuaE5cg8x0yfBSZiSryaeM04scBcce291nFA2GEEx+vX1Ed7KyfR+4lazPfB92jqej
         Dg6mL3kkdwA6E1jcy5mmOHx64LTrdLqfUds4yN84nK5Rr01W75TPt+F8ad7/PqHiZWj3
         WWb7Boo0/erm6djzOBj+Mwz/5BldTDrDUqdgxAT1A/cwcPsTBj9xPI4GzEQ4AKBpZhAX
         HhoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=tDKeZGqg3E/B+w7hIs3dxFdbGtbeaPfH6jJm1NGZLro=;
        b=elmDXXh4dgXP92l427Z96UQILorJWvCcU6hIHQkSFRMFng/1wco8v2O6sZc8hht9NG
         qGsdUmpr/Ls/xDtgekvLS8KWjEh2/uvQa6XEf0H+tjxBgwUciubJaIDL3V9InnigHFJi
         z9maYkMtGFgZ0DJFKjxZy6f2pSZ6WpAFMFgN9E1tcmeBw5LRiNURju8tk6rX6goxRjwA
         Ej3D9H+/PkVzEFb8u/x98FmeNnq6tavdcG7ElT8YnE8v7do5khxjdzg5TjzlE+eGf09w
         h1Z60fyXHgPdcG2bFE/IheWbxnVN164UKuz/raEpgiyENmaILx3oO6EQYe4euuulvU1O
         kekQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2017-10-26 header.b=NeVZTePe;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id o185si633480ite.2.2018.03.07.03.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 03:02:12 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2017-10-26 header.b=NeVZTePe;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.22/8.16.0.22) with SMTP id w27B29BB178304;
	Wed, 7 Mar 2018 11:02:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2017-10-26;
 bh=tDKeZGqg3E/B+w7hIs3dxFdbGtbeaPfH6jJm1NGZLro=;
 b=NeVZTePeWTiOcklQ9G15+q3TQyJkGbotNF1SR9Q7oYU7DtlVPKk6PRubRti8bU2wVXlF
 nQmJcRRrzD9nwdQVG6kyfBzp+ERW5jqhbgVk1NeqgkGaR0R+pyGr3yZ3RYGAwoVdJ765
 DuCvg5nDH+G6g5Yx20KBsA+V92smK7Z+U6WN/CoKs+KHZgU5qdPW/8Ncy92jmqHaIG+t
 2dMbbxoQ3P6YMrVWj+cc19MlkZshkrKxReEaaSMEBAElfxWwb0N1mHjIN4/E5ILY9Psv
 /Bm/R2MIQlNKqqAc5BwQYNWoX8tHYRnUGkAlQhLkexN5arNgy7q6CLL7pm7tzDc1I9Jd Hg== 
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by aserp2120.oracle.com with ESMTP id 2gje838aed-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 07 Mar 2018 11:02:09 +0000
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id w27B2816011120
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 7 Mar 2018 11:02:08 GMT
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id w27B27cs012051;
	Wed, 7 Mar 2018 11:02:07 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 07 Mar 2018 03:02:07 -0800
Date: Wed, 7 Mar 2018 14:01:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>,
        gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v3] staging: rtl8192u: Replace
 printk() with more standardize output format.
Message-ID: <20180307110159.gnetxajp4c7oz52x@mwanda>
References: <20180307103908.GA19612@seema-Inspiron-15-3567>
 <20180307104741.mdy2wa7hplfwxmb3@mwanda>
 <alpine.DEB.2.20.1803071151080.3361@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1803071151080.3361@hadrien>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8824 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=971
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1711220000 definitions=main-1803070128

On Wed, Mar 07, 2018 at 11:52:16AM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 7 Mar 2018, Dan Carpenter wrote:
> 
> > On Wed, Mar 07, 2018 at 04:09:09PM +0530, Arushi Singhal wrote:
> > > @@ -276,22 +276,22 @@ static int ieee80211_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
> > >  	keyidx = pos[3];
> > >  	if (!(keyidx & (1 << 5))) {
> > >  		if (net_ratelimit()) {
> > > -			printk(KERN_DEBUG "CCMP: received packet without ExtIV flag from %pM\n",
> > > -				hdr->addr2);
> > > +			netdev_dbg(skb->dev, "CCMP: received packet without ExtIV flag from %pM\n",
> > > +				   hdr->addr2);
> > >  		}
> >
> > I'm sorry.  I really hate to do this to you...  But the right thing here
> > is to use net_dbg_ratelimited() but get rid of the if (net_ratelimit())
> > check.  So it looks like this:
> >
> > 	if (!(keyidx & (1 << 5))) {
> > 		net_dbg_ratelimited(skb->dev,
> > 				    "CCMP: received packet without ExtIV flag from %pM\n",
> > 				    hdr->addr2);
> > 	}
> >
> > Sorry again, when I looked at it before I just replied what my fast
> > thinking lizard brain said instead of taking time to look at what I was
> > saying.
> 
> I don't think that net_dbg_ratelimited wants a skb->dev argument.  The
> various definitions in include/linux/net.h just have fmt as the first
> argument.
>

Ah....  That's fine then.  Don't worry about it.

regards,
dan carpenter


