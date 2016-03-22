X-GM-THRID: 6264490857152380928
X-Received: by 10.182.236.34 with SMTP id ur2mr25433743obc.10.1458611530160;
        Mon, 21 Mar 2016 18:52:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.8 with SMTP id z8ls1888640iod.83.gmail; Mon, 21 Mar
 2016 18:52:09 -0700 (PDT)
X-Received: by 10.66.224.38 with SMTP id qz6mr24526217pac.43.1458611529818;
        Mon, 21 Mar 2016 18:52:09 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 138si140443pfa.1.2016.03.21.18.52.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 18:52:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.111.11.2])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 46DCB92;
	Tue, 22 Mar 2016 01:52:09 +0000 (UTC)
Date: Mon, 21 Mar 2016 21:52:08 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: sveta.orlik.code@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ioo: ad9832: Replace
 'unsigned' with 'unsigned int'
Message-ID: <20160322015208.GA27510@kroah.com>
References: <4cac9960-7b07-454e-bb84-f37a13e2e7ad@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4cac9960-7b07-454e-bb84-f37a13e2e7ad@googlegroups.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 21, 2016 at 06:03:58AM -0700, sveta.orlik.code@gmail.com wrote:
> 
> Replace 'unsigned' with 'unsigned int' to avoid checkpatch.pl warning.
> 
> Signed-off-by: Svetlana Orlik <sveta.orlik.code@gmail.com>
> ---
> �drivers/staging/iio/frequency/ad9832.c | 2 +-
> �1 file changed, 1 insertion(+), 1 deletion(-)

Your From: email line didn't match your signed-off-by: line :(

You also sent this as html email, which corrupts the patch.

And the subject: has "ioo" which doesn't make much sense :)

thanks,

greg k-h

