X-GM-THRID: 7882005282816
X-Received: by 10.236.27.76 with SMTP id d52mr29051847yha.52.1426416406925;
        Sun, 15 Mar 2015 03:46:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.63.43 with SMTP id d11ls907277obs.52.gmail; Sun, 15 Mar
 2015 03:46:46 -0700 (PDT)
X-Received: by 10.182.128.98 with SMTP id nn2mr35576520obb.40.1426416406647;
        Sun, 15 Mar 2015 03:46:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si1285549pdo.0.2015.03.15.03.46.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:46:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7EC748CF;
	Sun, 15 Mar 2015 10:46:45 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:46:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt: Fix style error
Message-ID: <20150315104641.GC543@kroah.com>
References: <20150312141538.GA25575@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150312141538.GA25575@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 07:45:38PM +0530, Vatika Harlalka wrote:
> Split function call to two lines improve code style and 
> increase readability.

What "style error"?  Please always be specific in the subject, and don't
put trailing whitespace in the changelog section either.

Please fix up and resend.

thanks,

greg k-h

