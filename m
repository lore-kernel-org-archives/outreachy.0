X-GM-THRID: 6250070785112670208
X-Received: by 10.66.122.2 with SMTP id lo2mr46307701pab.33.1455248983745;
        Thu, 11 Feb 2016 19:49:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.166 with SMTP id v35ls1263119qgv.59.gmail; Thu, 11 Feb
 2016 19:49:43 -0800 (PST)
X-Received: by 10.140.233.20 with SMTP id e20mr43134391qhc.8.1455248983256;
        Thu, 11 Feb 2016 19:49:43 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tn7si1323610pac.1.2016.02.11.19.49.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:49:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EFB08F55;
	Fri, 12 Feb 2016 03:49:42 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:49:42 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	julia.lawall@lip6.fr
Subject: Re: [Outreachy kernel] [PATCH v2] staging: goldfish: Remove unneeded
 parentheses in assignment
Message-ID: <20160212034942.GB23192@kroah.com>
References: <20160212002435.GA5778@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602112027230.2061@localhost6.localdomain6>
 <20160211193718.GA32329@kroah.com>
 <51353c7f-74f5-40d3-adb3-6ec9670b3451@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <51353c7f-74f5-40d3-adb3-6ec9670b3451@googlegroups.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 11, 2016 at 11:43:03AM -0800, Janani Ravichandran wrote:
> ������
> 
>     >
>     > It looks like nothing changed?
> 
>     The ( ) are gone.
> 
> Greg, I think Julia meant that nothing had changed since my previous patch, ie,
> v1 and v2 were the same.

Ah, yes, not good, please fix, sorry for the noise...


