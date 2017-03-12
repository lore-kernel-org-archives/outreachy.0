X-GM-THRID: 6395896934008094720
X-Received: by 10.157.25.14 with SMTP id j14mr2517037ota.99.1489328673632;
        Sun, 12 Mar 2017 07:24:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.111.205 with SMTP id x196ls1040057itb.8.gmail; Sun, 12 Mar
 2017 07:24:33 -0700 (PDT)
X-Received: by 10.99.55.4 with SMTP id e4mr15123392pga.156.1489328673096;
        Sun, 12 Mar 2017 07:24:33 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y203si2275253pfb.0.2017.03.12.07.24.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:24:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B08E38F5;
	Sun, 12 Mar 2017 14:24:31 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:24:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH 2/2] staging: dvb-frontends: removed code in comments.
Message-ID: <20170312142413.GA6195@kroah.com>
References: <20170310154632.4445-1-arushisinghal19971997@gmail.com>
 <20170310154632.4445-3-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310154632.4445-3-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Mar 10, 2017 at 09:16:32PM +0530, Arushi Singhal wrote:
> Commenting Code Is a Bad Idea.

No, "Commenting code is a good idea".  I think you mean "commenting out
code is a bad idea", correct?

And no need for putting the sentance in all caps.

thanks,

greg k-h

