X-GM-THRID: 6211311290389889024
X-Received: by 10.129.82.193 with SMTP id g184mr8116861ywb.44.1446754416123;
        Thu, 05 Nov 2015 12:13:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.160 with SMTP id m32ls795980ioi.82.gmail; Thu, 05 Nov
 2015 12:13:35 -0800 (PST)
X-Received: by 10.67.7.35 with SMTP id cz3mr7731463pad.40.1446754415539;
        Thu, 05 Nov 2015 12:13:35 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id sm2si868635pab.0.2015.11.05.12.13.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2015 12:13:35 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacdm15 with SMTP id dm15so72643122pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Nov 2015 12:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LTQ7v8Bw5nATExStybLT4wWdj0Fg7dAs9D3S/9xYn/E=;
        b=gfqnybzTqs6lKq1XPsNHrlu6E2HlxqCEZWeY6ksmGWWTQ1ydl9O0qe8qyhIbsXZvnT
         CNC2MIHf/TQsrqaMzYTqdDji527FBzHge/oe4EFlI6QeQVG0W9WmOThMcLot4h4apbaN
         LMtuWRZnnEuMqJBK7JHtgbP17qrfWMFKb2wPse6XB69wEhfEwSz8sdv+reEHeEQlFNQb
         H4GZUMnL6omgg05lJQrNBEuphIncY79R0gsVviFYaj0Dok8lHcuHCBx60R4SGi3Ny3Rg
         1esOx0wqfxzPxPq0t8zml/jGrlzwyV8cMBdCt9Xq3B0k6VOLMORtZT8ns8zN2OBuUWRh
         jNSA==
X-Received: by 10.66.124.135 with SMTP id mi7mr11902857pab.102.1446754415316;
        Thu, 05 Nov 2015 12:13:35 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-48.dhcp.embarqhsd.net. [67.232.72.48])
        by smtp.gmail.com with ESMTPSA id ju7sm9442419pbc.46.2015.11.05.12.13.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Nov 2015 12:13:34 -0800 (PST)
Date: Thu, 5 Nov 2015 12:13:34 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] scsi: replace struct timeval with
 ktime_get_real_seconds()
Message-ID: <20151105201332.GA2631@d830.WORKGROUP>
References: <20151030053949.GA9694@d830.WORKGROUP>
 <4517379.Q0sjf8SHC3@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4517379.Q0sjf8SHC3@wuerfel>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Nov 04, 2015 at 01:29:16AM +0100, Arnd Bergmann wrote:
> On Thursday 29 October 2015 22:40:03 Alison Schofield wrote:
> > Replace the use of struct timeval and do_gettimeofday() with
> > 64 bit ktime_get_real_seconds. Prevents 32-bit type overflow
> > in year 2038 on 32-bit systems.
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> 
> In the subject line, please be more specific and name the driver, not just
> the subsystem.
> 
> The patch looks correct, but it would be nice to explain in the
> changelog how the time is used here (it gets passed to the firmware
> as 64-bit milliseconds).
> 
> > @@ -45,6 +45,7 @@
> >  #include <asm/processor.h>
> >  #include <linux/libata.h>
> >  #include <linux/mutex.h>
> > +#include <linux/ktime.h>
> >  #include <scsi/scsi.h>
> >  #include <scsi/scsi_host.h>
> >  #include <scsi/scsi_device.h>
> > @@ -5563,11 +5564,9 @@ static void pmcraid_set_timestamp(struct pmcraid_cmd *cmd)
> >  	__be32 time_stamp_len = cpu_to_be32(PMCRAID_TIMESTAMP_LEN);
> >  	struct pmcraid_ioadl_desc *ioadl = ioarcb->add_data.u.ioadl;
> >  
> > -	struct timeval tv;
> >  	__le64 timestamp;
> >  
> > -	do_gettimeofday(&tv);
> > -	timestamp = tv.tv_sec * 1000;
> > +	timestamp = ktime_get_real_seconds() * 1000;
> >  
> 
> This is a nice simplification on top of the fix.
> 
> I see that the driver for some reason leaves the sub-second portion of
> the 64-bit milliseconds as zero, which is a bit odd. Did you notice that
> too?
> 
> What I'd do in a case like this is to list in the changelog an alternative
> approach, so the maintainer can decide whether to apply the patch as-is or
> to ask for the alternative. The other approach would be to fix the
> milliseconds as well and do:
> 
> 	struct timespec64 ts;
> 
> 	ktime_get_real_ts64(&ts);
> 	timestamp = ts.tv_sec * MSEC_PER_SEC + ts.tv_nsec / NSEC_PER_MSEC;
> 	
> 
> 	Arnd

Think I understand.  v2 on its way.  Maybe got too wordy..let me know.
Thanks!

