X-GM-THRID: 6329478247155236864
X-Received: by 10.31.192.13 with SMTP id q13mr16756401vkf.0.1473701605927;
        Mon, 12 Sep 2016 10:33:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.217.70 with SMTP id p67ls3263274itg.14.gmail; Mon, 12 Sep
 2016 10:33:25 -0700 (PDT)
X-Received: by 10.66.158.10 with SMTP id wq10mr16632629pab.35.1473701605436;
        Mon, 12 Sep 2016 10:33:25 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id um12si2417297pab.2.2016.09.12.10.33.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:33:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BF75A483;
	Mon, 12 Sep 2016 17:33:24 +0000 (UTC)
Date: Mon, 12 Sep 2016 19:06:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: comedidev: Fixes
 CamelCase issue
Message-ID: <20160912170605.GA26392@kroah.com>
References: <CAFrQyDEvVL_XEL3DtCn9npXa8H+Jxaixv7nVEzY2Sx8ROCD+RA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFrQyDEvVL_XEL3DtCn9npXa8H+Jxaixv7nVEzY2Sx8ROCD+RA@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Sep 12, 2016 at 09:37:38PM +0530, Namrata A Shettar wrote:
> This patch fixes the checkpatch.pl issue:
> -Avoid CamelCase
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
> �drivers/staging/comedi/comedidev.h | 8 ++++----
> �1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedidev.h b/drivers/staging/comedi/comed
> idev.h
> index dcb6376..9d941b1 100644
> --- a/drivers/staging/comedi/comedidev.h
> +++ b/drivers/staging/comedi/comedidev.h
> @@ -582,7 +582,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,
> 
> �#define RANGE(a, b)� � � � � � {(a) * 1e6, (b) * 1e6, 0}
> �#define RANGE_ext(a, b)� � � � � � � � {(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
> -#define RANGE_mA(a, b)� � � � �{(a) * 1e6, (b) * 1e6, UNIT_mA}
> +#define RANGE_ma(a, b)� � � � �{(a) * 1e6, (b) * 1e6, UNIT_ma}

Look at what you changed, it really should stay as-is, don't you think?

Remember, checkpatch is a hint, it's not smart at all.

thanks,

greg k-h

