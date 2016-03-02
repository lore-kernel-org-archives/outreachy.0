X-GM-THRID: 6256048527740239872
X-Received: by 10.28.85.137 with SMTP id j131mr125378wmb.1.1456935938181;
        Wed, 02 Mar 2016 08:25:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.15.149 with SMTP id 143ls146190wmp.42.canary; Wed, 02 Mar
 2016 08:25:37 -0800 (PST)
X-Received: by 10.28.15.82 with SMTP id 79mr121835wmp.3.1456935937790;
        Wed, 02 Mar 2016 08:25:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w197si212947wmw.3.2016.03.02.08.25.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6FCC3DBA;
	Wed,  2 Mar 2016 16:25:36 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: ptlrpc: Use macro
 DIV_ROUND_UP
Message-ID: <20160302162536.GF987@kroah.com>
References: <20160227190036.GA3598@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160227190036.GA3598@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 12:30:36AM +0530, Bhaktipriya Shridhar wrote:
> The macro DIV_ROUND_UP performs the computation
> (((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
> This was done using the coccinelle script:
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> |
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Fixed typo "lusture" to "lustre" in the subject

Please pick better subjects, you use pretty much the same thing twice
here :(

