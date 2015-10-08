X-GM-THRID: 6203322698608672768
X-Received: by 10.182.102.194 with SMTP id fq2mr6908399obb.43.1444324926986;
        Thu, 08 Oct 2015 10:22:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.197 with SMTP id 66ls560987ios.106.gmail; Thu, 08 Oct
 2015 10:22:06 -0700 (PDT)
X-Received: by 10.66.101.42 with SMTP id fd10mr6858950pab.17.1444324926483;
        Thu, 08 Oct 2015 10:22:06 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u67si3601438ywf.5.2015.10.08.10.22.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 10:22:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (mobile-107-107-56-37.mycingular.net [107.107.56.37])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 08EFA206A;
	Thu,  8 Oct 2015 17:22:04 +0000 (UTC)
Date: Thu, 8 Oct 2015 13:22:03 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] checkpatch err - questioning adding parens
Message-ID: <20151008172203.GB8172@kroah.com>
References: <20151008170011.GA2603@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151008170011.GA2603@Ubuntu-D830>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 08, 2015 at 10:00:13AM -0700, Alison Schofield wrote:
> Looking at this checkpatch ERROR and hesitating to change because it
> looks worse to my eyes.
> 
> ERROR: Macros with complex values should be enclosed in parentheses
> FILE: sm750_cursor.c:40:
> 
> Here's a short snippet (defines actually go on ~25 lines)
> 
> This...
> 	#define HWC_ADDRESS                         0x0
> 	#define HWC_ADDRESS_ENABLE                  31:31
> 	#define HWC_ADDRESS_ENABLE_DISABLE          0
> 	#define HWC_ADDRESS_ENABLE_ENABLE           1
> 
> would become this..
> 	#define HWC_ADDRESS                         (0x0)
> 	#define HWC_ADDRESS_ENABLE                  (31:31)
> 	#define HWC_ADDRESS_ENABLE_DISABLE          (0)
> 	#define HWC_ADDRESS_ENABLE_ENABLE           (1)
> 
> It is an ERROR... so what's my direction?

Just ignore it, it's a "false positive" in checkpatch, sorry about that.

thanks,

greg k-h

