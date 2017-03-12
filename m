X-GM-THRID: 6396076706969419776
X-Received: by 10.107.153.140 with SMTP id b134mr7348302ioe.32.1489327511566;
        Sun, 12 Mar 2017 07:05:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.6 with SMTP id q6ls400650ioe.4.gmail; Sun, 12 Mar 2017
 07:05:10 -0700 (PDT)
X-Received: by 10.99.50.2 with SMTP id y2mr14154811pgy.173.1489327510877;
        Sun, 12 Mar 2017 07:05:10 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id a3si2684194pfb.2.2017.03.12.07.05.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:05:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 484A5901;
	Sun, 12 Mar 2017 14:05:09 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:04:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-fbdev@vger.kernel.org, teddy.wang@siliconmotion.com,
	linux-kernel@vger.kernel.org, sudipm.mukherjee@gmail.com
Subject: Re: [PATCH 0/3] staging: sm750fb: multiple checkpatch issues
Message-ID: <20170312140451.GC15102@kroah.com>
References: <20170311032410.8265-1-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170311032410.8265-1-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 11, 2017 at 08:54:07AM +0530, Arushi Singhal wrote:
> Improve readability by fixing multiple checkpatch.pl
> issues in sm750fb driver.
> 
> Arushi Singhal (3):
>   staging: sm750fb: function prototype argument should have an
>     identifier name
>   staging: sm750fb: fixes add blank line after
>     function/struct/union/enum declarations
>   staging: sm750fb: Alignment should match open parenthesis

This is a v2 series, right?  Please always say so.  Otherwise I'm going
to drop it from my queue, like I just did :(

thanks,

greg k-h

