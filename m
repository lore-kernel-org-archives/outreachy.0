X-GM-THRID: 6340039641563922432
X-Received: by 10.129.23.212 with SMTP id 203mr213705ywx.123.1476278515244;
        Wed, 12 Oct 2016 06:21:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.231 with SMTP id 94ls3540881oth.16.gmail; Wed, 12 Oct
 2016 06:21:54 -0700 (PDT)
X-Received: by 10.157.40.151 with SMTP id s23mr260370ota.124.1476278514885;
        Wed, 12 Oct 2016 06:21:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 203si1477083pfw.0.2016.10.12.06.21.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 06:21:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 274F49C;
	Wed, 12 Oct 2016 13:21:54 +0000 (UTC)
Date: Wed, 12 Oct 2016 15:22:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/7] staging: greybus: Add blank line after variable
 declarations.
Message-ID: <20161012132202.GA22338@kroah.com>
References: <20161011031232.GA21944@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161011031232.GA21944@lennorien.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Tue, Oct 11, 2016 at 12:12:32AM -0300, Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: Missing a blank line after declarations
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/greybus/audio_topology.c | 1 +
>  1 file changed, 1 insertion(+)

This subject: is the same as your previous patch in the series :(

