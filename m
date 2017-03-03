X-GM-THRID: 6392991510876389376
X-Received: by 10.107.4.145 with SMTP id 139mr1471249ioe.90.1488565957075;
        Fri, 03 Mar 2017 10:32:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.7 with SMTP id u7ls856300itc.19.canary-gmail; Fri, 03
 Mar 2017 10:32:36 -0800 (PST)
X-Received: by 10.99.119.78 with SMTP id s75mr1806412pgc.124.1488565956592;
        Fri, 03 Mar 2017 10:32:36 -0800 (PST)
Received: by 10.55.126.197 with SMTP id z188msqkc;
        Fri, 3 Mar 2017 09:45:55 -0800 (PST)
X-Received: by 10.25.29.11 with SMTP id d11mr612998lfd.14.1488563155516;
        Fri, 03 Mar 2017 09:45:55 -0800 (PST)
Return-Path: <sakari.ailus@retiisi.org.uk>
Received: from hillosipuli.retiisi.org.uk (hillosipuli.retiisi.org.uk. [2001:1bc8:1a6:d3d5::81:2])
        by gmr-mx.google.com with ESMTPS id e72si129477wma.0.2017.03.03.09.45.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 09:45:55 -0800 (PST)
Received-SPF: pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 2001:1bc8:1a6:d3d5::81:2 as permitted sender) client-ip=2001:1bc8:1a6:d3d5::81:2;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 2001:1bc8:1a6:d3d5::81:2 as permitted sender) smtp.mailfrom=sakari.ailus@retiisi.org.uk
Received: from valkosipuli.retiisi.org.uk (valkosipuli.retiisi.org.uk [IPv6:2001:1bc8:1a6:d3d5::80:2])
	by hillosipuli.retiisi.org.uk (Postfix) with ESMTP id E316D600A1;
	Fri,  3 Mar 2017 19:45:52 +0200 (EET)
Received: by valkosipuli.retiisi.org.uk (Postfix, from userid 1000)
	id C14CD2032D; Fri,  3 Mar 2017 19:45:52 +0200 (EET)
Date: Fri, 3 Mar 2017 19:45:52 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: simran singhal <singhalsimran0@gmail.com>
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/7] staging: media: Remove unnecessary typecast of c90
 int constant
Message-ID: <20170303174552.GP3220@valkosipuli.retiisi.org.uk>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Hi Simran,

On Fri, Mar 03, 2017 at 01:21:56AM +0530, simran singhal wrote:
> This patch removes unnecessary typecast of c90 int constant.
> 
> WARNING: Unnecessary typecast of c90 int constant
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Which tree are these patches based on?

-- 
Regards,

Sakari Ailus
e-mail: sakari.ailus@iki.fi	XMPP: sailus@retiisi.org.uk

