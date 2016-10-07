X-GM-THRID: 6336999371468439552
X-Received: by 10.157.47.180 with SMTP id r49mr2751940otb.127.1475852369483;
        Fri, 07 Oct 2016 07:59:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls5343501otw.27.gmail; Fri, 07 Oct
 2016 07:59:29 -0700 (PDT)
X-Received: by 10.13.233.6 with SMTP id s6mr5513279ywe.63.1475852369068;
        Fri, 07 Oct 2016 07:59:29 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 80si2242975pfw.0.2016.10.07.07.59.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 07:59:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 738E278D;
	Fri,  7 Oct 2016 14:59:28 +0000 (UTC)
Date: Fri, 7 Oct 2016 16:59:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com,
	daniel.baluta@intel.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com
Subject: Re: [PATCH v2] staging: sm750fb: replace macro with builtin fn
Message-ID: <20161007145936.GA8908@kroah.com>
References: <20161002223356.GA5653@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002223356.GA5653@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 02, 2016 at 03:33:59PM -0700, Elizabeth Ferdman wrote:
> Drop a local macro definition and replace its uses with a standard
> macro function from linux/kernel.h: DIV_ROUND_CLOSEST, to avoid
> reproducing code.
> 
> Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> ---
> Changes in v2:
>  - Use "with" not w in the subject line 
>  - Specify the name of the builtin macro in the description
>  - Explain why this change is necessary

Someone else already sent this patch in and got it accepted before you
did, sorry.

greg k-h

