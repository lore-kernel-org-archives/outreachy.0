X-GM-THRID: 6336851136468746240
X-Received: by 10.200.39.227 with SMTP id x32mr4571097qtx.85.1475419997190;
        Sun, 02 Oct 2016 07:53:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.13 with SMTP id d13ls2968484iog.8.gmail; Sun, 02 Oct
 2016 07:53:16 -0700 (PDT)
X-Received: by 10.66.79.199 with SMTP id l7mr4229383pax.42.1475419996689;
        Sun, 02 Oct 2016 07:53:16 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 128si953715pfz.2.2016.10.02.07.53.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 07:53:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 223E871;
	Sun,  2 Oct 2016 14:53:15 +0000 (UTC)
Date: Sun, 2 Oct 2016 16:53:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] Staging: sm750fb: fix comment block coding style
Message-ID: <20161002145317.GB17369@kroah.com>
References: <20161002125844.GA14790@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002125844.GA14790@domino-MS-16Y1>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 02, 2016 at 03:58:44PM +0300, Muraru Mihaela wrote:
> This is a patch to the ddk750_display.h file that fixes up a comment
> block warning, found by checkpatch.pl tool, by adding a * for each line
> of the comment block.
> 
> Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>

Someone else sent in this same patch before you did, sorry.

greg k-h

