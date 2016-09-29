X-GM-THRID: 6335783132038430720
X-Received: by 10.36.0.77 with SMTP id 74mr4270694ita.23.1475164777726;
        Thu, 29 Sep 2016 08:59:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.155 with SMTP id z27ls3594630otd.46.gmail; Thu, 29 Sep
 2016 08:59:37 -0700 (PDT)
X-Received: by 10.157.13.199 with SMTP id 65mr564012ots.121.1475164777384;
        Thu, 29 Sep 2016 08:59:37 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si3488731pab.2.2016.09.29.08.59.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 08:59:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.202.203.52])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8A666943;
	Thu, 29 Sep 2016 15:59:36 +0000 (UTC)
Date: Thu, 29 Sep 2016 17:59:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drivers: iio: meter: ade7753: Replace
 IIO_DEV_ATTR_SAMP_FREQ attribute with IIO_CHAN_INFO_SAMP_FREQ handlers.
Message-ID: <20160929155940.GA30055@kroah.com>
References: <20160929155417.GA5224@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160929155417.GA5224@localhost.localdomain>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 29, 2016 at 09:24:17PM +0530, Sandhya Bankar wrote:
> Moved functionality from IIO_DEV_ATTR_SAMP_FREQ attribute into 
> IIO_CHAN_INFO_SAMP_FREQ handlers. Added ade7753_read_raw() and 
> ade7753_write_raw() to allow reading/writing the element as well.

That says what you did, but why would you want to do this?

What benefit is this?  Why do this churn at all?

Changelogs should say why you do something, not just what you did.
Hopefully what you do should be obvious from the diff itself.

thanks,

greg k-h

