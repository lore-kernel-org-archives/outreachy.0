X-GM-THRID: 6200896862154653696
X-Received: by 10.68.206.106 with SMTP id ln10mr12194937pbc.5.1443781705056;
        Fri, 02 Oct 2015 03:28:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.139 with SMTP id 133ls242616iof.107.gmail; Fri, 02 Oct
 2015 03:28:24 -0700 (PDT)
X-Received: by 10.50.18.50 with SMTP id t18mr3084583igd.8.1443781704529;
        Fri, 02 Oct 2015 03:28:24 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si1449497pac.2.2015.10.02.03.28.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:28:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacex6 with SMTP id ex6so103834017pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=w+0j2QDDyJRHB5mgnFtDrlwk4eWeUYnkPOjkNnLCPq4=;
        b=cyUaz2q8YhWIZYy7SycYUtnLodLz79490RX2jGIKdt7YwxFkwXCoulMO/TFLeJNir/
         WTC8sDcxJBY2XT+kHw9kvRHLcunmO8Op/+bVB9OdXKeiTzKcRxzD/7/TfDIkl3CkEnYQ
         WRX7VmKbmVzvH5xqY8p4jhQkvpFQ5ST9gX2uNGg9WGZugWZWD4rKzpm9gKSUsFoEFHMH
         cGwbDb40VK02LzTecyu4YCH/Z3AF21Vsh4EnM5lD7IbseuQ66aRUL4TVizQe8Ax3pmZa
         6IFQY3vq7V7wG9ZsO9Bvbrz4gUWDWpcg/Uz6lt0qwgIAeXMLVhd/qc1OYtw31Dl2PhuE
         yv/g==
X-Received: by 10.66.136.39 with SMTP id px7mr18711667pab.23.1443781704354;
        Fri, 02 Oct 2015 03:28:24 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id jv5sm11314711pbc.47.2015.10.02.03.28.22
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 02 Oct 2015 03:28:23 -0700 (PDT)
Date: Fri, 2 Oct 2015 15:58:19 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
Message-ID: <20151002102819.GD9346@sudip-pc>
References: <20151002040637.GA41415@ubuntu>
 <alpine.DEB.2.10.1510020959500.2633@hadrien>
 <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 02, 2015 at 01:09:30AM -0700, Shivani Bhardwaj wrote:
> I tried declaring it first, it didn't work. I added the header, it worked. 
> Now, when I tried again, it works without header too. I'll update the 
> patch, I must have done something wrong while declaring for the first time. 
> Thanks, Julia. I'm sorry I'm making such petty errors, I'm noting 
> everything, I'll make sure to send a good patch soon.

We all have done mistakes while starting. Let me point out one more thing -
please do not top post.

I am not seeing this build error/warning. How you are building it? Can
you please post your .config file.

regards
sudip

