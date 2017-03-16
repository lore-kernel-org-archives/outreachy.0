X-GM-THRID: 6397218994574589952
X-Received: by 10.99.181.73 with SMTP id u9mr3693206pgo.39.1489630551186;
        Wed, 15 Mar 2017 19:15:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls3848121otd.11.gmail; Wed, 15 Mar
 2017 19:15:50 -0700 (PDT)
X-Received: by 10.157.6.233 with SMTP id 96mr2868125otx.75.1489630550843;
        Wed, 15 Mar 2017 19:15:50 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si677126pfx.8.2017.03.15.19.15.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 19:15:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.132.152.98])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EF166BCB;
	Thu, 16 Mar 2017 02:15:49 +0000 (UTC)
Date: Thu, 16 Mar 2017 11:15:36 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, samuel.thibault@ens-lyon.org,
	chris@the-brannons.com
Subject: Re: [PATCH v3 2/2] staging: speakup: fix "Alignment match open
 parenthesis"
Message-ID: <20170316021536.GA1575@kroah.com>
References: <20170314051643.28085-1-arushisinghal19971997@gmail.com>
 <20170314051643.28085-3-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170314051643.28085-3-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 14, 2017 at 10:46:43AM +0530, Arushi Singhal wrote:
> Alig arguments with open parenthesis.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v3
>  - Improve the commit message.

Did not apply as I think someone else already did this same work.

thanks,

greg k-h

