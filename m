X-GM-THRID: 6395942323124961280
X-Received: by 10.129.4.73 with SMTP id 70mr13844864ywe.153.1489328477511;
        Sun, 12 Mar 2017 07:21:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.225 with SMTP id n94ls3479814ioi.43.gmail; Sun, 12 Mar
 2017 07:21:17 -0700 (PDT)
X-Received: by 10.107.143.194 with SMTP id r185mr7813809iod.89.1489328477041;
        Sun, 12 Mar 2017 07:21:17 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y203si2274481pfb.0.2017.03.12.07.21.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:21:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8B1058A6;
	Sun, 12 Mar 2017 14:21:15 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:20:56 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Chris Brannon <chris@the-brannons.com>
Subject: Re: [PATCH] Add blank line after function/struct/union/enum
 declarations
Message-ID: <20170312142056.GA6001@kroah.com>
References: <20170310184243.GA5342@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310184243.GA5342@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 11, 2017 at 12:12:43AM +0530, Arushi Singhal wrote:
> This patch fixes the warnings reported by checkpatch.pl
> for please use a blank line after function/struct/union/enum
> declarations.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

You didn't put what subsystem: driver you are modifying in the subject
line :(

thanks,

greg k-h

