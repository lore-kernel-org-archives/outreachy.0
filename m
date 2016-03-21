X-GM-THRID: 6261612178902614016
X-Received: by 10.66.142.230 with SMTP id rz6mr24616354pab.31.1458593368116;
        Mon, 21 Mar 2016 13:49:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.9 with SMTP id d9ls3616054qgf.38.gmail; Mon, 21 Mar
 2016 13:49:27 -0700 (PDT)
X-Received: by 10.140.18.239 with SMTP id 102mr24541159qgf.28.1458593367523;
        Mon, 21 Mar 2016 13:49:27 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si4207819pfa.2.2016.03.21.13.49.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:49:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E8D782C;
	Mon, 21 Mar 2016 20:49:26 +0000 (UTC)
Date: Mon, 21 Mar 2016 16:49:25 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: rtl8712_cmd.c:
 removes unnecessary parentheses
Message-ID: <20160321204925.GA32450@kroah.com>
References: <20160313185308.GA19044@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160313185308.GA19044@spock>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 13, 2016 at 03:53:08PM -0300, Juliana Rodrigues wrote:
> This patch removes unnecessary parentheses that were
> causing multiple checkpatch.pl issues.
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_cmd.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Does not apply to my tree :(

