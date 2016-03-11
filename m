X-GM-THRID: 6259026204991422464
X-Received: by 10.129.152.16 with SMTP id p16mr7913490ywg.27.1457719728294;
        Fri, 11 Mar 2016 10:08:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.62.69 with SMTP id l66ls1452025ioa.54.gmail; Fri, 11 Mar
 2016 10:08:47 -0800 (PST)
X-Received: by 10.107.18.68 with SMTP id a65mr8258407ioj.16.1457719727896;
        Fri, 11 Mar 2016 10:08:47 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1552352pac.1.2016.03.11.10.08.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:08:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 80966C18;
	Fri, 11 Mar 2016 18:08:47 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:08:46 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: slicoss: Use !x instead
 of x == NULL.
Message-ID: <20160311180846.GA1516@kroah.com>
References: <20160306113838.GA5997@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306113838.GA5997@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 05:08:38PM +0530, Sandhya Bankar wrote:
> Use !x instead of x == NULL.This patch is found by checkpatch.pl script. 
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v2:
> * No change.
> *Compile this patch to check nothing is broken.

Someone sent this patch before you did, sorry about that :(


