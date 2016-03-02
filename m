X-GM-THRID: 6255961671110492160
X-Received: by 10.112.54.202 with SMTP id l10mr3244211lbp.14.1456935957507;
        Wed, 02 Mar 2016 08:25:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.207 with SMTP id m198ls416522wmg.50.canary; Wed, 02 Mar
 2016 08:25:57 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr125604wmg.6.1456935957111;
        Wed, 02 Mar 2016 08:25:57 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c7si200127wmf.2.2016.03.02.08.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:57 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C45D6DA2;
	Wed,  2 Mar 2016 16:25:55 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:55 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Rakhi Sharma <rakhish1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wilc1000: Fix warning
 usleep_range() shouldn't use min ==max args.
Message-ID: <20160302162555.GO987@kroah.com>
References: <1456587353-29404-1-git-send-email-rakhish1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456587353-29404-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 27, 2016 at 09:05:53PM +0530, Rakhi Sharma wrote:
> As usleep_range should not use min == max args.This patch fixes checkpatch
> warning: usleep_range should not use min == max args; see
> Documentation/timers/timers-howto.txt.
> Choose to increment max by 100, as done in commit here
> https://patches.linaro.org/patch/11284/.
> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
> Changes in v2:
>    update in commit message.
> 
>  drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This patch doesn't apply to my tree :(

