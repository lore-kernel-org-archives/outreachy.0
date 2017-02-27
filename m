X-GM-THRID: 6391449518367309824
X-Received: by 10.200.40.107 with SMTP id 40mr5416310qtr.70.1488206942323;
        Mon, 27 Feb 2017 06:49:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.197 with SMTP id l188ls3454209iol.14.gmail; Mon, 27 Feb
 2017 06:49:01 -0800 (PST)
X-Received: by 10.99.150.2 with SMTP id c2mr6878269pge.62.1488206941240;
        Mon, 27 Feb 2017 06:49:01 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h79si466948pfh.2.2017.02.27.06.49.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 06:49:01 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7B5D3721;
	Mon, 27 Feb 2017 14:49:00 +0000 (UTC)
Date: Mon, 27 Feb 2017 15:48:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: ks7010: remove code in comments.
Message-ID: <20170227144852.GA24465@kroah.com>
References: <20170226160820.GA20046@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170226160820.GA20046@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Feb 26, 2017 at 09:38:20PM +0530, Arushi Singhal wrote:
> Commenting Code Is a Bad Idea.
> Comments are their to explain the code and how the code achieves its
> goal and as codes in the comments  does not explain what the code is
> doing so there is no use of commenting them.
> So in this patch codes in the comments are removed.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v2
>  - subject lines is made short.
> 
>  drivers/staging/ks7010/ks7010_sdio.c | 4 ----
>  1 file changed, 4 deletions(-)

This patch does not apply against my staging-testing branch :(

