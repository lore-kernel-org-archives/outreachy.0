X-GM-THRID: 6396434872609538048
X-Received: by 10.157.40.36 with SMTP id m33mr12039553otb.49.1489294014064;
        Sat, 11 Mar 2017 20:46:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.77 with SMTP id v74ls2391700ioi.41.gmail; Sat, 11 Mar
 2017 20:46:53 -0800 (PST)
X-Received: by 10.99.56.30 with SMTP id f30mr12085956pga.121.1489294013191;
        Sat, 11 Mar 2017 20:46:53 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id g82si2523361pfb.5.2017.03.11.20.46.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 20:46:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 88326514;
	Sun, 12 Mar 2017 04:46:50 +0000 (UTC)
Date: Sun, 12 Mar 2017 05:46:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: sudipm.mukherjee@gmail.com, devel@driverdev.osuosl.org,
	linux-fbdev@vger.kernel.org,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: Improved coding style
Message-ID: <20170312044638.GB13797@kroah.com>
References: <20170312023402.GA10352@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170312023402.GA10352@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 12, 2017 at 08:04:02AM +0530, Arushi Singhal wrote:
> New variables are added to make the code more readable.
> Also fixed the checkpatch issue: "Alignment should match open
> parenthesis".

When you have to say "also" in a commit message, that is a huge red-flag
that you need to break a patch up into different parts, as you are doing
multiple things.  Please do so here.

thanks,

greg k-h

