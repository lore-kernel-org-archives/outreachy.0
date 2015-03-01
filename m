X-GM-THRID: 4460872990720
X-Received: by 10.182.176.35 with SMTP id cf3mr23280474obc.8.1425251722500;
        Sun, 01 Mar 2015 15:15:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.221.169 with SMTP id qf9ls510174obc.55.gmail; Sun, 01 Mar
 2015 15:15:22 -0800 (PST)
X-Received: by 10.182.96.131 with SMTP id ds3mr22650170obb.35.1425251722338;
        Sun, 01 Mar 2015 15:15:22 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si1286749pbc.1.2015.03.01.15.15.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 15:15:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 037D3268;
	Sun,  1 Mar 2015 23:15:21 +0000 (UTC)
Date: Sun, 1 Mar 2015 15:15:21 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lustre: osc: Delete
 space after that '!'
Message-ID: <20150301231521.GA17531@kroah.com>
References: <1425038652-14443-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425038652-14443-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 02:04:12PM +0200, Hatice ERT�RK wrote:
> Space prohibited after that '!'. That's why delete space after '!'
> 
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/lustre/lustre/osc/osc_lock.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Someone already made this change :(

