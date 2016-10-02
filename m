X-GM-THRID: 6336889298052186112
X-Received: by 10.157.60.216 with SMTP id t24mr1608905otf.71.1475422721265;
        Sun, 02 Oct 2016 08:38:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.7 with SMTP id m7ls2850628otc.36.gmail; Sun, 02 Oct
 2016 08:38:40 -0700 (PDT)
X-Received: by 10.31.61.210 with SMTP id k201mr1585922vka.0.1475422720924;
        Sun, 02 Oct 2016 08:38:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 203si265445pfu.0.2016.10.02.08.38.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 31A4071;
	Sun,  2 Oct 2016 15:38:40 +0000 (UTC)
Date: Sun, 2 Oct 2016 17:38:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org
Subject: Re: [PATCH v3 1/2] staging: iio: cdc: ad7152: Add blank line after
Message-ID: <20161002153840.GC20900@kroah.com>
References: <20161002152635.GA4163@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002152635.GA4163@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 02, 2016 at 08:56:43PM +0530, Anchal Jain wrote:
> declarations to increase readability
> Reply-To: 

What are these lines for?  They shouldn't be here :(

thanks,

greg k-h

