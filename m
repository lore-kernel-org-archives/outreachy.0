X-GM-THRID: 6339082417419059200
X-Received: by 10.107.23.197 with SMTP id 188mr587808iox.13.1475935125723;
        Sat, 08 Oct 2016 06:58:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.1 with SMTP id 1ls7415261otb.4.gmail; Sat, 08 Oct 2016
 06:58:45 -0700 (PDT)
X-Received: by 10.176.2.75 with SMTP id 69mr6340112uas.2.1475935125384;
        Sat, 08 Oct 2016 06:58:45 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z73si2904906pfa.1.2016.10.08.06.58.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 06:58:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5E4AB2C;
	Sat,  8 Oct 2016 13:58:44 +0000 (UTC)
Date: Sat, 8 Oct 2016 15:58:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] Staging: vt6655: Replace dwIoBase by dwiobase
Message-ID: <20161008135851.GA3533@kroah.com>
References: <20161008131709.GA489@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161008131709.GA489@euri>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 06:47:09PM +0530, Varsha Rao wrote:
> This patch fixes the checkpatch issue of CamelCase by replacing dwIoBase with dwiobase.

why keep the "dw"?  The Linux style is to not use "Hungarian notation"
for variables.

"iobase" is the simplest, don't you think?

thanks,

greg k-h

