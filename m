X-GM-THRID: 6339992797560438784
X-Received: by 10.157.13.202 with SMTP id 68mr233395ots.56.1476277485522;
        Wed, 12 Oct 2016 06:04:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.101 with SMTP id t92ls3254205ota.29.gmail; Wed, 12 Oct
 2016 06:04:45 -0700 (PDT)
X-Received: by 10.129.85.209 with SMTP id j200mr234963ywb.40.1476277485169;
        Wed, 12 Oct 2016 06:04:45 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z76si1204047pff.1.2016.10.12.06.04.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8D8B69C;
	Wed, 12 Oct 2016 13:04:44 +0000 (UTC)
Date: Wed, 12 Oct 2016 15:04:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: sm750fb: Merge ddk750_help.* into
 ddk750_chip.*.
Message-ID: <20161012130453.GA15450@kroah.com>
References: <20161011224307.GA31089@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011224307.GA31089@lennorien.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Tue, Oct 11, 2016 at 07:43:07PM -0300, Elise Lennion wrote:
> The file ddk750_help.c contained only one function declaration,
> so it was merged into ddk750_chip.c to simplify the driver.
> 
> Also, ddk750_help.h was merged into ddk750_chip.h to keep consistency.
> 
> With these changes a few global variables are removed and the function
> ddk750_set_mmio is rewritten, so its purpose in the code is clearer.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>

Nice cleanups and changes, thanks for doing this.

greg k-h

