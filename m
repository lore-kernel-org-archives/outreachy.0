X-GM-THRID: 6752241350359384064
X-Received: by 2002:a63:eb52:: with SMTP id b18mr10421813pgk.205.1572252021309;
        Mon, 28 Oct 2019 01:40:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9684:: with SMTP id n4ls5014315plp.11.gmail; Mon, 28
 Oct 2019 01:40:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyBwCkyGJlZ8lauT+HMlsedkrzRp6mmQRWKil/3CKyhhIU1/6GWqgpRHuKEY6dK11ROJnbj
X-Received: by 2002:a17:902:59c9:: with SMTP id d9mr210722plj.229.1572252019980;
        Mon, 28 Oct 2019 01:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572252019; cv=none;
        d=google.com; s=arc-20160816;
        b=oLOYXX7vpb2foCHusBnDM8/jQA2CI+pmb1h9uq149i+iN9AVJ3Ytary0a137jESySP
         WWPzFJO5rTTzr4PRsqBt0kNOerUH8pdd0kQ0uSMotd6mudqhNVgzQpOsGQTCkUZccivz
         v+ElFH1CjflSCG9pibJmSgAHfAgQJk2ZktfMGcivS5wzJuWpaNuD3sj5SPJi+sTN/ToF
         imXMUk5OSEa392jGXSTXi9FdVbi8+uAl+HmxkfC66QOdF7w0G6diz/rGs3A+QvPoiOtR
         HxA+tmefTSgV/jx4ehUoKvPhR79a7oALYo9XNgYDDffM5y1Ph9U+lExJZwUry6PubYIY
         5kxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AAreTZABI2sh5zxTgDMdtRwIgOOV26iDp41KT28HdQ0=;
        b=KtKvp/JUIZov7VIzSFIxe586jLM2hVJlpxqrfBIQUzXatW0HS7DpTbVebrS+iFm53K
         pX4J0KKfWLm/BDQvQVaPgYkbp+IwMhV6kp9j8xGvQO4AU3MkLeG2N7V2PeOWJOBdFaBu
         i41OjV/hJ4Ql+xMIaztdlAQBY0pS38VyxyIPSqnyZoAdFmrAliGtOZdmYoRgvgOmL7hQ
         hE8/z92AJo6X4YV2I7spN2LT66MyoPq5RPyKiuhjv0eEEsc79C/q5vA7/AMgHrmuzh71
         E9qSm+C9YSdBNKJfI9qKaSu8Oc0AUbUgdGBcbr5zJ1HtFy8pGilrAp1TfLYi/pbU3FSi
         demA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=UNsO2OmZ;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id f7si107772plt.5.2019.10.28.01.40.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 01:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=UNsO2OmZ;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S8ShU8008098;
	Mon, 28 Oct 2019 08:40:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=AAreTZABI2sh5zxTgDMdtRwIgOOV26iDp41KT28HdQ0=;
 b=UNsO2OmZ6Ov72DOxYYNKxnT5P4or0VeIn9lktNKJymAjn73V43N6R9p/X7p/hIke7nUf
 eHp5Suj32ekGYYTf8IL3JTCWYpTc7Lv7nsRwE3fEHO+ZniEUuBi0eemVEk7vjFUR9OGa
 n3PJq8NXCmYbkTM/WLfnmpIo5LwreP8aij3wKnqeRhjc73z4adcUf7Q2AgjuNcatU6Vd
 G2HROdVQ3rynTQHtYi2RtZX7sRZ4h66Z/MeWIkmiEgiep+P9rYj0ERTT+/ED4Iids7Uo
 P/a8guaDSjf+8/tKqtxZrrzf67e3EuhDz30oih7tIkx99FxLsVfmhFtCIraColSugwVj UA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 2vvumf57vw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 08:40:16 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S8SAHp122316;
	Mon, 28 Oct 2019 08:40:15 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 2vwakxm0y3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 08:40:15 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9S8eE0s024446;
	Mon, 28 Oct 2019 08:40:14 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 28 Oct 2019 01:40:13 -0700
Date: Mon, 28 Oct 2019 11:40:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Cristiane Naves <cristianenavescardoso09@gmail.com>,
        outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: octeon: Remove unneeded variable
Message-ID: <20191028084007.GC1922@kadam>
References: <20191026222453.GA14562@cristiane-Inspiron-5420>
 <20191028082732.GE1944@kadam>
 <alpine.DEB.2.21.1910280934430.2348@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910280934430.2348@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910280086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910280086

On Mon, Oct 28, 2019 at 09:36:04AM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 28 Oct 2019, Dan Carpenter wrote:
> 
> > On Sat, Oct 26, 2019 at 07:24:53PM -0300, Cristiane Naves wrote:
> > > Remove unneeded variable used to store return value. Issue found by
> > > coccicheck.
> > >
> > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > ---
> > >  drivers/staging/octeon/octeon-stubs.h | 4 +---
> > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> > > index b07f5e2..d53bd801 100644
> > > --- a/drivers/staging/octeon/octeon-stubs.h
> > > +++ b/drivers/staging/octeon/octeon-stubs.h
> > > @@ -1387,9 +1387,7 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
> > >  		uint64_t queue, union cvmx_pko_command_word0 pko_command,
> > >  		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
> > >  {
> > > -	cvmx_pko_status_t ret = 0;
> > > -
> > > -	return ret;
> > > +	return 0;
> >
> > What is the point of this function anyway?
> 
> Given that it is in octeon-stubs.h, it seems that the point is to get the
> code to compile when COMPILE_TEST is set.  There is a real definition in
> arch/mips/include/asm/octeon/cvmx-pko.h

Oh yeah...  Duh.  I saw that it was in stubs but I just assumed that it
was stubs for something which was never implemented or left over code...

My bad.

regards,
dan carpente


