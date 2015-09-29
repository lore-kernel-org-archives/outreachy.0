X-GM-THRID: 6199955857120165888
X-Received: by 10.66.101.42 with SMTP id fd10mr3230404pab.17.1443543494831;
        Tue, 29 Sep 2015 09:18:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.19 with SMTP id 19ls4653375qga.41.gmail; Tue, 29 Sep
 2015 09:18:14 -0700 (PDT)
X-Received: by 10.129.103.4 with SMTP id b4mr23998411ywc.24.1443543494250;
        Tue, 29 Sep 2015 09:18:14 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si3260088pbb.2.2015.09.29.09.18.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 09:18:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id lk4so10022563pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 09:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ztkZdo5TMZvVNvXUdyOGEYNJGQOTszHIwvMeD2n9sR4=;
        b=0fyI5BuHbd2i4ypj37iNMP8MNF+f9C1C2C55l5ZN7gOf7miNc6Ube/5UD1CK1XRGxL
         57pT/6DJXs6vmi6hrn/Fg4uMrb5KpHfsHre4vfU8lTmEUAFlLI6v0l6j9XzsTWuLMGQm
         jfaNHKWGLrffZQVrnNpH1dyM5TZ19rsKO7pt6rmCxjqY+p7ampUhRDRWPxML8hrNMyA6
         0plZNJIDD6E3Yoyjvjb1ae257MBlpSK5Vey9xfKlp/0tb3IgC9jRCYHu+oG0F1aAhe7E
         mPPaS9mEjBv+OqgVeMzZQ6DGSVaKHDMf88Q7nCpjjOJorQXY7WsHOwxn1Jn715yOa5M+
         krNw==
X-Received: by 10.66.100.168 with SMTP id ez8mr33645681pab.142.1443543494084;
        Tue, 29 Sep 2015 09:18:14 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id po4sm21079432pbb.64.2015.09.29.09.18.11
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 29 Sep 2015 09:18:13 -0700 (PDT)
Date: Tue, 29 Sep 2015 21:48:04 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Remove typedef
Message-ID: <20150929161746.GA23714@sudip-pc>
References: <1443539701-2833-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443539701-2833-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Sep 29, 2015 at 05:15:01PM +0200, Ksenija Stanojevic wrote:
> WILC_Time is not used and also time_t is not y2038 safe, therefore remove it.
> Also remove comment refering to it.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
This has already been done by 62f463a89242 ("staging: wilc1000: remove WILC_TIME typedef").
Please base your patches on staging tree.

regards
sudip

