X-GM-THRID: 6259194073994756096
X-Received: by 10.31.152.208 with SMTP id a199mr8878566vke.4.1457732977121;
        Fri, 11 Mar 2016 13:49:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.183.3 with SMTP id ei3ls282393igc.24.canary; Fri, 11 Mar
 2016 13:49:36 -0800 (PST)
X-Received: by 10.66.159.167 with SMTP id xd7mr8872623pab.5.1457732976812;
        Fri, 11 Mar 2016 13:49:36 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si1302892pab.2.2016.03.11.13.49.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 13:49:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 88CEDCA3;
	Fri, 11 Mar 2016 21:49:36 +0000 (UTC)
Date: Fri, 11 Mar 2016 13:49:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Tejun Heo <tj@kernel.org>
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_usb: Replace
 delayed_work with work_struct
Message-ID: <20160311214936.GB24083@kroah.com>
References: <20160307062937.GA12815@amitoj-Inspiron-3542>
 <20160311194052.GO24046@htj.duckdns.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160311194052.GO24046@htj.duckdns.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Mar 11, 2016 at 02:40:52PM -0500, Tejun Heo wrote:
> On Mon, Mar 07, 2016 at 11:59:37AM +0530, Amitoj Kaur Chawla wrote:
> > Replace uses of delayed_work with work_struct as the work is not required 
> > to be timed and is only used to indicate whether a packet has been sent 
> > in case of do_tx() or received in case of do_rx(). 
> > Instead of accessing the delayed_work's inner work_struct each time, 
> > remove use of delayed_work, corresponding delayed_work.work and 
> > INIT_DELAYED_WORK by replacing with work_struct counteparts.
> > 
> > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> 
> Acked-by: Tejun Heo <tj@kernel.org>

This driver just got deleted from the tree, sorry.

