X-GM-THRID: 8624928718848
X-Received: by 10.43.135.194 with SMTP id ih2mr56594361icc.7.1426525616198;
        Mon, 16 Mar 2015 10:06:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.39.99 with SMTP id o3ls1070673igk.12.gmail; Mon, 16 Mar
 2015 10:06:56 -0700 (PDT)
X-Received: by 10.66.196.11 with SMTP id ii11mr66332148pac.37.1426525615958;
        Mon, 16 Mar 2015 10:06:55 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si2039408pdb.1.2015.03.16.10.06.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 10:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7CFA298E;
	Mon, 16 Mar 2015 17:06:53 +0000 (UTC)
Date: Mon, 16 Mar 2015 18:06:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Fix spelling mistakes
Message-ID: <20150316170648.GA20171@kroah.com>
References: <1426525255-8523-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426525255-8523-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 16, 2015 at 08:00:55PM +0300, Haneen Mohammed wrote:
> This patch fix the following spelling mistakes found using checkpatch.pl: interoprability, SEPERATOR, defult.

Please linewrap your changelog text at 72 columns.

thanks,

greg k-h

