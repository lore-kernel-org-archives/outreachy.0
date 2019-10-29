X-GM-THRID: 6751912583325810688
X-Received: by 2002:ac8:67ca:: with SMTP id r10mr2924771qtp.124.1572335614616;
        Tue, 29 Oct 2019 00:53:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6289:: with SMTP id w131ls2244267qkb.15.gmail; Tue, 29
 Oct 2019 00:53:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQzHsGGYrnWrrE0xJsQVARkTCnIAaALmoo2pd1k0Tr6IzMAk3mnCba0FbQgsREEq9hhEuL
X-Received: by 2002:a37:62cf:: with SMTP id w198mr3691998qkb.11.1572335613556;
        Tue, 29 Oct 2019 00:53:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572335613; cv=none;
        d=google.com; s=arc-20160816;
        b=knSfOIf/suh98s6RgMyKmkCXtIXQOdSlBVXjJ2rOyqn5syK51kzR+XP9Okein2BcRC
         KoEZAdsc9+EQ9KyikDiqVm8gr+IF3nGg7gTWcvFJUoSD9q2JNIWZWJ+HD/IQzv2AcTWk
         hq/HMjhlrnqTnChApt5eV5V7p4vlc8U9Zsg1xrcMdYWC3/VzcckxatvN1vmgzwAZIBkM
         bFyfJTbEqX9SmmZ/ECI62PbVvYoNoKOAWr+8apQNw4uBNINRB7SyWlpj1qGKM9OLDNnc
         UwGsKiHH4wZNgoWDloVawbUiH2iiCK7haTzxmc4/wR1hh6CM8xWqynIrV4IcPbtKdmuZ
         WS0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kBryI1HmdK5dNrr05nFtTdZC1fGcaGVSLCheE6y3Lwc=;
        b=qHsyc1kyPDq7shye5np94MQOIgKY8GEOW/JYVqnt5k5Q5BMjP9x6dVGsmHbZFYKxHK
         6dZ/yXpkTMQJM43kvVbXxjscm5bIne7NhnG3eSjOl/ZouYPJXiI6bqye3MlAZBYw4gJR
         aeTF0V/V8goBIRfZ8hmtliUuQyd6iDMTS6irx27O880bZK171pUQ8NGJYN+FaC010Hmj
         +RrsuGBHH90TGsMZTK2onhUfnnJyJZ9d2DHuureCOMi8rpaU9NT74gQx6ue7euq+2n67
         /GuHyekFigphVYUmc/qr+uDevQ1rhYjI+skW3j+LvsHu6fnHhSSewmXfneRNpH0ksuBM
         wJlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=rGRgsbi5;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id z41si94375qtj.1.2019.10.29.00.53.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 00:53:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=rGRgsbi5;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9T7ntQw168165;
	Tue, 29 Oct 2019 07:53:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=kBryI1HmdK5dNrr05nFtTdZC1fGcaGVSLCheE6y3Lwc=;
 b=rGRgsbi55mB5iziksQzzzLJiK7wCWJgZLRprZ2mfBYNjU9+wAi7YtL7PX5s3z3JLjJ3g
 ZX4rRlRRmMoLCM7xDz2ADrhmzaDLhB3PxzfwWwzYpav4RAjJvqzBOVH8iUetTmMkGvKo
 wVyVeKoMb/T/XLNmGte2hAmrPocmaqKGCl6e9Q1ytsnPrmh2X1EOqUdpIU5MAAzpcjRJ
 /WlUL/p1rGPgh07ylx6ca54HP3iGFv9x5ngW8Yo0pT4VGg2Xe77z1mauMCPO5u4QySH9
 WRgQtp28pproSt+9IQHzF4sfxZH+PV+tTYOt8jBxDCuNfvMp9344g21w5C0kilNmDD6f 6w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 2vvumfc0n6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 29 Oct 2019 07:53:31 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9T7mqxH164920;
	Tue, 29 Oct 2019 07:51:30 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 2vvyn1dkmf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 29 Oct 2019 07:51:30 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9T7pTho019528;
	Tue, 29 Oct 2019 07:51:29 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 29 Oct 2019 00:51:29 -0700
Date: Tue, 29 Oct 2019 10:51:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 1/2] staging: rtl8712: Fix Alignment of open
 parenthesis
Message-ID: <20191029075123.GH1944@kadam>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
 <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
 <20191028190259.GF1944@kadam>
 <20191028212137.GC2311@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191028212137.GC2311@cristiane-Inspiron-5420>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9424 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910290082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9424 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910290082

On Mon, Oct 28, 2019 at 06:21:37PM -0300, Cristiane Naves wrote:
> On Mon, Oct 28, 2019 at 10:02:59PM +0300, Dan Carpenter wrote:
> > On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> > > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > > 
> > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > ---
> > >  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
> > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > > index af12c16..304d031 100644
> > > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > >  		precvbuf->ref_cnt = 0;
> > >  		precvbuf->adapter = padapter;
> > >  		list_add_tail(&precvbuf->list,
> > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > +			      (&precvpriv->free_recv_buf_queue.queue));
> > 
> > You did this correctly in v2.
> > 
> > -				 &(precvpriv->free_recv_buf_queue.queue));
> > +			      &precvpriv->free_recv_buf_queue.queue);
> > 
> > >  		precvbuf++;
> > >  	}
> > >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> > >  	tasklet_init(&precvpriv->recv_tasklet,
> > 
> > regards,
> > dan carpenter
> >
> I wondered if it was better to use parentheses or not. Is it necessary
> to send a new v5 version containing this change or it's possible to get it from
> v2?

Greg said that patch 2/2 of v4 didn't apply.  To me that suggests that
maybe he applied patch 1/2 and sent you an email?  If not then redo it.

If you don't change the parenthese Greg will apply it.  If you do then
maybe he will and maybe he won't.  The rules say don't do that but we
let people bend the rules slightly.  But why add that element of doubt?

I have a script which removes white space changes so if you change the
parentheses I have to check the patch by hand so that's annoying.  But I
might not comment on it when I'm reviewing the patch.

My advice is to remove the parenthese in a separate patch.

It's not possible to get the patch from v2.  Once a patch is gone then
it's gone forever.

regards,
dan carpenter


