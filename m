X-GM-THRID: 6265618114998697984
X-Received: by 10.129.156.8 with SMTP id t8mr5163563ywg.25.1458827898024;
        Thu, 24 Mar 2016 06:58:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.34 with SMTP id t31ls1091143qge.98.gmail; Thu, 24 Mar
 2016 06:58:17 -0700 (PDT)
X-Received: by 10.129.72.195 with SMTP id v186mr5173294ywa.37.1458827897381;
        Thu, 24 Mar 2016 06:58:17 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h69si1729782pfj.0.2016.03.24.06.58.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Mar 2016 06:58:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E6A0C71;
	Thu, 24 Mar 2016 13:58:16 +0000 (UTC)
Date: Thu, 24 Mar 2016 09:58:14 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Patch queue is now empty
Message-ID: <20160324135814.GA21571@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi all,

Now that the application period is over, I've processed all submitted
patches and either merged them to my tree, or provided comments.

If you wish to continue to send patches to the kernel, that's wonderful,
but please do so using the "normal" mailing lists, you can determine
that by using the scripts/get_maintainer.pl tool on your patch.

If I've missed any patches, please let me know.

thanks,

greg k-h

