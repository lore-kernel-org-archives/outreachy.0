X-GM-THRID: 6205612297408217088
X-Received: by 10.67.7.170 with SMTP id dd10mr2158832pad.36.1445059494523;
        Fri, 16 Oct 2015 22:24:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.139 with SMTP id 133ls283527iof.107.gmail; Fri, 16 Oct
 2015 22:24:54 -0700 (PDT)
X-Received: by 10.50.62.49 with SMTP id v17mr7496279igr.1.1445059494255;
        Fri, 16 Oct 2015 22:24:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si2304592pac.2.2015.10.16.22.24.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 22:24:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DD5E967;
	Sat, 17 Oct 2015 05:24:53 +0000 (UTC)
Date: Fri, 16 Oct 2015 22:24:53 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: include: Move
 function prototypes
Message-ID: <20151017052453.GA19124@kroah.com>
References: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
 <06092be207de8d5980babdcc7e8d9f1140ebd856.1444856328.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <06092be207de8d5980babdcc7e8d9f1140ebd856.1444856328.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 14, 2015 at 11:06:28PM +0200, Ksenija Stanojevic wrote:
> Function prototypes need to be declared before functions are being
> used.

They do?  What problem is this patch fixing, I don't see the error...

confused,

greg k-h

