X-GM-THRID: 6330674938515554304
X-Received: by 10.157.26.9 with SMTP id a9mr1810712ote.131.1474148354152;
        Sat, 17 Sep 2016 14:39:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.13 with SMTP id a13ls2550284ioe.18.gmail; Sat, 17 Sep
 2016 14:39:13 -0700 (PDT)
X-Received: by 10.66.246.197 with SMTP id xy5mr12090519pac.47.1474148353382;
        Sat, 17 Sep 2016 14:39:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e66si51477pfk.2.2016.09.17.14.39.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:39:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E838A9C;
	Sat, 17 Sep 2016 21:39:10 +0000 (UTC)
Date: Sat, 17 Sep 2016 23:38:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>
Subject: Re: [Outreachy kernel] [PATCH v3 5/5] staging: sm750fb: Add spaces
 around '|'
Message-ID: <20160917213830.GA21424@kroah.com>
References: <20160916131614.GA16670@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160916131614.GA16670@toblerone>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 06:46:14PM +0530, Rehas Sachdeva wrote:
> Adds spaces on either side of a '|'. Issue found by checkpatch.
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
> Change in v2:
> Refresh commit against the latest tree.
> 
> Change in v3:
> Correct spelling 'dound' to 'found'.
> 
>  drivers/staging/sm750fb/ddk750_display.h | 44 ++++++++++++++++----------------
>  1 file changed, 22 insertions(+), 22 deletions(-)

Still does not apply to my tree :(

