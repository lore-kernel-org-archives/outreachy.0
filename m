X-GM-THRID: 6396343645329424384
X-Received: by 10.129.173.101 with SMTP id l37mr12192628ywk.73.1489325729693;
        Sun, 12 Mar 2017 06:35:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.32 with SMTP id m32ls3615535iod.52.gmail; Sun, 12 Mar
 2017 06:35:28 -0700 (PDT)
X-Received: by 10.99.102.68 with SMTP id a65mr15253265pgc.68.1489325728691;
        Sun, 12 Mar 2017 06:35:28 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si2637196pfb.7.2017.03.12.06.35.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:35:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 270B58A6;
	Sun, 12 Mar 2017 13:35:27 +0000 (UTC)
Date: Sun, 12 Mar 2017 14:34:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	arve@android.com, riandrews@android.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] staging: android: Replace strcpy with strlcpy
Message-ID: <20170312133457.GA27791@kroah.com>
References: <20170311220244.GA21700@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170311220244.GA21700@singhal-Inspiron-5558>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 12, 2017 at 03:32:44AM +0530, simran singhal wrote:
> Replace strcpy with strlcpy as strcpy does not check for buffer
> overflow.

Can there be a buffer overflow here?  If not, then strcpy is just fine
to use.  Do you see a potential code path here that actually is a
problem using this?

> This is found using Flawfinder.

You mean 'grep'?  :)

If not, what exactly does "Flawfinder" point out is wrong with the code
here?  At first glance, I can't find it, but perhaps the tool, and your
audit, provided more information?

thanks,

greg k-h

