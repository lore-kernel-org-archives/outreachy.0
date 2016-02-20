X-GM-THRID: 6252763365254365184
X-Received: by 10.194.24.233 with SMTP id x9mr2610870wjf.0.1456008935105;
        Sat, 20 Feb 2016 14:55:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.180.70 with SMTP id d67ls168407wmf.9.canary; Sat, 20 Feb
 2016 14:55:34 -0800 (PST)
X-Received: by 10.28.226.132 with SMTP id z126mr376907wmg.2.1456008934561;
        Sat, 20 Feb 2016 14:55:34 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w128si637296wmd.0.2016.02.20.14.55.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 14:55:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3B65A113C;
	Sat, 20 Feb 2016 22:55:33 +0000 (UTC)
Date: Sat, 20 Feb 2016 14:55:32 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Thaissa Falbo <thaissa.falbo@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: davinci_vpfe:
 remove ret variable of function
Message-ID: <20160220225532.GA22835@kroah.com>
References: <cover.1455834014.git.thaissa.falbo@gmail.com>
 <0449c39d607e37397547a89f096d31f9ab65e7c1.1455834014.git.thaissa.falbo@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0449c39d607e37397547a89f096d31f9ab65e7c1.1455834014.git.thaissa.falbo@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 08:35:12PM -0200, Thaissa Falbo wrote:
> Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>

I can't accept patches without any changelog text at all :(


