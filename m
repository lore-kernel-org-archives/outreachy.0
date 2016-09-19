X-GM-THRID: 6331894376811200512
X-Received: by 10.28.206.131 with SMTP id e125mr462240wmg.5.1474279009293;
        Mon, 19 Sep 2016 02:56:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.195 with SMTP id u186ls776347lja.37.gmail; Mon, 19 Sep
 2016 02:56:48 -0700 (PDT)
X-Received: by 10.46.5.203 with SMTP id 194mr630543ljf.11.1474279008818;
        Mon, 19 Sep 2016 02:56:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e21si1634760wmc.2.2016.09.19.02.56.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 02:56:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="237351194"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 11:56:48 +0200
Date: Mon, 19 Sep 2016 11:56:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: convert
 pr_warn() to dev_warn()
In-Reply-To: <1474259034-10535-1-git-send-email-eraretuya@gmail.com>
Message-ID: <alpine.DEB.2.10.1609191153570.3203@hadrien>
References: <1474259034-10535-1-git-send-email-eraretuya@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> @a@
> identifier f, dev;
> expression fmt, E;
> @@
>
> f(...) {
> 	...
> 	struct device *dev = E;
> 	<+... when != dev == NULL
> - pr_warn(
> + dev_warn(dev,
> 		fmt, ...);
> 	...+>
> }

This is a good idea, but it is unnecessarily inefficient in the details.
You don't use the function name f, so there is no need to match the entire
function.  Matching the entire function causes Coccinelle to go through
all of its possible control-flow paths (loops, conditional branches,
etc.), which can be expensive.  You can instead just start at struct
device *dev = E;.  Also, you don't do anything with fmt, so you can drop
that, and just put ... for the remaining arguments.

julia

