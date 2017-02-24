X-GM-THRID: 6389890697918414848
X-Received: by 10.36.53.212 with SMTP id k203mr997171ita.30.1487953898230;
        Fri, 24 Feb 2017 08:31:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls7184087otj.6.gmail; Fri, 24 Feb
 2017 08:31:37 -0800 (PST)
X-Received: by 10.159.34.69 with SMTP id 63mr850857uad.22.1487953897786;
        Fri, 24 Feb 2017 08:31:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d63si1521764pfe.2.2017.02.24.08.31.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 08:31:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 25154B1E;
	Fri, 24 Feb 2017 16:31:36 +0000 (UTC)
Date: Fri, 24 Feb 2017 17:31:30 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: xgifb: function prototype argument should have
 an identifier name
Message-ID: <20170224163130.GA29645@kroah.com>
References: <20170222111918.GA25063@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170222111918.GA25063@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Wed, Feb 22, 2017 at 04:49:19PM +0530, Arushi Singhal wrote:
> function prototype arguments like 'struct vb_device_info *','unsigned
> long' etc. should have an identifier name.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> Changes in v3:
>   - By mistake one irrelevant line was added which is removed in this
>     patch.
>   - write the changes done in previous version in correct format.
>   - make the commit subject more relevant and accurate.

This patch doesn't apply to my tree at all :(

sorry,

greg k-h

