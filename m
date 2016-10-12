X-GM-THRID: 6340113860345724928
X-Received: by 10.157.52.225 with SMTP id t30mr227164otd.129.1476278065342;
        Wed, 12 Oct 2016 06:14:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.238 with SMTP id t43ls3463479otd.27.gmail; Wed, 12 Oct
 2016 06:14:25 -0700 (PDT)
X-Received: by 10.157.18.201 with SMTP id g67mr251973otg.92.1476278065030;
        Wed, 12 Oct 2016 06:14:25 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si1390609par.0.2016.10.12.06.14.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 296F79C;
	Wed, 12 Oct 2016 13:14:23 +0000 (UTC)
Date: Wed, 12 Oct 2016 15:14:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: media: tw686x-kh: Fix comment block coding style
Message-ID: <20161012131432.GA28690@kroah.com>
References: <20161011075946.GA9559@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011075946.GA9559@domino-MS-16Y1>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Tue, Oct 11, 2016 at 10:59:46AM +0300, Mihaela Muraru wrote:
> This is a patch to the tw686x-kh-video.c file that fixes up a comment
> block warning, found by checkpatch.pl tool, by adding a * for each line
> of the comment block.
> 
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/media/tw686x-kh/tw686x-kh-video.c | 48 +++++++++++++----------
>  1 file changed, 27 insertions(+), 21 deletions(-)

This file is no longer in the kernel source tree :(

