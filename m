X-GM-THRID: 6200611211635064832
X-Received: by 10.140.239.142 with SMTP id k136mr7820739qhc.7.1443700466537;
        Thu, 01 Oct 2015 04:54:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.227 with SMTP id g96ls591019ioj.55.gmail; Thu, 01 Oct
 2015 04:54:25 -0700 (PDT)
X-Received: by 10.66.90.196 with SMTP id by4mr8003365pab.44.1443700465921;
        Thu, 01 Oct 2015 04:54:25 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id el2si885185pbb.0.2015.10.01.04.54.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 04:54:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so74337569pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 04:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=47zEditDiqdKqRj1jcdw3m1xeVMOLmd+jd7Atwccw/c=;
        b=KGhCdvl70E9H8MdTX3o5Euee/Sdr+WKy4QSyircBHjaL6YQha5OGFYf+PkTRQxMvA1
         AsuZGboGe5rx2Rto94RlhmlQxFDcIsjYkBj/GnzqwGf5vqW/CXIqmirjeitPw4npLJ5l
         mJXaaXKnlrCmogTGLAeo0a5fywZaIFs8vbOD1NlmyIDXla5zR4Zaq4RgB/ezNVJ9IMNL
         pYITJLZsBWGspgMwvjMiAhoaiAOcpGwYD2H6jXTB00mAfjPIfRXAcJ66eA91xwR25FaP
         gLc/ro1OvlMmj7mwuOYqGP9OzJieWPSaEFfJikx7lGOfa77W8JYsAabTuIEzVlo2mO15
         eAaw==
X-Received: by 10.68.100.36 with SMTP id ev4mr1763166pbb.107.1443700465746;
        Thu, 01 Oct 2015 04:54:25 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id dk2sm6280122pbd.57.2015.10.01.04.54.23
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 01 Oct 2015 04:54:25 -0700 (PDT)
Date: Thu, 1 Oct 2015 17:24:16 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: lustre: ptlrpc: Make
 functions static
Message-ID: <20151001115416.GA10220@sudip-pc>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com>
 <1443692278-9074-2-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443692278-9074-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 01, 2015 at 03:07:57PM +0530, Shraddha Barke wrote:
> Since these functions are not called anywhere apart from this particular
> file, declare them as static.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
This has already been done by:
2adf5e877537 ("staging: lustre: make non-exported functions static")

regards
sudip

