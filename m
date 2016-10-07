X-GM-THRID: 6336999371468439552
X-Received: by 10.157.53.23 with SMTP id o23mr3750403otc.144.1475879574350;
        Fri, 07 Oct 2016 15:32:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.169 with SMTP id 38ls6469208otx.46.gmail; Fri, 07 Oct
 2016 15:32:53 -0700 (PDT)
X-Received: by 10.129.167.65 with SMTP id e62mr5253037ywh.3.1475879573847;
        Fri, 07 Oct 2016 15:32:53 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 80si2542211pfw.0.2016.10.07.15.32.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 15:32:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id cd13so3292121pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 15:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bZ5DeTWdAk+lNRrkThYZCbGBiF+JV8HfNHiiWcF6dyw=;
        b=IG1H50MFga1rbmWLBo9+yYBNOPVosEW1z64E6Ug/Gu3/y3ex/ImzBq/am8/kO7B47D
         oZcnasMDI8LUY/lnbK4UO4WMY794wBs1iQ24tKxVJEuBb/PK+UNQI4yRPths+Q0oEBki
         El/jVOIpLEbmt2wj01/FNndBA52XysM3QhveHA+1KIpGIFYZ/oOfM/a3sMlHhh93gqBq
         u2NY187VQN3+f0TMl/AqT5LNN+NenfMuZFP9lfmR20jNS00W3rjDLRc2ScODGklPFzeM
         4jkHqZ1TK73tetBavcVjnEf7evKI24clR5noDpjPTRh6hlGhluovXNSKEM0UFx0Boz/X
         G0Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bZ5DeTWdAk+lNRrkThYZCbGBiF+JV8HfNHiiWcF6dyw=;
        b=bk1abikPfn0JRXe9B5M/Szu9r83Tv49U9QDYqugxAgjoZHYXNsInFYLXCWuIUL5SIO
         lM+BOCDHITQ4IFW2hZquCtBPae96DgnWBRg9qS7qyidaAPsc44h/z+c0SEcFoNTnL/KX
         yCr7v9kdxpN3eGpTklOoTzxMqp8wW7IAibf1rwz+z5pQo0hH3CpPymW5eAaLHkmBJ/dO
         v0GiwoPDQOp9RD+z68XmagSelnJ+aTC0BcJ7UKGiU1q+7tiUWCEPNOF0sM+KOpxcQ/mn
         p+qXWiJ1/Ai55+WSqu8jK9OnJ3BCeY5wyoFagBjmrAUo6d0PbcD/D6RfcLyxeqpg+8mb
         J34A==
X-Gm-Message-State: AA6/9RnvJkTKMAnEFVRkkFpEpv6hxSIleLCmvUFKXIb/vnCtwjjv6QN3ri2S7renjP1B1w==
X-Received: by 10.66.189.194 with SMTP id gk2mr33690186pac.211.1475879573625;
        Fri, 07 Oct 2016 15:32:53 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id y205sm16421884pfb.37.2016.10.07.15.32.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 15:32:53 -0700 (PDT)
Date: Fri, 7 Oct 2016 15:32:51 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: sm750fb: replace macro with builtin fn
Message-ID: <20161007223250.GA2680@localhost>
References: <20161002223356.GA5653@localhost>
 <20161007145936.GA8908@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161007145936.GA8908@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Oct 07, 2016 at 04:59:36PM +0200, Greg KH wrote:
> On Sun, Oct 02, 2016 at 03:33:59PM -0700, Elizabeth Ferdman wrote:
> > Drop a local macro definition and replace its uses with a standard
> > macro function from linux/kernel.h: DIV_ROUND_CLOSEST, to avoid
> > reproducing code.
> > 
> > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > ---
> > Changes in v2:
> >  - Use "with" not w in the subject line 
> >  - Specify the name of the builtin macro in the description
> >  - Explain why this change is necessary
> 
> Someone else already sent this patch in and got it accepted before you
> did, sorry.

Is there any easy way to monitor what's currently being sent? I found
lkml.org and mail-archive.com/linux-kernel@vger.kernel.org. The latter
is a nicer one to look at. Just wondering what you use.

thanks,
liz
> 
> greg k-h

