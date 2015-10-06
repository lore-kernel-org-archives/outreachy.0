X-GM-THRID: 6202253196489916416
X-Received: by 10.129.72.205 with SMTP id v196mr28611479ywa.11.1444106378538;
        Mon, 05 Oct 2015 21:39:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.3 with SMTP id jc3ls1423225igb.0.canary; Mon, 05 Oct
 2015 21:39:38 -0700 (PDT)
X-Received: by 10.66.147.165 with SMTP id tl5mr6677849pab.21.1444106378233;
        Mon, 05 Oct 2015 21:39:38 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si3760000pac.2.2015.10.05.21.39.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 21:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hy16so57468887pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 21:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=BERwfY+ouLgXoFZzoLOWH+mFZwZo7V1A2kYHPRlZ/Mw=;
        b=0HoINjaANua/Xe8jN57/W8uIyYfPBeqSDcNOlVboKsL07G4K+4kZX1G+C6PjeDZnBm
         xBI+AfJgpqDhymvvWFNX085Q3wHadg+28pqwJo8IQ7nC/yCLODoCbnvUGJAUYmuHR63p
         BJQ5Ag/g+GgO+9DJtPX8yuuNW3h39w2xEUUfiMZpYep+x/CV15sY01YhFxB97RYPzPlZ
         EcBoTsupZEB0unjFGjGQKLS94o+gbDW2PtG8KLpko7dpm/e3+7Wr9AHulgZ11sh/NVxf
         Uv2+3hKjrjPKVa4e9jiLzQ2+yzKXxLokcrw+5yHyT0EqOcINponkMqeuDco88nukMTe5
         ofeA==
X-Received: by 10.68.57.137 with SMTP id i9mr44219583pbq.101.1444106378129;
        Mon, 05 Oct 2015 21:39:38 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id we9sm30726960pab.3.2015.10.05.21.39.36
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 21:39:37 -0700 (PDT)
Date: Tue, 6 Oct 2015 10:09:33 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lnet: klnds:
 socklnd: removed trailing whitespace
Message-ID: <20151006043932.GD4745@sudip-pc>
References: <1444074576-12447-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1444074576-12447-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Oct 05, 2015 at 10:49:36PM +0300, Hatice ERT�RK wrote:
> Removed all trailing whitespace in
> "staging/lustre/lnet/klnds/socklnd/socklnd.c"
> 
> Signed-off-by: Hatice ERT�RK <haticeerturk27@gmail.com>
> ---
OOPS .. no.. these trailing whitespaces were introduced by your previous
patch. We dont have these trailing whitespaces in staging tree.

regards
sudip

