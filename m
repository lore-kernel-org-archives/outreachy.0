X-GM-THRID: 9186991669248
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fe77a48fd17352b5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.98.197 with SMTP id ek5mr25154529obb.27.1426862519276;
        Fri, 20 Mar 2015 07:41:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.15 with SMTP id r15ls1216038ioe.29.gmail; Fri, 20 Mar
 2015 07:41:58 -0700 (PDT)
X-Received: by 10.50.254.161 with SMTP id aj1mr4053791igd.6.1426862518989;
        Fri, 20 Mar 2015 07:41:58 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si834280pac.2.2015.03.20.07.41.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 07:41:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [31.221.94.139])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 51A58ACF;
	Fri, 20 Mar 2015 14:41:58 +0000 (UTC)
Date: Fri, 20 Mar 2015 13:42:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Change from // to /*
 */
Message-ID: <20150320124246.GA18451@kroah.com>
References: <1426800933-25598-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1426800933-25598-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 19, 2015 at 11:35:33PM +0200, Hatice ERT�RK wrote:
> Remove the all '//' and instead of '/* */' put.
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/vt6655/mac.c | 80 ++++++++++++++++++++++----------------------
>  1 file changed, 40 insertions(+), 40 deletions(-)

This patch doesn't apply to my tree :(

