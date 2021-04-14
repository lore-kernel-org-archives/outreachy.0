X-GM-THRID: 6950980105413853184
X-Received: by 2002:a0c:b348:: with SMTP id a8mr39294111qvf.7.1618422507298;
        Wed, 14 Apr 2021 10:48:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:e752:: with SMTP id g18ls786791qvn.6.gmail; Wed, 14 Apr
 2021 10:48:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzV7W3cE39LJUDTKLRURmCHcI4tRNdxlkXDhMqpGGDeVGMeSjqS8Pl1EQAd/SoMj6m9bURP
X-Received: by 2002:a0c:ff45:: with SMTP id y5mr33677346qvt.36.1618422506457;
        Wed, 14 Apr 2021 10:48:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618422506; cv=none;
        d=google.com; s=arc-20160816;
        b=0ZZ80cHKxrlubZ14bsL3oadGXccRYSPgplhtJqt38YqzJFEE7U5rdG94+d8ICY6iE/
         n+1+Ni7tABMSuyNsBUajFQvIRpyGwf7BPhEPkOxtXHdRJgOOWFe8r54aarfGP33CrSN1
         TyCfEyNj5EFyv6CBdG/vwkNfXKuKOloSa4MH/zXAS8E8pnbgc3VzWjQYpadyyZtyPzUc
         rzI7y2zl7rj4rP5Skjb+atb4KgCZuDs7GXy7nj5cSEiLxOmgO6S9vB/aoi7iVSXs6Vni
         2gW5VVwV5QZ832RXaVZHfk0odpnOMHASvMM8snkpRXjNOFjYq64RbhNHC+7ZcQJnZENW
         hu6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HpsPfG3dgRu67rJ7Rw8s1KmFBUqhfcWR/OSxIk8jiwU=;
        b=IPd7xD2VpMhp44qbu3rzYuY2kELUZ0GC4UetQpBxP7A+Y6GDesUpbJmkBZ5RqLT374
         gR4289rTvuIyMyVeurbL3pi/1V+stkOYDFREGL35mIRVzlhFbLl+m96yVCApFNMl8iKO
         nE4K5jmONec+L0s2F9gkPZ+W1wuvynzrpzCxAaTexFSjo/B9h6lxiLWc1HsIYcdXxawb
         ub69B00Pn9TSBePwZcOlgo+qsemHQ9PLtGoo0p8y1u8NdGtfSoq56kj7dAjOghWAh+u0
         y7Z5QLN9goIeTaQCs3gRqDFz2vArDKdtlB5+q7uTO01O8yhYVSz6mt8aeQ0aBwD/0IIZ
         q1eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=I0hCfbN1;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id r26si25392qtf.3.2021.04.14.10.48.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 10:48:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=I0hCfbN1;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13EHdYWC043994;
	Wed, 14 Apr 2021 17:48:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=HpsPfG3dgRu67rJ7Rw8s1KmFBUqhfcWR/OSxIk8jiwU=;
 b=I0hCfbN1GpVxuLXLXnYNXeqrn5P8s3h1gke4g8ziarpJpa6Nz/ZkwVCIPIAS2riXvY2r
 wtoqDkERTZ9GH2dn1MqnC7UpvyPL9empLzffDqxDYDu14TdzFVlWTQwJxZiB6pK2mPkQ
 K0jaoyAdij3OeRrIsEUc9zfHjlNL7awd57MZOYpAj44SBwYrXNygS6nJyeUu89XNJule
 j0EcxADx5rmLbWZbmrXhKaVllp0jREDjrTOTTgW3FE61RSSInVDu7deiS5Txb+HL3OQJ
 NAzCxh3IbUGNnMl1rhQNLo/vF/jLHMZOEDlT85Mml5zjbrBW+yzXS2ycSZP8zpAyD7qV HA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 37u1hbkewb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Apr 2021 17:48:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13EHkQru145753;
	Wed, 14 Apr 2021 17:48:22 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 37unxyrcrj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Apr 2021 17:48:22 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 13EHmGaD025249;
	Wed, 14 Apr 2021 17:48:17 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 14 Apr 2021 10:48:16 -0700
Date: Wed, 14 Apr 2021 20:48:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
        outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
        linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
        Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove useless
 led_blink_hdl()
Message-ID: <20210414174809.GX6021@kadam>
References: <20210414162614.14867-1-fmdefrancesco@gmail.com>
 <YHcfud6Fpsi9Weac@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHcfud6Fpsi9Weac@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9954 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104140117
X-Proofpoint-GUID: o3mUut_22WPQN0w9TGZLK8N6eJWbi3z_
X-Proofpoint-ORIG-GUID: o3mUut_22WPQN0w9TGZLK8N6eJWbi3z_
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9954 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 priorityscore=1501
 clxscore=1031 adultscore=0 mlxlogscore=999 impostorscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104140116

On Wed, Apr 14, 2021 at 07:00:41PM +0200, Greg Kroah-Hartman wrote:
> On Wed, Apr 14, 2021 at 06:26:14PM +0200, Fabio M. De Francesco wrote:
> > Removed useless led_blink_hdl() prototype and definition. In wlancmds[]
> > the slot #60 is now set to NULL using the macro GEN_MLME_EXT_HANDLER. This
> > change has not unwanted side effects because the code in rtw_cmd.c checks
> > if the function pointer is valid before using it.
> > 
> > Reported-by: Julia Lawall <julia.lawall@inria.fr>
> > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> > Changes since v1: Corrected a bad solution to this issue that made use of
> > an unnecessary dummy function.
> > 
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 2 +-
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
> >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> >  3 files changed, 1 insertion(+), 11 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > index 0297fbad7bce..f82dbd4f4c3d 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -150,7 +150,7 @@ static struct cmd_hdl wlancmds[] = {
> >  
> >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> >  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/
> > +	GEN_MLME_EXT_HANDLER(0, NULL) /*60*/
> 
> Better, but you really do not need to keep this here, right?  Remove the
> "led blink command" entirely, you didn't do that here.

No, this is right.  We have to put a NULL function pointer in the array
or the indexing will be off.  But Fabio is correct that the struct
type should be removed.

regards,
dan carpenter


