X-GM-THRID: 6201721942564667392
X-Received: by 10.66.182.162 with SMTP id ef2mr21417708pac.35.1443954400268;
        Sun, 04 Oct 2015 03:26:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.91.4 with SMTP id ca4ls1141437obb.2.gmail; Sun, 04 Oct
 2015 03:26:39 -0700 (PDT)
X-Received: by 10.182.28.73 with SMTP id z9mr21183023obg.45.1443954399943;
        Sun, 04 Oct 2015 03:26:39 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u67si1952078ywf.5.2015.10.04.03.26.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 03:26:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [193.120.146.54])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EA0D61E1D;
	Sun,  4 Oct 2015 10:26:37 +0000 (UTC)
Date: Sun, 4 Oct 2015 11:26:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Remove
 unused function obd_export_nid2str
Message-ID: <20151004102633.GA9758@kroah.com>
References: <1443950881-25330-1-git-send-email-shraddha.6596@gmail.com>
 <alpine.DEB.2.02.1510041208410.2026@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510041208410.2026@localhost6.localdomain6>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 04, 2015 at 12:09:19PM +0200, Julia Lawall wrote:
> On Sun, 4 Oct 2015, Shraddha Barke wrote:
> 
> > Remove obd_export_nid2str as it is defined but not used anymore.
> 
> I think this is on top of your previous patch.  It should be on top of 
> Greg's tree, since I guess he won't take a patch that causes build 
> warnings.

No, it's ok, I noticed the build warnings after I applied it, and it was
due to patches from a different developer that I accepted, not this
series, from what I can tell, so I let it go in.

thanks,

greg k-h

