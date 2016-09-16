X-GM-THRID: 6330315351806443520
X-Received: by 10.107.30.144 with SMTP id e138mr10181899ioe.5.1474013688144;
        Fri, 16 Sep 2016 01:14:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.117 with SMTP id p108ls5281917ota.42.gmail; Fri, 16 Sep
 2016 01:14:47 -0700 (PDT)
X-Received: by 10.129.77.212 with SMTP id a203mr1041740ywb.45.1474013687815;
        Fri, 16 Sep 2016 01:14:47 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si2238422pfw.1.2016.09.16.01.14.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:14:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E77368F5;
	Fri, 16 Sep 2016 08:14:46 +0000 (UTC)
Date: Fri, 16 Sep 2016 10:14:52 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Malcolm Priestley <tvboxspy@gmail.com>,
	Alison Schofield <amsfield22@gmail.com>,
	maomao xu <albert008.xu@gmail.com>,
	Othmar Pasteka <pasteka@kabsi.at>,
	Parth Sane <laerdevstudios@gmail.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 1/6] staging: vt6656: Remove unnecessary blank lines
Message-ID: <20160916081452.GA2825@kroah.com>
References: <CAFrQyDGf=YBPFuDTD+C48WkghUHVpuY_5Qr2o-so38Q+_xOLmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFrQyDGf=YBPFuDTD+C48WkghUHVpuY_5Qr2o-so38Q+_xOLmw@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 01:56:35AM +0530, Namrata A Shettar wrote:
> Fix checkpatch issue of unnecessary blank lines.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
> �drivers/staging/vt6656/wcmd.c | 3 ---
> �1 file changed, 3 deletions(-)

Your patches were sent as html, and I can't apply html patches (hint, it
doesn't work...)

Can you please fix your email client to only send plain text emails, and
maybe use git send-email (that will not send html)?

Because of this, I can't take any of the patches in this series, sorry.

greg k-h

