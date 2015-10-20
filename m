X-GM-THRID: 6207482452562149376
X-Received: by 10.181.11.195 with SMTP id ek3mr301138wid.7.1445319695487;
        Mon, 19 Oct 2015 22:41:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.73 with SMTP id gs9ls752379wib.2.canary; Mon, 19 Oct
 2015 22:41:35 -0700 (PDT)
X-Received: by 10.194.240.230 with SMTP id wd6mr222198wjc.0.1445319695081;
        Mon, 19 Oct 2015 22:41:35 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cm6si706354wib.1.2015.10.19.22.41.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 22:41:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,706,1437429600"; 
   d="scan'208";a="151101179"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Oct 2015 07:41:26 +0200
Date: Tue, 20 Oct 2015 07:41:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 03/10] staging: iio: light: Remove
 explicit comparisons
In-Reply-To: <0c3bdbf416f5717678029a3f5993f1e2cf9d4407.1445291799.git.cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.02.1510200740350.2044@localhost6.localdomain6>
References: <cover.1445291799.git.cristina.moraru09@gmail.com> <0c3bdbf416f5717678029a3f5993f1e2cf9d4407.1445291799.git.cristina.moraru09@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

>  	if (kstrtoint(buf, 10, &val))
>  		return -EINVAL;
> -	if (!(val == 0 || val == 1)) {
> +	if (!(!val || val == 1)) {

This one looked nicer with the comparison to 0, since that is more 
parallel with the comparison to 1.

julia

