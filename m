X-GM-THRID: 6751912583325810688
X-Received: by 2002:ad4:53c1:: with SMTP id k1mr7300435qvv.223.1572409806154;
        Tue, 29 Oct 2019 21:30:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2f7a:: with SMTP id k55ls7348188qta.8.gmail; Tue, 29 Oct
 2019 21:30:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwPmID1PtIObej+bibS3TCAZVwSWXUkP0V618CwNB733Ylha/zQDWaAcLbSmIzUMZOHLb5Q
X-Received: by 2002:ac8:450b:: with SMTP id q11mr3017292qtn.7.1572409804735;
        Tue, 29 Oct 2019 21:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572409804; cv=none;
        d=google.com; s=arc-20160816;
        b=YXFMFcD3R7zu1PpPMWs3vQKAu7KaA0iLzDnKgUyy+7kGBWw55loQMS5ELYZgMG9UJm
         6mmK9d4IyByZRZPeRhdX1Mj8Up52VDjDdDmiMdiVDs25AA03mnFv4bFws6z4PywHqvex
         NwGh/FMJvTrm0SeLK3AbfKzHUgfy8vyZpwWOcxMXTGWOIbp6HG2hLlEjxBnzraQ4RvuD
         J8+NjXhyGKUwX9xFty6svs0VDmS7qy907hv9+lSe+k3SBYHVZZDhaN5VXL0EumvNg4pM
         c7dAoMDx4UHtxB8HmSrKEelwgTe6Gc2TiFOjuqG42FnfzCMipnSqR266nGsCaB8zam5L
         DWzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Wh5bwDyi5ogIWe76EXTWGQL7xtSOvb2CF9C7m0Bl1zQ=;
        b=whvJTemGO1t8fknss36YZaItjMPEa0/hrg3kKgtn7SX+sCkH24V/CgNfIVE1Sqp1Rq
         XmETaGKytNK2rr/D928zwNwaBPsUtwk45ehEMBETwvfgzmjvWgh+rAHsxCVpp6pjFQaT
         5u8lvjCt5AcwacuKfHzlPmb2aGnjSl45eioI0JshRz+Irw+zaup2V0bukRfYi8Li/ban
         pO4U/4248uAwtXgtZMKX+vUJw2tDTgziAmXO2P6flZ8MXIOSt6PWO6+6jxVDQGFDJC3J
         ByzgZoMLB8MlWKajYaBmSlD0yQotpn4QiL8bdPz25KMG0VOshB2O9oXEZ4SIcrMgYo39
         7HsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=f5nWoiCc;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id k33si5708qtd.4.2019.10.29.21.30.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 21:30:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=f5nWoiCc;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9U4TWgp026221;
	Wed, 30 Oct 2019 04:30:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Wh5bwDyi5ogIWe76EXTWGQL7xtSOvb2CF9C7m0Bl1zQ=;
 b=f5nWoiCcxEZ1E6Aot1GNaOFOIKa8tcKEPgJdERbcZH+bcm0BS/fwoTTA9ZGkhQJVcTiX
 W7kipF6T8Uh5gDG3yO5VPL7Lp9Y3Unh1RPC2hEk3Xp5FXOCLB32wV8jNCqEgRAPE/Opo
 8l5WggJ6KsMwsbahsM9V9/ZLXf2PhMngvNWI2Wvg9F2e0hq+jyxP0JKbSPHf0d+nKXB8
 WT80lmZ1Zq2mixqu2vxIgmwNWW5fusCQoDKK3QgCX2jzFRRgL44pbNBeLHNpgsHBcV1r
 JAaXB0cD4AJGtKkR9zcZQsRjTrOvcWn9VKv+ErFg7R35zLxSytl8LkvJg2gPxNspldVp XQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 2vxwhfh9vs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Oct 2019 04:30:02 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9U4S8Fp104395;
	Wed, 30 Oct 2019 04:30:01 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3030.oracle.com with ESMTP id 2vxwhv8p4g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Oct 2019 04:30:01 +0000
Received: from abhmp0023.oracle.com (abhmp0023.oracle.com [141.146.116.29])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9U4U0uc006115;
	Wed, 30 Oct 2019 04:30:00 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 30 Oct 2019 04:30:00 +0000
Date: Wed, 30 Oct 2019 07:29:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/2] staging: rtl8712: Fix
 Alignment of open parenthesis
Message-ID: <20191030042954.GC3866@kadam>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
 <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
 <20191028190259.GF1944@kadam>
 <20191028212137.GC2311@cristiane-Inspiron-5420>
 <20191029080554.GA506924@kroah.com>
 <20191029081501.GA549977@kroah.com>
 <20191029202157.GA2188@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191029202157.GA2188@cristiane-Inspiron-5420>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910300045
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1031
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910300045

On Tue, Oct 29, 2019 at 05:21:57PM -0300, Cristiane Naves wrote:
> On Tue, Oct 29, 2019 at 09:15:01AM +0100, Greg KH wrote:
> > On Tue, Oct 29, 2019 at 09:05:54AM +0100, Greg KH wrote:
> > > On Mon, Oct 28, 2019 at 06:21:37PM -0300, Cristiane Naves wrote:
> > > > On Mon, Oct 28, 2019 at 10:02:59PM +0300, Dan Carpenter wrote:
> > > > > On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> > > > > > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > > > > > 
> > > > > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > > > > ---
> > > > > >  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
> > > > > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > index af12c16..304d031 100644
> > > > > > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > > > > >  		precvbuf->ref_cnt = 0;
> > > > > >  		precvbuf->adapter = padapter;
> > > > > >  		list_add_tail(&precvbuf->list,
> > > > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > > > +			      (&precvpriv->free_recv_buf_queue.queue));
> > > > > 
> > > > > You did this correctly in v2.
> > > > > 
> > > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > > +			      &precvpriv->free_recv_buf_queue.queue);
> > > > > 
> > > > > >  		precvbuf++;
> > > > > >  	}
> > > > > >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> > > > > >  	tasklet_init(&precvpriv->recv_tasklet,
> > > > > 
> > > > > regards,
> > > > > dan carpenter
> > > > >
> > > > I wondered if it was better to use parentheses or not. Is it necessary
> > > > to send a new v5 version containing this change or it's possible to get it from
> > > > v2?
> > > 
> > > Send a follow-on patch to fix this up please as your other one is in my
> > > tree now I think.
> > 
> > Or maybe it isn't in my tree, I have no idea, I can't remember.  YOu
> > know if it is applied or not as you will get an email when it happens.
> > 
> > thanks,
> > 
> > greg k-h
> 
> I received an email with the subject patch "staging: rtl8712: Remove
> lines before a close brace" added to staging-next on October 27th. Is
> this the confirmation email when a patch is accepted or is there any
> other email?

Yep.  That means the patch is in Greg's tree.  It won't hit Linus's tree
until the next merge window.

regards,
dan carpenter


