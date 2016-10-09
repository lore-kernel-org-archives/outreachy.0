X-GM-THRID: 6339312082632048640
X-Received: by 10.157.33.122 with SMTP id l55mr6573748otd.35.1476024749755;
        Sun, 09 Oct 2016 07:52:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.166 with SMTP id 35ls7819685otq.35.gmail; Sun, 09 Oct
 2016 07:52:29 -0700 (PDT)
X-Received: by 10.13.226.3 with SMTP id l3mr8129591ywe.75.1476024749405;
        Sun, 09 Oct 2016 07:52:29 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z73si3634820pfa.1.2016.10.09.07.52.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:52:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 83E5725A;
	Sun,  9 Oct 2016 14:52:28 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:52:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: media: tw686x-kh: Format block comments.
Message-ID: <20161009145236.GA13560@kroah.com>
References: <20161009040821.GA355@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161009040821.GA355@lennorien.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 09, 2016 at 01:08:21AM -0300, Elise Lennion wrote:
> Fix checkpatch warnings:
> 
> WARNING: Block comments use a trailing */ on a separate line
> WARNING: Block comments use * on subsequent lines
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/media/tw686x-kh/tw686x-kh-core.c  |  3 +-
>  drivers/staging/media/tw686x-kh/tw686x-kh-video.c | 36 +++++++++++++----------
>  2 files changed, 22 insertions(+), 17 deletions(-)

Someone else sent this right before you did, sorry :(

