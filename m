X-GM-THRID: 6399916000486096896
X-Received: by 10.31.125.73 with SMTP id y70mr523948vkc.2.1490275237882;
        Thu, 23 Mar 2017 06:20:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.182.67 with SMTP id g64ls1435382iof.4.gmail; Thu, 23 Mar
 2017 06:20:36 -0700 (PDT)
X-Received: by 10.99.154.9 with SMTP id o9mr744041pge.6.1490275236807;
        Thu, 23 Mar 2017 06:20:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s67si1046162pfs.4.2017.03.23.06.20.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 06:20:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 419CF8A5;
	Thu, 23 Mar 2017 13:20:36 +0000 (UTC)
Date: Thu, 23 Mar 2017 14:20:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH 11/11] staging: speakup: Fix alignment with parenthesis.
Message-ID: <20170323132021.GD21199@kroah.com>
References: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
 <20170321114235.1638-12-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170321114235.1638-12-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 21, 2017 at 05:12:35PM +0530, Arushi Singhal wrote:
> This patch fixes the warnings reported by checkpatch.pl
> for please use a blank line after function/struct/union/enum
> declarations.

That's not what this patch does at all!

Please be more careful.

greg k-h

