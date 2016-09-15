X-GM-THRID: 6329929865196732416
X-Received: by 10.129.132.208 with SMTP id u199mr7318365ywf.38.1473960747273;
        Thu, 15 Sep 2016 10:32:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.30 with SMTP id j30ls1220829ioi.30.gmail; Thu, 15 Sep
 2016 10:32:26 -0700 (PDT)
X-Received: by 10.98.25.66 with SMTP id 63mr7316274pfz.2.1473960746732;
        Thu, 15 Sep 2016 10:32:26 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si1400468pfw.1.2016.09.15.10.32.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 10:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 16B2689F;
	Thu, 15 Sep 2016 17:32:25 +0000 (UTC)
Date: Thu, 15 Sep 2016 19:32:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: octeon: remove multiple blank lines
Message-ID: <20160915173232.GA29652@kroah.com>
References: <20160914185801.12327-1-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160914185801.12327-1-gs051095@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 12:28:01AM +0530, Gargi Sharma wrote:
> Fixes the checkpatch issue Please don't use multiple blank lines.
> ---
> Changes in v4
> 	-Make the commit message follow protocol by putting v3 commit
> 	 subject before v2.
> 
> Changes in v3
>         - Make the commit message more clearer. Also, fixed the subject
> 	  mistake in v2.
> 
> Changes in v2
> 	- Change the commit subject to :Correcting the commit
> 	  message. Fixes the checkpatch issue Please don't use multiple
> 	  blank lines.
> 
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---

The Signed-off-by: has to go above the --- line :(

thanks,

greg k-h

