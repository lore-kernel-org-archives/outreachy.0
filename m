X-GM-THRID: 6249509204772519936
X-Received: by 10.31.11.75 with SMTP id 72mr36219056vkl.2.1455084666291;
        Tue, 09 Feb 2016 22:11:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.165 with SMTP id d34ls191965qge.89.gmail; Tue, 09 Feb
 2016 22:11:05 -0800 (PST)
X-Received: by 10.31.168.130 with SMTP id r124mr36162151vke.10.1455084665797;
        Tue, 09 Feb 2016 22:11:05 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ff2si177090pad.2.2016.02.09.22.11.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 22:11:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6F591F05;
	Wed, 10 Feb 2016 06:11:05 +0000 (UTC)
Date: Tue, 9 Feb 2016 22:11:05 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: slicoss: Align #define
 constants
Message-ID: <20160210061105.GA22525@kroah.com>
References: <20160210090650.GA3575@janani-Inspiron-3521>
 <cd332ec7-4bf6-4854-859d-3ab667383154@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cd332ec7-4bf6-4854-859d-3ab667383154@googlegroups.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 09, 2016 at 08:10:51PM -0800, Janani Ravichandran wrote:
> This is embarrassing. The alignment looked fine on vim. All the constants were
> in the
> same column. I don't understand why the alignment looks so bad in the patch.
> Can someone
> explain this? :/

What looks wrong to you now?  The patch looks good to me, please
explain, by quoting the lines you feel are not correct.

thanks,

greg k-h

