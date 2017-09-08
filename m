X-GM-THRID: 6463333308428189696
X-Received: by 10.129.189.72 with SMTP id n8mr1564083ywk.190.1504864258237;
        Fri, 08 Sep 2017 02:50:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.64.14 with SMTP id n14ls1062358ita.0.canary-gmail; Fri, 08
 Sep 2017 02:50:57 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCQxUJRAOXHPQnjUvS7xAmgZiJDmRl0nJGhc5WoIvhTv2+dvqY4f1s2xouw83tuUIXcSlwm
X-Received: by 10.202.175.139 with SMTP id y133mr1211641oie.117.1504864257699;
        Fri, 08 Sep 2017 02:50:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504864257; cv=none;
        d=google.com; s=arc-20160816;
        b=x+4J6RWMIZmZJj/uFL5/DFOUXJyDZnHvnCURSZqpd7LdRMK3YvnuFnrsgERO7bIoNq
         QEj1BwwpJ5bpyjsiRTebHLW2wLKvAS+2ci8t/1Ot6amDtMuwK228GnOVyJKXKRpD6cOs
         t0/ZWf1OgAuW6jStX7ZjVGqFjaoAuyWNNLjHVK4IMiYOrFKVYKD/2OubGOTTxPb7YrVu
         D70xPcVd+2fKS8coKqDihlx/qwxAovVaG9oAXk70I5rJ7xG/JbeRrt8s108lweNljKKw
         Vk9jLFgKjskVcCcQ5xcygOEVMXsWj1ehVfk8Qhw5GDuDILqOVJpLtkXsDkhRklMVPCZr
         /0iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=E+o/LJRqB7pCSuPAt3mde7ZaSvGi2q45PgIrzGIF2mY=;
        b=ty290WFpFDYNSI8MHkGs617yzSB/haWFMlSmGZ8H574iyBlxD3raVnmOn5EQ6/XDQG
         OUHYqifeUD9tmRHj3ng9PTfxPhVur4uAY4HIgr82YfQnLpOrF01gDLnFmIR5eOjO7pMH
         E/d/+Tse2Loe1qlY1tVT+r7oD95I5Gmn2SWkhCdO/CUICjoG2eaxDeJ4H0BWiJooUgkb
         4oSGyBjUbN4nJeG6fGJX6Gr0em2/4nBCNCFjddZ/GGBQHJv+Qi/vRgo2o+Q5ADhJwIiN
         ozOioQVZfOQhKVSGVLiVxUxWfC7sjo9tMrDp/QaIFJi9ig4hw1TUP8936iOEkE8oQQOx
         OlcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id p204si131533ywg.12.2017.09.08.02.50.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:50:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0021.oracle.com (userv0021.oracle.com [156.151.31.71])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v889or0q028423
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Sep 2017 09:50:53 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v889oqQ2010413
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Sep 2017 09:50:53 GMT
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v889oqTl007355;
	Fri, 8 Sep 2017 09:50:52 GMT
Received: from mwanda (/41.210.145.102)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 08 Sep 2017 02:50:51 -0700
Date: Fri, 8 Sep 2017 12:50:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: harsha <harshasharmaiitr@gmail.com>, devel@driverdev.osuosl.org,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: pi433: Fixes minor typo
 errors
Message-ID: <20170908095039.ns6kjwa2j5jbrrbi@mwanda>
References: <1504863598-16301-1-git-send-email-harshasharmaiitr@gmail.com>
 <alpine.DEB.2.20.1709081143430.3165@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709081143430.3165@hadrien>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0021.oracle.com [156.151.31.71]

On Fri, Sep 08, 2017 at 11:45:20AM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 8 Sep 2017, harsha wrote:
> 
> > From: Harsha Sharma <harshasharmaiitr@gmail.com>
> >
> > Fixes checkpatch warning -- "occured" and "succesfully" are misspelled
> >
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > ---
> > Changes in v4:
> >  -Correct the format of the subject.
> >  -Signed-off properly.
> 
> It's not signed off properly.  Like Greg just said (maybe the mails
> crossed), the sign off needs to be the same as the From line.  This
> probably relates to your git configuration or your mailer.  Send the patch
> to yourself before sending it out on the mailing list to be sure that
> everything is ok.
> 

This is actually OK-ish...  It's better when we don't have the extra
From: and there is no need for that with gmail, but we sometimes allow
it for companies which have broken mailservers.

regards,
dan carpenter


