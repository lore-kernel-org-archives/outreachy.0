X-GM-THRID: 6250103779418439680
X-Received: by 10.13.202.79 with SMTP id m76mr29851182ywd.10.1455249625091;
        Thu, 11 Feb 2016 20:00:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.203 with SMTP id 72ls635692ios.106.gmail; Thu, 11 Feb
 2016 20:00:24 -0800 (PST)
X-Received: by 10.66.217.229 with SMTP id pb5mr45832182pac.39.1455249624806;
        Thu, 11 Feb 2016 20:00:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ff2si1237464pad.2.2016.02.11.20.00.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 20:00:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 83D9DF92;
	Fri, 12 Feb 2016 04:00:24 +0000 (UTC)
Date: Thu, 11 Feb 2016 20:00:24 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Add check
 dma_mapping_error
Message-ID: <20160212040024.GB30932@kroah.com>
References: <20160211183440.GA11731@haneenVB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160211183440.GA11731@haneenVB>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 11, 2016 at 09:34:40PM +0300, Haneen Mohammed wrote:
> This patch checks for dma_mapping_error() after using dma_map_single.
> If the dma map fails we release skb buff allocated by dev_alloc_skb() to
> avoid possible causes of resource leak.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Nice catch.


