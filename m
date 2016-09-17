X-GM-THRID: 6331266648892243968
X-Received: by 10.129.163.201 with SMTP id a192mr1969365ywh.125.1474148383369;
        Sat, 17 Sep 2016 14:39:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls8203739otc.12.gmail; Sat, 17 Sep
 2016 14:39:43 -0700 (PDT)
X-Received: by 10.157.12.105 with SMTP id 96mr1866749otr.91.1474148383079;
        Sat, 17 Sep 2016 14:39:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si4144850pab.1.2016.09.17.14.39.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:39:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1BDBE9C;
	Sat, 17 Sep 2016 21:39:41 +0000 (UTC)
Date: Sat, 17 Sep 2016 23:39:45 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/4] staging: vt6655: Replace explicit NULL comparison
Message-ID: <20160917213945.GA21575@kroah.com>
References: <cover.1474108444.git.namrataashettar@gmail.com>
 <241ad34249b77e68f1a52ebe7255747c77e43645.1474108445.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <241ad34249b77e68f1a52ebe7255747c77e43645.1474108445.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 17, 2016 at 05:18:19PM +0530, Namrata A Shettar wrote:
> Replace explicit NULL comparison to resolve checkpatch issue.
> Comparing variable x with NULL same as !x in this case.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/vt6655/device_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You have 4 patches here, yet you only have 2 unique subjects.  Don't
have 2 different patches with the same subject line, that implies that
they are identical, right?

Please fix that up and resend this series.

thanks,

greg k-h

