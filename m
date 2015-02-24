X-GM-THRID: 560417734656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aaed3dbebb789d37
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.44.161 with SMTP id f1mr16755032obm.33.1424763847223;
        Mon, 23 Feb 2015 23:44:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.164 with SMTP id c33ls2700244qgf.66.gmail; Mon, 23 Feb
 2015 23:44:07 -0800 (PST)
X-Received: by 10.236.63.8 with SMTP id z8mr15812628yhc.15.1424763847082;
        Mon, 23 Feb 2015 23:44:07 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si4085889pbc.2.2015.02.23.23.44.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 23:44:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C4B7F13;
	Tue, 24 Feb 2015 07:44:06 +0000 (UTC)
Date: Mon, 23 Feb 2015 23:44:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: line6: Removed the space
 before ','.
Message-ID: <20150224074406.GF11701@kroah.com>
References: <20150219052205.GA24936@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150219052205.GA24936@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 19, 2015 at 10:52:05AM +0530, Navya Sri Nizamkari wrote:
> This fixes the following checkpatch.pl error:
> 
> ERROR: space prohibited before that ','
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/line6/pcm.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

This file is no longer in the tree, so I can't accept patches for it :(

