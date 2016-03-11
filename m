X-GM-THRID: 6258969747023462400
X-Received: by 10.140.31.102 with SMTP id e93mr8818453qge.27.1457731977325;
        Fri, 11 Mar 2016 13:32:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.155 with SMTP id 27ls1287860ios.106.gmail; Fri, 11 Mar
 2016 13:32:56 -0800 (PST)
X-Received: by 10.98.70.152 with SMTP id o24mr5931815pfi.6.1457731976954;
        Fri, 11 Mar 2016 13:32:56 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h69si534441pfj.0.2016.03.11.13.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:32:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A0013C2F;
	Fri, 11 Mar 2016 21:32:56 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:32:56 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: dgnc: Add space around
 '|' operator.
Message-ID: <20160311213256.GA19992@kroah.com>
References: <20160306075937.GA497@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306075937.GA497@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 01:29:37PM +0530, Sandhya Bankar wrote:
> Add space around '|' operator.These issues are found by checkpatch.pl script.  
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v2:
> * No change.
> *Compile this patch to check nothing is broken.
> 
>  drivers/staging/dgnc/dgnc_tty.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Doesn't apply to my tree :(

