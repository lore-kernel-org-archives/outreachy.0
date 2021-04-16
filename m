X-GM-THRID: 6951120130932736000
X-Received: by 2002:a1f:e987:: with SMTP id g129mr5480311vkh.2.1618552201192;
        Thu, 15 Apr 2021 22:50:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:2702:: with SMTP id n2ls1322174vsn.2.gmail; Thu, 15 Apr
 2021 22:50:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrFtJbFjs3+NnG+Ykw2tvnN8tjLCc3N5HB8k/H0Rna22Oxo/lu/WXQE5Rc4TFCPg7rcmcj
X-Received: by 2002:a67:f248:: with SMTP id y8mr5332451vsm.25.1618552200098;
        Thu, 15 Apr 2021 22:50:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618552200; cv=none;
        d=google.com; s=arc-20160816;
        b=lw/ndllOMYEnA4zTNgqUl0h7JbPx9Hjq1e1ugdQOsnnBZyshHuwp2dJDuyvs1O07tx
         Hf2DSQZGwDebk9Y84cAeUSAKV51VyqqXd4azlgtlvR2r19f0xDqjFaBHuWGxoxsmfXwc
         d8YizKkj43KZ4pR80ukro1bre3Ex9IF+R5IFJaBGwn+uB26oT5juAj0aNmmBrHdFC4BM
         bWk/lXASWD4sOplShbErF7eac/p0Y8yZHzGOwhAhlyRix8PdUG36lAroQ24Pfz4QuNFP
         f7wV654humdYDLlwJDw5m2ZiLbTOKulU4PieWxys5axTLcuk0VtFfUfzPAhHVeSjtagd
         PkVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kRy8guf9ADEaLVne8vD5aYowdOf903zCbD0a8Uul56I=;
        b=tuhUzRmwxYRdy1HxYQA9EcKYUjzuRGDQu0Wa8G+s1H2veX7oVZx7X6xNDYaFzwPy9V
         nvCFgVnSbBEQCpJWrzCdd1eppdPixkilaGA8BH5yfmrfxasvVFl6+dFiWCCZCzhquReg
         7gK/lwegSn1KHi1oR/6tlEbT6G+kG62kt/N7cTaQL8GhpzlpvFEPEjPIaigVYNHUn09K
         PwyCO59CmmpqOsBMjjbfG5NXL8QV9N0r3ccRRPmAkaEz1iqR2afji3+fMc74ZoSxoGvc
         MHdIXhAsN7rNBnACecAaIqTPKAkGmO2IOzm1nIsePosuaPD8wAIgZFwz9mCagI94xiiP
         pf3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=OpiahsKZ;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id r17si363669vsf.2.2021.04.15.22.49.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 22:50:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=OpiahsKZ;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13G5ia0h094659;
	Fri, 16 Apr 2021 05:49:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=kRy8guf9ADEaLVne8vD5aYowdOf903zCbD0a8Uul56I=;
 b=OpiahsKZ7BS593zzzc1sX6x++7/hUb2U/9g3VD0sUKfzRO1PQlpN6tCjsrRjf+2tl1s5
 /iDtNVYj0TqlH5tn7cXVy78tUsjqwbWO45dv3tjKI80R6R8YBNllV57GauvhzNBCseaU
 ejxb5ChkpR6nOQy//UAWorG7BSFSrWEhXJPj8+yul4cFGBq/LUB6HeZt8oFQOjXvtzaF
 PU/litZdvJzBqAok1sc3QzHTuxKhb1SOXMC1Z6yINuMez+PMTiNoY+TVPqhXGvnoAWw4
 Hd/L4Et3RD51nTF21FjvPp7TfSoFGZJKA0UY1p5oOjucdfa0AHIlcDpgxKHXQxOkENmH ow== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 37u3ymqw8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 16 Apr 2021 05:49:57 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13G5jd98014616;
	Fri, 16 Apr 2021 05:49:55 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 37unswq0xd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 16 Apr 2021 05:49:55 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 13G5nn50027730;
	Fri, 16 Apr 2021 05:49:50 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 15 Apr 2021 22:49:49 -0700
Date: Fri, 16 Apr 2021 08:49:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Matthew Wilcox <willy@infradead.org>,
        Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210416054941.GF6021@kadam>
References: <20210415170819.GA17534@focaruja>
 <20210415171409.GC2531743@casper.infradead.org>
 <20210415194955.GI3@paasikivi.fi.intel.com>
 <20210415195704.GE2531743@casper.infradead.org>
 <20210415195941.GF2531743@casper.infradead.org>
 <20210415212158.GK3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210415212158.GK3@paasikivi.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9955 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104160044
X-Proofpoint-GUID: UBL0ZxRfGNz-BqCCz60MCMCNixHxWPlj
X-Proofpoint-ORIG-GUID: UBL0ZxRfGNz-BqCCz60MCMCNixHxWPlj
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9955 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 spamscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 clxscore=1031
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104160044

On Fri, Apr 16, 2021 at 12:21:58AM +0300, Sakari Ailus wrote:
> On Thu, Apr 15, 2021 at 08:59:41PM +0100, Matthew Wilcox wrote:
> > On Thu, Apr 15, 2021 at 08:57:04PM +0100, Matthew Wilcox wrote:
> > > On Thu, Apr 15, 2021 at 10:49:55PM +0300, Sakari Ailus wrote:
> > > > On Thu, Apr 15, 2021 at 06:14:09PM +0100, Matthew Wilcox wrote:
> > > > > On Thu, Apr 15, 2021 at 02:08:19PM -0300, Aline Santana Cordeiro wrote:
> > > > > > -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> > > > > > -    u32 mbus_code);
> > > > > > +const struct atomisp_format_bridge*
> > > > > > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> > > > > 
> > > > > No, this does not match coding style.  Probably best to break the
> > > > > 80-column guideline in this instance.  Best would be to have a function
> > > > 
> > > > Having the return type on the previous line is perfectly fine. There should
> > > > be a space before the asterisk though.
> > > 
> > > No, it's not.  Linus has ranted about that before.
> > 
> > Found it.  https://lore.kernel.org/lkml/1054519757.161606@palladium.transmeta.com/
> 
> Two decades ago, really?
> 
> This is simply one of the practical means how you split long function
> declarations and avoid overly long lines. Not my favourite though, but
> still better than those long lines.

I've always thought we allow either style, but it has to be done
consistently within the file.  I was pretty sure that was policy but
it's another thing that goes back decades so I don't have a reference.
It shouldn't be about breaking up long lines.

> 
> My personal preference would be to wrap at the opening parenthesis and
> indent by just a tab, but I know many people who disagree with that...

If you're running into the 80 character limit, then it's fine to use
two tabs.  I think we have been rejecting patches that push align the
parameters but push past the 80 character limit.  Using one tab is
confusing because it makes the decalarations line up with the code.

regards,
dan carpenter


