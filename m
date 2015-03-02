X-GM-THRID: 4349090594816
X-Received: by 10.66.97.97 with SMTP id dz1mr22512913pab.2.1425258731780;
        Sun, 01 Mar 2015 17:12:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.49.73 with SMTP id p67ls1598970qga.60.gmail; Sun, 01 Mar
 2015 17:12:11 -0800 (PST)
X-Received: by 10.236.209.33 with SMTP id r21mr24392703yho.6.1425258731600;
        Sun, 01 Mar 2015 17:12:11 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si1313534pbc.1.2015.03.01.17.12.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 17:12:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4B07A475;
	Mon,  2 Mar 2015 01:12:11 +0000 (UTC)
Date: Sun, 1 Mar 2015 17:12:11 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v9 1/4] Staging: emxx_udc: Fix do not
 add new typedefs and remove volatile
Message-ID: <20150302011211.GA12598@kroah.com>
References: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>
 <1425243347-8370-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425243347-8370-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 11:55:46PM +0300, Haneen Mohammed wrote:
> This patch fixes the following checkpatch.pl warnings:"do not add new
> typedefs" and "Use of volatile is usually wrong".
> Remove typedefs keyword and rename identifiers appropriately.
> Remove volatile from union usb_regs_access
> Update related  files.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

This patch doesn't apply to my tree, can you refresh the whole series
and resend?

thanks,

greg k-h

