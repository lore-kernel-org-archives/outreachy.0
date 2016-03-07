X-GM-THRID: 6258660898055913472
X-Received: by 10.25.165.148 with SMTP id o142mr2960928lfe.8.1457376604863;
        Mon, 07 Mar 2016 10:50:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.132.12 with SMTP id g12ls372200lfd.63.gmail; Mon, 07 Mar
 2016 10:50:04 -0800 (PST)
X-Received: by 10.112.130.42 with SMTP id ob10mr1841231lbb.2.1457376604220;
        Mon, 07 Mar 2016 10:50:04 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id g81si331836wmi.3.2016.03.07.10.50.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 10:50:04 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id p65so120555352wmp.1
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 10:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SbhjBVv3SR0szhj9Yl4yFdcOvhu9qAS/92vZrVAlmzM=;
        b=c2XEyYw04noTLihfVOeGRdCKw57sYQKqupifpd5Ot4204P4srjGV12yjex/Gm1j+Ai
         9K5KEl6X7rU6MCwicd365zkauZMvUTl80dwxY7gmrQmMVrOUASGH/lNj+Kz8Y4CbqL5e
         L8oLCrKctUjwPqhUADyowj5eZnTWxWrs2OXkQqrVVSvOpEtTQmJBRlIIE4GNdLoCQicc
         bMSwYDkTmuEaA31tgZgg04wZC8oufYGwRBNKUD5HDNMjzW90ElEWV19pKYX2fjamagpH
         Q4mqrOED1GbgGvAFgx98stZ/TCTYOMAZ1YhccoIHZ+wrdrQYapmFygBwF1kCQRcwID4Z
         tUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SbhjBVv3SR0szhj9Yl4yFdcOvhu9qAS/92vZrVAlmzM=;
        b=HN1EJ1yO8ZP0VwlQ3IC+F8z9EhWoOOb+wuzEhs3htDqLrgDMavd4vJR9DkMhPNtvWZ
         sSVfw/pRhBSpbTk1ofAQ3Vq5qWk2Z73wtbBsMT2lzJ3Jy6DhGePmX8meQdxDLAzBXi1u
         DqD5mWOV4A9DTxUxbGf0/pdPcSn8XUjt0vLpYgemW0FTrUTTQwvsN+J9LnECL3ol2w5I
         5aoZOqUqwmOh7YoF6G2DfvyMPFjDzoTFB1dWJqLgz54hMT8XVBQVxp0SklyhvqWeDd6r
         O930GeSHyKO3X0GDYqXnXkPJZzamXIBTbAinPOQQt3OYSsQZE4Vyx1PgXLhFH0keUuKw
         aUxg==
X-Gm-Message-State: AD7BkJJamR57O6+76bdAgR60zSiZsQybK+sNVD3D2DBW31WbJ9R2U/4XAzr7BjjkkE/U/A==
X-Received: by 10.28.18.85 with SMTP id 82mr15593152wms.5.1457376604038;
        Mon, 07 Mar 2016 10:50:04 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.163])
        by smtp.gmail.com with ESMTPSA id 198sm14980219wml.22.2016.03.07.10.50.02
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 10:50:03 -0800 (PST)
Date: Mon, 7 Mar 2016 19:50:00 +0100
From: Laura Garcia <nevola@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] extensions: libipt_icmp: Add translation to nft
Message-ID: <20160307184959.GC22851@sonyv>
References: <20160306222442.GA20945@sonyv>
 <20160307171408.GB29573@salvia>
 <20160307180445.GA22851@sonyv>
 <20160307182054.GA6823@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160307182054.GA6823@salvia>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Mar 07, 2016 at 07:20:54PM +0100, Pablo Neira Ayuso wrote:
> 
> I think you can add these two to icmp_type_tbl in nft/src/proto.c, it
> would be just a two-liner to support ICMP_ROUTERADVERT and
> ICMP_ROUTERSOLICIT.
> 

Ok, thanks!


