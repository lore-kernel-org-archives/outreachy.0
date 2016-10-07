X-GM-THRID: 6338411449271975936
X-Received: by 10.200.34.169 with SMTP id f38mr2143218qta.68.1475813037183;
        Thu, 06 Oct 2016 21:03:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.117 with SMTP id r108ls4485949ota.19.gmail; Thu, 06 Oct
 2016 21:03:56 -0700 (PDT)
X-Received: by 10.129.123.4 with SMTP id w4mr5024074ywc.111.1475813036879;
        Thu, 06 Oct 2016 21:03:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d11si1657872pfl.2.2016.10.06.21.03.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.38])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 266C678D;
	Fri,  7 Oct 2016 04:03:55 +0000 (UTC)
Date: Fri, 7 Oct 2016 05:53:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: rvarsha016@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Forest Bond <forest@alittletooquiet.net>
Subject: Re: [PATCH] staging:vt6655:Fix checkpatch issues.
Message-ID: <20161007035347.GB16832@kroah.com>
References: <f446eb36-0b26-4c2c-840b-fa12785b88f0@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f446eb36-0b26-4c2c-840b-fa12785b88f0@googlegroups.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Oct 06, 2016 at 10:53:37AM -0700, rvarsha016@gmail.com wrote:
> This patch fixes checkpatch.pl issues.

We can not accept patches in html format, please fix up your email
client to not do that.

thanks,

greg k-h

