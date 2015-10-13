X-GM-THRID: 6203640047549284352
X-Received: by 10.129.148.129 with SMTP id l123mr29790765ywg.35.1444756692640;
        Tue, 13 Oct 2015 10:18:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.244 with SMTP id 107ls3964565qgp.24.gmail; Tue, 13 Oct
 2015 10:18:12 -0700 (PDT)
X-Received: by 10.140.239.142 with SMTP id k136mr29639354qhc.7.1444756692027;
        Tue, 13 Oct 2015 10:18:12 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si421067pbb.2.2015.10.13.10.18.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 10:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (50-76-40-150-ip-static.hfc.comcastbusiness.net [50.76.40.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 82EA9BC1;
	Tue, 13 Oct 2015 17:18:11 +0000 (UTC)
Date: Tue, 13 Oct 2015 10:07:37 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wilc1000: Use kzalloc
 instead of kmalloc and memset
Message-ID: <20151013170737.GA6267@kroah.com>
References: <1444738605-2670-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444738605-2670-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 13, 2015 at 05:46:45PM +0530, Shraddha Barke wrote:
> Replace kmalloc and memset with a single call to kzalloc.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> Changes in v2-
>  Based on the current staging-testing branch

Still doesn't apply :(

