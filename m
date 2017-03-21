X-GM-THRID: 6399911887326150656
X-Received: by 10.99.133.200 with SMTP id u191mr617252pgd.93.1490097379735;
        Tue, 21 Mar 2017 04:56:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.36 with SMTP id 33ls9615460ota.46.gmail; Tue, 21 Mar
 2017 04:56:19 -0700 (PDT)
X-Received: by 10.157.12.189 with SMTP id b58mr15702945otb.41.1490097379388;
        Tue, 21 Mar 2017 04:56:19 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si3395189pfx.8.2017.03.21.04.56.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6C6DD905;
	Tue, 21 Mar 2017 11:56:18 +0000 (UTC)
Date: Tue, 21 Mar 2017 12:55:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: w.d.hubbs@gmail.com, devel@driverdev.osuosl.org,
	linux-fbdev@vger.kernel.org, teddy.wang@siliconmotion.com,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com
Subject: Re: [PATCH 1/2] staging: sm750fb: Remove typedefs from struct
Message-ID: <20170321115559.GA16100@kroah.com>
References: <20170321112639.32495-1-arushisinghal19971997@gmail.com>
 <20170321112639.32495-2-arushisinghal19971997@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170321112639.32495-2-arushisinghal19971997@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 21, 2017 at 04:56:38PM +0530, Arushi Singhal wrote:
> This patch removes typedefs from structure and renames them as
> per kernel coding standards.

In the subject, and in the text, say _which_ typedef you changed, and
what you changed it to.

Same for your patch 2/2.

thanks,

greg k-h

