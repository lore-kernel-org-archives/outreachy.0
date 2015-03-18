X-GM-THRID: 8658120343552
X-Received: by 10.70.131.81 with SMTP id ok17mr74860023pdb.6.1426685869082;
        Wed, 18 Mar 2015 06:37:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.50.233 with SMTP id f9ls307936obo.11.gmail; Wed, 18 Mar
 2015 06:37:48 -0700 (PDT)
X-Received: by 10.182.128.98 with SMTP id nn2mr53165959obb.40.1426685868893;
        Wed, 18 Mar 2015 06:37:48 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si3130569pac.0.2015.03.18.06.37.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:37:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B13CFAC6;
	Wed, 18 Mar 2015 13:37:47 +0000 (UTC)
Date: Wed, 18 Mar 2015 14:37:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Darshana Padmadas <darshanapadmadas@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Replace memcpy with
 ether_addr_copy and fix checkpatch warning
Message-ID: <20150318133744.GA9270@kroah.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
 <20150318101945.GB5422@kroah.com>
 <c163a2cd-36f7-440f-8857-93eeace05b5c@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c163a2cd-36f7-440f-8857-93eeace05b5c@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 18, 2015 at 06:05:16AM -0700, Darshana Padmadas wrote:
> Sorry, about that. Have sent v2 for patches 1/5 and 2/5 that broke the build.

Please resend everything, the whole patch set is long-gone from my
queue.

thanks,

greg k-h

