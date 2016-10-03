X-GM-THRID: 6336543746979528704
X-Received: by 10.129.147.2 with SMTP id k2mr4671041ywg.33.1475478153114;
        Mon, 03 Oct 2016 00:02:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.48 with SMTP id h45ls499300ote.22.gmail; Mon, 03 Oct
 2016 00:02:32 -0700 (PDT)
X-Received: by 10.237.32.228 with SMTP id 91mr5617871qtb.22.1475478152730;
        Mon, 03 Oct 2016 00:02:32 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si6821258par.0.2016.10.03.00.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 00:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2520971;
	Mon,  3 Oct 2016 07:02:31 +0000 (UTC)
Date: Mon, 3 Oct 2016 09:02:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [PATCH v2] staging: lustre: Constify kernel_param_ops structures
Message-ID: <20161003070233.GB3597@kroah.com>
References: <20161002182755.GA32407@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002182755.GA32407@toblerone>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 02, 2016 at 11:57:55PM +0530, Rehas Sachdeva wrote:
> Check for structs which are not modified and hence can be declared as const.
> Done using Coccinelle:

<snip>

Why did you send this same patch twice?

confused,

greg k-h

