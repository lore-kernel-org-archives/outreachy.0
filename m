X-GM-THRID: 6339053517033963520
X-Received: by 10.200.40.111 with SMTP id 44mr1732755qtr.9.1476362987361;
        Thu, 13 Oct 2016 05:49:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.139.4 with SMTP id n4ls2148397iod.14.gmail; Thu, 13 Oct
 2016 05:49:42 -0700 (PDT)
X-Received: by 10.66.73.202 with SMTP id n10mr1463877pav.61.1476362982913;
        Thu, 13 Oct 2016 05:49:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 203si2323726pfw.0.2016.10.13.05.49.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 05:49:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0BF169C;
	Thu, 13 Oct 2016 12:49:41 +0000 (UTC)
Date: Thu, 13 Oct 2016 14:49:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Replace BBvClearFOE
 by bbvclearfoe
Message-ID: <20161013124950.GA16312@kroah.com>
References: <a1961e47-6b73-4943-aac5-f2b5593bfc32@googlegroups.com>
 <d15336f4-5027-4b19-b3fd-52f4fac150c0@googlegroups.com>
 <alpine.DEB.2.10.1610091553500.5891@hadrien>
 <fd933dbe-c8ef-4f38-ae1c-7f75a8bab6c7@googlegroups.com>
 <alpine.DEB.2.10.1610112221080.3192@hadrien>
 <5a2e45cf-903e-41c4-91d8-37d45aea9ce7@googlegroups.com>
 <alpine.DEB.2.10.1610120710390.3282@hadrien>
 <21e853d5-b5bb-4b00-b1b5-7ec1a38145f6@googlegroups.com>
 <alpine.DEB.2.10.1610131418560.3086@hadrien>
 <a2bc99d4-a161-429c-a7d6-4e9ba3a8b33b@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a2bc99d4-a161-429c-a7d6-4e9ba3a8b33b@googlegroups.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Thu, Oct 13, 2016 at 05:37:55AM -0700, Varsha Rao wrote:

Please turn off html email in your email client options.

> 
>     I think this is what you sent before, and that the macro is never used?
> 
> 
> � �� Yes, this is the same.�
> 
> 
>     I have the impression that what you did wrong is to just remove
>     BBvClearFOE(dwIoBase) and not the entire macro definition (both lines).
> 
> 
> ��
> � �� I made a mistake there but my question remains the same like how to find
> in what file a macro is stored if it cannot be found by grep or gcc -dN -E?�

In that case, it is not used, so it can be removed, right?

thanks,

greg k-h

