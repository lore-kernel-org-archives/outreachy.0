X-GM-THRID: 6211239444830224384
X-Received: by 10.66.187.41 with SMTP id fp9mr4397865pac.39.1446180033282;
        Thu, 29 Oct 2015 21:40:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.83 with SMTP id p77ls843517qge.86.gmail; Thu, 29 Oct
 2015 21:40:32 -0700 (PDT)
X-Received: by 10.129.19.214 with SMTP id 205mr4547388ywt.29.1446180032723;
        Thu, 29 Oct 2015 21:40:32 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id vy6si551451pbc.1.2015.10.29.21.40.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 21:40:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fv9so64149144pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 21:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=10GhyZDjnmOyQq9j9vSy/qAET4sY9k1qKhNHquJhDq0=;
        b=IFz6zRxxhky6Uxt6Be14QmaZPiPbLYezF8S9a53EByZoHkcuZBUNpRxl1db1bmD0hL
         3/xUJrTD9Ria6Z+LYgNWRs66ci46cgeGSn4HPsSLDF3Qcgmuvw8U2kzXj03PaAnlmMHJ
         +uRZAub5W+u5heRSs1Z4Rxn/9VF9u3o3Jll+2tO+OiXOsEeAemveey0jiYv9p/sS2aai
         I+0pA87GI0sG+nflsLfx2PApFGU0fhg67uMvXbjJLMywjJt/Wm9uAL2f+nEnTt7k1hkf
         /x4ET+AK2wgVwrxTUb9ZtWOpePEM8CVzP5YW7ESVBrcf3/9tiZZYs21h5RLZgMvBJMYM
         qZPw==
X-Received: by 10.69.1.9 with SMTP id bc9mr5367144pbd.128.1446180032570;
        Thu, 29 Oct 2015 21:40:32 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id qv5sm5253579pbc.71.2015.10.29.21.40.30
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 21:40:32 -0700 (PDT)
Date: Fri, 30 Oct 2015 10:10:27 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: octeon: Do not use
 multiple blank lines.
Message-ID: <20151030044026.GC3407@sudip-pc>
References: <1446166862-1859-1-git-send-email-brcnakalin@gmail.com>
 <1446166862-1859-2-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446166862-1859-2-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 04:01:02AM +0300, Burcin Akalin wrote:
> Remove multiple blank lines. Problem found using checkpatch.pl
> "CHECK: Please don't use multiple blank lines"
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---

This also you have sent previously and has already been applied by Greg.
9a28617fbc99 ("staging: octeon: Do not use multiple blank lines.")

regards
sudip

