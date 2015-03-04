X-GM-THRID: 6341204639744
X-Received: by 10.182.191.65 with SMTP id gw1mr3309232obc.40.1425450895776;
        Tue, 03 Mar 2015 22:34:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.5 with SMTP id 5ls552713qgo.94.gmail; Tue, 03 Mar 2015
 22:34:55 -0800 (PST)
X-Received: by 10.236.28.44 with SMTP id f32mr2046433yha.11.1425450895645;
        Tue, 03 Mar 2015 22:34:55 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si412491pac.0.2015.03.03.22.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:34:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [166.170.43.162])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3200392F;
	Wed,  4 Mar 2015 06:34:55 +0000 (UTC)
Date: Tue, 3 Mar 2015 22:34:31 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Fix space required
 after that ','
Message-ID: <20150304063431.GA30074@kroah.com>
References: <1425417247-8510-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425417247-8510-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 11:14:07PM +0200, Hatice ERT�RK wrote:
> This patch fixes the following checkpatch.pl error:
> Space required after that ','
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8192u/r819xU_firmware.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Patch does not apply :(

