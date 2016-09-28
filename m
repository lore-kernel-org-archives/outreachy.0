X-GM-THRID: 6334708873542238208
X-Received: by 10.129.132.208 with SMTP id u199mr8856698ywf.71.1475055364677;
        Wed, 28 Sep 2016 02:36:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.13 with SMTP id q13ls246695ioe.40.gmail; Wed, 28 Sep
 2016 02:36:03 -0700 (PDT)
X-Received: by 10.66.85.10 with SMTP id d10mr164992paz.4.1475055363319;
        Wed, 28 Sep 2016 02:36:03 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e66si1829581pfk.2.2016.09.28.02.36.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 02:36:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.202.203.52])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9DFB182B;
	Wed, 28 Sep 2016 09:36:02 +0000 (UTC)
Date: Wed, 28 Sep 2016 11:36:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] staging: vt6656: Remove unnecessary return values
Message-ID: <20160928093606.GA5129@kroah.com>
References: <20160927181842.GA6493@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927181842.GA6493@namrata-HP-Pavilion-g6-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Sep 27, 2016 at 11:48:47PM +0530, Namrata A Shettar wrote:
> Remove unnecessary return values. Change return type of corresponding
> functions to 'void' and comments.
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  Changes in v2:
>  - combine both patches of prior patchset
> 
>  drivers/staging/vt6656/card.c | 22 ++++++----------------
>  drivers/staging/vt6656/card.h |  6 +++---
>  2 files changed, 9 insertions(+), 19 deletions(-)

Doesn't apply to my tree at all :(

