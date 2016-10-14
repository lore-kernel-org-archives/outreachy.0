X-GM-THRID: 6340041071062417408
X-Received: by 10.98.22.21 with SMTP id 21mr2841648pfw.15.1476430816640;
        Fri, 14 Oct 2016 00:40:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.106 with SMTP id k39ls7291491otd.3.gmail; Fri, 14 Oct
 2016 00:40:16 -0700 (PDT)
X-Received: by 10.157.40.151 with SMTP id s23mr2929244ota.124.1476430816308;
        Fri, 14 Oct 2016 00:40:16 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si2966574par.0.2016.10.14.00.40.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 00:40:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7DFCE71;
	Fri, 14 Oct 2016 07:40:15 +0000 (UTC)
Date: Fri, 14 Oct 2016 09:40:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/2] staging: greybus: Replace sscanf with kstrto* to
 single variable conversion.
Message-ID: <20161014074023.GA29112@kroah.com>
References: <20161013224559.GA13383@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161013224559.GA13383@lennorien.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Thu, Oct 13, 2016 at 07:45:59PM -0300, Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: Prefer kstrto<type> to single variable sscanf
> 
> kstrto* is designed to convert string to numerical value and makes
> it easier to understand what the code does.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
> 
>  v2: No change since v1 in this file.

You forgot to add the driver name to the subject :(

