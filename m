X-GM-THRID: 6208838944103071744
X-Received: by 10.182.56.4 with SMTP id w4mr2655857obp.10.1445923781080;
        Mon, 26 Oct 2015 22:29:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.113.234 with SMTP id jb10ls1837007obb.83.gmail; Mon, 26
 Oct 2015 22:29:40 -0700 (PDT)
X-Received: by 10.182.104.137 with SMTP id ge9mr35064131obb.49.1445923780777;
        Mon, 26 Oct 2015 22:29:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id fa8si3927754pab.1.2015.10.26.22.29.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 22:29:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E5A49258;
	Tue, 27 Oct 2015 05:29:39 +0000 (UTC)
Date: Tue, 27 Oct 2015 14:28:49 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: wilc1000:
 coreconfigurator: Remove unnecessary parentheses
Message-ID: <20151027052849.GA27207@kroah.com>
References: <cover.1445607754.git.shivanib134@gmail.com>
 <65243190a09950e0191b4ecdb63e405c2d1170c9.1445607754.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <65243190a09950e0191b4ecdb63e405c2d1170c9.1445607754.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 26, 2015 at 08:21:26PM +0530, Shivani Bhardwaj wrote:
> Parentheses around some arguments and expressions are not required and
> should be removed.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Does not apply as I didn't take patch 1/2 :(

