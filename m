X-GM-THRID: 6339198760694841344
X-Received: by 10.129.137.6 with SMTP id z6mr7490295ywf.122.1476024068619;
        Sun, 09 Oct 2016 07:41:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.105 with SMTP id l102ls2216243iod.52.gmail; Sun, 09
 Oct 2016 07:41:07 -0700 (PDT)
X-Received: by 10.66.122.197 with SMTP id lu5mr6763828pab.156.1476024067049;
        Sun, 09 Oct 2016 07:41:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 80si3728486pfw.0.2016.10.09.07.41.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0D5F525A;
	Sun,  9 Oct 2016 14:41:05 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:41:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/4] staging: rtl8188eu: core: formats long lines and
 comment blocks
Message-ID: <20161009144113.GA25227@kroah.com>
References: <cover.1475959255.git.juliana.orod@gmail.com>
 <20161008204844.GA8624@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008204844.GA8624@spock>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 05:48:44PM -0300, Juliana Rodrigues wrote:
> This patch fixes lines over 80 characters that were causing checkpatch
> issues and rewrites some comment blocks to match coding style.

Do not do multiple different things in the same patch, break it up into
one-type-of-thing-per-patch.

thanks,

greg k-h

