X-GM-THRID: 6330925606572654592
X-Received: by 10.66.84.33 with SMTP id v1mr12850678pay.10.1474182648642;
        Sun, 18 Sep 2016 00:10:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.74 with SMTP id l10ls2460816otd.44.gmail; Sun, 18 Sep
 2016 00:10:48 -0700 (PDT)
X-Received: by 10.129.81.72 with SMTP id f69mr2460113ywb.66.1474182648214;
        Sun, 18 Sep 2016 00:10:48 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h124si5495280pfe.0.2016.09.18.00.10.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 00:10:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7B0E7412;
	Sun, 18 Sep 2016 07:10:47 +0000 (UTC)
Date: Sun, 18 Sep 2016 09:10:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 0/6] staging: ks7010: Fix multiple
 checkpatch warnings
Message-ID: <20160918071016.GA17265@kroah.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Sep 18, 2016 at 11:05:23AM +0530, sayli karnik wrote:
> This patchset fixes several checkpatch issues detected in the ks7010_sdio.c
> file of the ks7010 driver. 

You only sent 1 patch in this series :(

Please send all 6.

thanks,

greg k-h

