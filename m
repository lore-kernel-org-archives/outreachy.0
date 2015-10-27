X-GM-THRID: 6209555630081966080
X-Received: by 10.68.209.129 with SMTP id mm1mr19146420pbc.5.1445924024272;
        Mon, 26 Oct 2015 22:33:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.229 with SMTP id p92ls3697932qgp.46.gmail; Mon, 26 Oct
 2015 22:33:43 -0700 (PDT)
X-Received: by 10.129.4.203 with SMTP id 194mr33039460ywe.33.1445924023675;
        Mon, 26 Oct 2015 22:33:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si3913428pbb.0.2015.10.26.22.33.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 22:33:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A8336258;
	Tue, 27 Oct 2015 05:33:42 +0000 (UTC)
Date: Tue, 27 Oct 2015 14:33:39 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: include: Remove
 unused obd_cache.h file
Message-ID: <20151027053339.GA395@kroah.com>
References: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
 <1445774820-9184-2-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445774820-9184-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 25, 2015 at 05:36:57PM +0530, Shraddha Barke wrote:
> Remove the header file obd_cache.h since it is not needed
> ---
>  drivers/staging/lustre/lustre/include/obd_cache.h | 38 -----------------------
>  1 file changed, 38 deletions(-)
>  delete mode 100644 drivers/staging/lustre/lustre/include/obd_cache.h

No signed-off-by: line :(

